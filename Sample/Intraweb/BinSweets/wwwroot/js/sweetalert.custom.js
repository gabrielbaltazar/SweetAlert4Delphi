function ShowSweetMessage(message) {
    Swal.fire(message);
}

// function SweetError(title, text) {
//     let message = {
//         icon: 'error',
//         showCloseButton: true,
//         title,
//         text
//     };

//     Swal.fire(message);
// }

function SweetError(message) {
    let sweetMessage = message;
    sweetMessage.icon = 'error',
    ShowSweetMessage(sweetMessage);
}