function ShowSweetMessage(message) {
    Swal.fire(message);
}

function ShowBasic(message) {
    ShowSweetMessage({title: message});
}

function ShowBasicSuccess(ATitle, AText) {
    let message = {
        icon: 'success',
        title: ATitle,
        text: AText
    };

    ShowSweetMessage(message);
}

function ShowBasicInfo(ATitle, AText) {
    let message = {
        icon: 'info',
        title: ATitle,
        text: AText
    };

    ShowSweetMessage(message);
}

function ShowBasicError(ATitle, AText) {
    let message = {
        icon: 'error',
        title: ATitle,
        text: AText
    };

    ShowSweetMessage(message);
}

function ShowBasicWarning(ATitle, AText) {
    let message = {
        icon: 'warning',
        title: ATitle,
        text: AText
    };

    ShowSweetMessage(message);
}

function ShowBasicQuestion(ATitle, AText) {
    let message = {
        icon: 'question',
        title: ATitle,
        text: AText
    };

    ShowSweetMessage(message);
}

function ShowSuccess(message) {
    let sweetMessage = message;
    sweetMessage.icon = 'success';
    ShowSweetMessage(sweetMessage);
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