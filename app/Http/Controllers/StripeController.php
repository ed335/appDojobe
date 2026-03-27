<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Subscriptions;
use App\Models\PaymentGateways;
use Laravel\Cashier\Exceptions\IncompletePayment;

class StripeController extends Controller
{
  use Traits\Functions;

  public function __construct(Request $request)
  {
    $this->request = $request;
  }

  /**
   * Buy direct subscription (AJAX)
   *
   * @return response
   */
  public function buySubscription()
  {
    if (!$this->request->expectsJson()) {
      abort(404);
    }

    // Find the user to subscribe
    $user = User::whereVerifiedId('yes')
      ->whereId($this->request->id)
      ->where('id', '<>', auth()->id())
      ->firstOrFail();

    // Check if Plan exists
    $plan = $user->plans()
      ->whereInterval($this->request->interval)
      ->latest()
      ->firstOrFail();

    // Check if subscription exists
    $checkSubscription = auth()->user()->userSubscriptions()
      ->whereStripePrice($plan->name)
      ->where('ends_at', '>=', now())
      ->first();

    if ($checkSubscription) {
      return response()->json([
        'success' => false,
        'errors' => ['error' => __('general.subscription_exists')],
      ]);
    }

    $paymentGateway = PaymentGateways::whereName('Stripe')->whereEnabled(1)->firstOrFail();

    try {
      $userPlan = $this->createPlan($paymentGateway->key_secret, $plan, $user);

      // Create New subscription
      $metadata = [
        'interval' => $plan->interval,
        'creator_id' => $user->id,
        'taxes' => auth()->user()->taxesPayable()
      ];

      auth()->user()->newSubscription('main', $userPlan)
        ->withMetadata($metadata)
        ->create($this->request->payment_method_id);

      // Send Email to User and Notification
      Subscriptions::sendEmailAndNotify(auth()->user()->name, $user->id);

      $this->sendWelcomeMessageAction($user, auth()->id());

      return response()->json([
        'success' => true,
        'url' => url('buy/subscription/success', $user->username)
      ]);

    } catch (IncompletePayment $exception) {
      return response()->json([
        'success' => true,
        'requires_action' => true,
        'payment_intent_client_secret' => $exception->payment->client_secret,
      ]);
    } catch (\Exception $exception) {
      return response()->json([
        'success' => false,
        'errors' => ['error' => $exception->getMessage()]
      ]);
    }
  }

  /**
   * Show/Send data Stripe
   *
   * @return response
   */
  protected function show()
  {
    if (!$this->request->expectsJson()) {
      abort(404);
    }

    if (!auth()->user()->hasPaymentMethod('card')) {
      return response()->json([
        "success" => false,
        'errors' => ['error' => __('general.please_add_payment_card')]
      ]);
    }

    // Find the user to subscribe
    $user = User::whereVerifiedId('yes')
      ->whereId($this->request->id)
      ->where('id', '<>', auth()->id())
      ->firstOrFail();

    // Check if Plan exists
    $plan = $user->plans()
      ->whereInterval($this->request->interval)
      ->latest()
      ->firstOrFail();

    $payment = PaymentGateways::whereName($this->request->payment_gateway)->whereEnabled(1)->firstOrFail();

    try {
      $userPlan = $this->createPlan($payment->key_secret, $plan, $user);

      // Check Payment Incomplete
      if (auth()->user()
        ->userSubscriptions()
        ->where('stripe_price', $userPlan)
        ->whereStripeStatus('incomplete')
        ->first()
      ) {
        return response()->json([
          "success" => false,
          'errors' => ['error' => __('general.please_confirm_payment')]
        ]);
      }

      // Create New subscription
      $metadata = [
        'interval' => $plan->interval,
        'creator_id' => $user->id,
        'taxes' => auth()->user()->taxesPayable()
      ];

      auth()->user()->newSubscription('main', $userPlan)
        ->withMetadata($metadata)
        ->create();

      // Send Email to User and Notification
      Subscriptions::sendEmailAndNotify(auth()->user()->name, $user->id);

      $this->sendWelcomeMessageAction($user, auth()->id());

      sleep(3);

      return response()->json([
        'success' => true,
        'url' => url('buy/subscription/success', $user->username)
      ]);
    } catch (IncompletePayment $exception) {
      // Insert ID Last Payment
      $subscriptions = Subscriptions::whereUserId(auth()->id())
        ->whereStripePrice($userPlan)
        ->whereStripeStatus('incomplete')
        ->first();

      $subscriptions->last_payment = $exception->payment->id;
      $subscriptions->save();

      return response()->json([
        'success' => true,
        'url' => url('stripe/payment', $exception->payment->id), // Redirect customer to page confirmation payment (SCA)
      ]);
    } catch (\Exception $exception) {

      \Log::debug($exception);

      return response()->json([
        'success' => false,
        'errors' => ['error' => $exception->getMessage()]
      ]);
    }
  }

  private function createPlan($keySecret, $plan, $user)
  {
    try {
      $stripe = new \Stripe\StripeClient($keySecret);

      switch ($plan->interval) {
        case 'weekly':
          $interval = 'day';
          $interval_count = 7;
          break;

        case 'monthly':
          $interval = 'month';
          $interval_count = 1;
          break;

        case 'quarterly':
          $interval = 'month';
          $interval_count = 3;
          break;

        case 'biannually':
          $interval = 'month';
          $interval_count = 6;
          break;

        case 'yearly':
          $interval = 'year';
          $interval_count = 1;
          break;
      }

      // If it does not exist we create the plan
      $response = $stripe->plans->create([
        'currency' => config('settings.currency_code'),
        'interval' => $interval,
        'interval_count' => $interval_count,
        "product" => [
          "name" => __('general.subscription_for') . ' @' . $user->username,
        ],
        'amount' => in_array(config('settings.currency_code'), config('currencies.zero-decimal')) ? $plan->price : ($plan->price * 100),
      ]);

      return $response->id;
    } catch (\Exception $e) {
      throw new \Exception($e->getMessage());
    }
  }
}