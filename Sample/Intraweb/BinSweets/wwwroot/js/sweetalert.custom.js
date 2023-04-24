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

function ShowBasicQuestion(ATitle, AText, AOnConfirm, AOnCancel) {
    let message = {
        icon: 'question',
        title: ATitle,
        text: AText,
        showCancelButton: true
    };

    Swal.fire(message).then(result => {
        if (result.isConfirmed) {
            AOnConfirm();
        } else if (
            result.dismiss === Swal.DismissReason.cancel
          ) {
            AOnCancel();
          }
    })
}
