<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\AddFundsController;
use App\Models\AdminSettings;
use App\Models\PaymentGateways;

class WebhookController extends Controller
{
    public function handle(Request $request)
    {
        // Validação básica do request
        $data = $request->all();
        Log::info('Webhook recebido', ['data' => $data]);

        // Verifica o tipo de evento
        if (isset($data['type']) && $data['type'] === 'payment') {
            // Lógica para tratar o evento de pagamento
            $this->handlePaymentEvent($data);
        }

        return response()->json(['status' => 'success'], 200);
    }

    protected function handlePaymentEvent($data)
    {
        // Verifica se a chave 'id' existe no array 'data'
        if (!isset($data['data']['id'])) {
            Log::warning('ID de pagamento não encontrado', ['data' => $data]);
            return;
        }

        // Chamar o método mercadoPagoProcessWebhook do AddFundsController
        $addFundsController = new AddFundsController(new Request(), new AdminSettings());
        $addFundsController->mercadoPagoProcessWebhook([
            'payment_id' => $data['data']['id'],
            'user_id' => $data['user_id'],
        ]);
    }
}
