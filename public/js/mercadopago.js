// public/js/mercadopago.js

document.addEventListener('DOMContentLoaded', function () {
  const mp = new MercadoPago('APP_USR-57835ea1-b8a5-4bcb-a2ea-78bf69a595d7', {
    locale: 'pt'
  });

  const bricksBuilder = mp.bricks();

  const renderPaymentBrick = async () => {
    const settings = {
      initialization: {
        amount: 10, // Substitua pelo valor real
        preferenceId: "", // Substitua pelo ID de preferência real
        payer: {
          firstName: "",
          lastName: "",
          email: "",
        },
      },
      customization: {
        visual: {
          hideFormTitle: true,
          style: {
            theme: "default",
          },
        },
        paymentMethods: {
          atm: "all",
          bankTransfer: "all",
          maxInstallments: 1
        },
      },
      callbacks: {
        onReady: () => {
          // Callback chamado quando o Brick está pronto.
        },
        onSubmit: ({ selectedPaymentMethod, formData }) => {
          return new Promise((resolve, reject) => {
            fetch("/process_payment", {
              method: "POST",
              headers: {
                "Content-Type": "application/json",
              },
              body: JSON.stringify(formData),
            })
              .then((response) => response.json())
              .then((response) => {
                resolve();
              })
              .catch((error) => {
                reject();
              });
          });
        },
        onError: (error) => {
          console.error(error);
        },
      },
    };
    window.paymentBrickController = await bricksBuilder.create(
      "payment",
      "paymentBrick_container",
      settings
    );
  };

  // Renderizar o Brick de pagamento quando o botão de submissão for clicado
  document.querySelector('.subscriptionBtn').addEventListener('click', function (event) {
      document.getElementById('paymentBrick_container').classList.remove('d-none'); // Mostrar a div
      renderPaymentBrick()
  });
});

