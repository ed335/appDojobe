<?php

namespace App\Http\Controllers;

use App\Helper;
use App\Models\User;
use App\Models\Plans;
use App\Models\Updates;
use App\Models\Deposits;
use App\Models\Messages;
use App\Models\Transactions;
use Illuminate\Http\Request;
use App\Models\Notifications;
use App\Models\Subscriptions;
use App\Models\PaymentGateways;
use MercadoPago\SDK;
use MercadoPago\Payment;
use MercadoPago\Preference;

class MercadoPagoController extends Controller
{
    use Traits\Functions;

    public function __construct()
    {
        SDK::setAccessToken(env('MERCADOPAGO_ACCESS_TOKEN'));
    }

    // Mostrar Formulário de Pagamento
    public function send(Request $request)
    {
        if (!$request->expectsJson()) {
            abort(404);
        }

        // Encontra o usuário e o plano de assinatura
        $user = User::whereVerifiedId('yes')
            ->whereId($request->id)
            ->where('id', '<>', auth()->id())
            ->firstOrFail();

        $plan = $user->plans()
            ->whereInterval($request->interval)
            ->whereStatus('1')
            ->firstOrFail();

        // Cria uma preferência de pagamento
        $preference = new Preference();
        $item = new \MercadoPago\Item();
        $item->title = __('general.subscription_for') . ' @' . $user->username;
        $item->quantity = 1;
        $item->unit_price = (float) $plan->price;
        $preference->items = array($item);

        $preference->back_urls = array(
            "success" => route('subscription.success', ['user' => $user->username, 'delay' => 'mercadopago']),
            "failure" => route('mercadopago.cancel', ['url' => 'home']),
            "pending" => route('subscription.pending', ['user' => $user->username])
        );
        $preference->auto_return = "approved";

        $preference->payment_methods = array(
            "excluded_payment_types" => array(
                array("id" => "credit_card"),
                array("id" => "debit_card"),
                array("id" => "ticket")
            )
        );

        $preference->external_reference = base64_encode(http_build_query([
            'id' => $request->id,
            'amount' => $plan->price,
            'subscriber' => auth()->id(),
            'plan' => $plan->name,
            'taxes' => auth()->user()->taxesPayable(),
            'type' => 'subscription'
        ]));

        $preference->save();

        return response()->json([
            'success' => true,
            'init_point' => $preference->init_point
        ]);
    }

    // Cancelar Pagamento
    public function cancelPayment(Request $request)
    {
        switch ($request->url) {
            case 'home':
                $url = '/';
                break;
            case 'wallet':
                $url = 'my/wallet';
                break;
            case 'messages':
                $url = 'messages';
                break;
            default:
                $url = '/';
                break;
        }
        return redirect($url);
    }

    // Webhook
    public function webhook(Request $request)
    {
        $data = base64_decode($request->external_reference);
        parse_str($data, $params);

        if ($request->type == 'payment' && $request->data['status'] == 'approved') {
            $paymentId = $request->data['id'];

            switch ($params['type']) {
                case 'subscription':
                    $user = User::find($params['id']);
                    $plan = $user->plans()->whereName($params['plan'])->first();
                    $subscriptionId = $paymentId;
                    $subscription = Subscriptions::where('subscription_id', $subscriptionId)->first();

                    if (!$subscription) {
                        $subscription = new Subscriptions();
                        $subscription->user_id = $params['subscriber'];
                        $subscription->creator_id = $user->id;
                        $subscription->stripe_price = $params['plan'];
                        $subscription->subscription_id = $subscriptionId;
                        $subscription->ends_at = $user->planInterval($plan->interval);
                        $subscription->interval = $plan->interval;
                        $subscription->payment_id = $paymentId;
                        $subscription->save();

                        Notifications::send($params['id'], $params['subscriber'], '1', $params['id']);
                        $this->sendWelcomeMessageAction($user, $params['subscriber']);

                        $earnings = $this->earningsAdminUser($user->custom_fee, $params['amount'], 0, 0);
                        $verifiedTxnId = Transactions::where('txn_id', $paymentId)->first();

                        if (!isset($verifiedTxnId)) {
                            $this->transaction(
                                $paymentId,
                                $params['subscriber'],
                                $subscription->id,
                                $params['id'],
                                $params['amount'],
                                $earnings['user'],
                                $earnings['admin'],
                                'MercadoPago',
                                'subscription',
                                $earnings['percentageApplied'],
                                $params['taxes'] ?? null
                            );
                            $user->increment('balance', $earnings['user']);
                        }
                        return redirect($user->username);
                    }
                    break;

                case 'deposit':
                    $verifiedTxnId = Deposits::where('txn_id', $paymentId)->first();
                    if (!isset($verifiedTxnId)) {
                        $this->deposit(
                            $params['user'],
                            $paymentId,
                            $params['amount'],
                            'MercadoPago',
                            $params['taxes']
                        );
                        User::find($params['user'])->increment('wallet', $params['amount']);
                    }
                    return redirect('my/wallet');
                    break;

                case 'ppv':
                    $media = $params['m'] ? Messages::find($params['id']) : Updates::find($params['id']);
                    $earnings = $this->earningsAdminUser($media->user()->custom_fee, $params['amount'], 0, 0);
                    $verifiedTxnId = Transactions::whereTxnId($paymentId)->first();

                    if (!isset($verifiedTxnId)) {
                        $this->transaction(
                            $paymentId,
                            $params['sender'],
                            false,
                            $media->user()->id,
                            $params['amount'],
                            $earnings['user'],
                            $earnings['admin'],
                            'MercadoPago',
                            'ppv',
                            $earnings['percentageApplied'],
                            $params['taxes']
                        );
                        $media->user()->increment('balance', $earnings['user']);
                        $buyer = User::find($params['sender']);

                        if ($params['m']) {
                            $this->payPerViews($params['sender'], false, $params['id']);
                            if ($media->user()->email_new_ppv == 'yes') {
                                $this->notifyEmailNewPPV($media->user(), $buyer->username, $media->message, 'message');
                            }
                            Notifications::send($media->user()->id, $params['sender'], '6', $params['id']);
                            return redirect(url('messages', $media->user()->id));
                        } else {
                            $this->payPerViews($params['sender'], $params['id'], false);
                            if ($media->user()->email_new_ppv == 'yes') {
                                $this->notifyEmailNewPPV($media->user(), $buyer->username, $media->description, 'post');
                            }
                            Notifications::send($media->user()->id, $params['sender'], '7', $params['id']);
                            return redirect(url($media->user()->username, 'post') . '/' . $params['id']);
                        }
                    }
                    break;

                case 'tip':
                    $user = User::find($params['id']);
                    $sender = User::find($params['sender']);
                    $earnings = $this->earningsAdminUser($user->custom_fee, $params['amount'], 0, 0);
                    $verifiedTxnId = Transactions::where('txn_id', $paymentId)->first();

                    if (!isset($verifiedTxnId)) {
                        $this->transaction(
                            $paymentId,
                            $params['sender'],
                            false,
                            $params['id'],
                            $params['amount'],
                            $earnings['user'],
                            $earnings['admin'],
                            'MercadoPago',
                            'tip',
                            $earnings['percentageApplied'],
                            $params['taxes']
                        );
                        $user->increment('balance', $earnings['user']);
                        if ($user->email_new_tip == 'yes') {
                            $this->notifyEmailNewTip($user, $sender->username, $params['amount']);
                        }
                        Notifications::send($params['id'], $params['sender'], '5', $params['id']);

                        if ($params['m']) {
                            $this->isMessageTip($params['id'], $params['sender'], $params['amount']);
                            return redirect(url('messages', $params['id']));
                        } else {
                            return redirect($user->username);
                        }
                    }
                    break;
            }
        } else {
            session()->put('error_payment', 'An error has occurred with the payment.');
            return redirect('/');
        }
    }

    // Cancelar Assinatura
    public function cancelSubscription($id)
    {
        $subscription = auth()->user()->userSubscriptions()->whereId($id)->firstOrFail();
        $creator = Plans::whereName($subscription->stripe_price)->first();
        $subscription->cancelled = 'yes';
        $subscription->save();
        session()->put('subscription_cancel', __('general.subscription_cancel'));
        return redirect($creator->user()->username);
    }
}
