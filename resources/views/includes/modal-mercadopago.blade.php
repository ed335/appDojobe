<!-- modal-mercadopago.blade.php -->
<div class="modal fade" id="payPerViewFormMercadoPago" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{{ __('Pay Per View via PIX - MercadoPago') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="ppvFormMercadoPago" method="post" action="{{ route('payperview.mercadopago.process') }}">
                    @csrf
                    <div class="form-group">
                        <label for="amount">{{ __('Amount') }}</label>
                        <input type="number" class="form-control" id="amount" name="amount" required>
                    </div>
                    <div class="form-group">
                        <label for="email">{{ __('Email') }}</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="text-center">
                        <button type="submit" id="ppvBtnMercadoPago" class="btn btn-primary mt-4">{{ __('Pay via PIX') }}</button>
                    </div>
                </form>

                <!-- Seção para exibir o QR Code -->
                <div id="qrCodeSection" class="mt-4" style="display: none;">
                    <h5>{{ __('Scan the QR code to pay') }}</h5>
                    <img id="qrCodeImage" src="" alt="QR Code">
                </div>
            </div>
        </div>
    </div>
</div>

<script>
document.getElementById('ppvFormMercadoPago').addEventListener('submit', function(event) {
    event.preventDefault();
    let form = event.target;

    fetch(form.action, {
        method: form.method,
        body: new FormData(form),
        headers: {
            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value
        }
    })
    .then(response => response.json())
    .then(data => {
        if (data.status === 'success') {
            document.getElementById('qrCodeSection').style.display = 'block';
            document.getElementById('qrCodeImage').src = 'data:image/png;base64,' + data.qr_code_base64;
        } else {
            alert(data.message);
        }
    })
    .catch(error => console.error('Error:', error));
});
</script>
