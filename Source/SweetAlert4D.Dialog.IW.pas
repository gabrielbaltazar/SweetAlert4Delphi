unit SweetAlert4D.Dialog.IW;

interface

uses
  IWForm,
  System.SysUtils,
  System.StrUtils,
  SweetAlert4D.Interfaces,
  SweetAlert4D.Classes,
  SweetAlert4D.Dialog.Interfaces;

type
  TSweetAlert4DDialogIW = class(TInterfacedObject, ISweetAlert4DDialog)
  private
    FForm: TIWForm;
    FArguments: ISweetAlert4D;
    FOnClickOK: string;
    FOnClickCancel: string;
    FOnClickDeny: string;

    procedure ShowMessage(AMessage: string);
    function GetCommand: string;
    procedure Initialize;
  protected
    function Arguments: ISweetAlert4D;

    function Show: ISweetAlert4DDialog;
    function ShowSuccess: ISweetAlert4DDialog;
    function ShowBasic(AMessage: string): ISweetAlert4DDialog;
    function ShowBasicSuccess(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicInfo(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicWarning(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicError(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicQuestion(ATitle, AText: string): ISweetAlert4DDialog;

    function OnClickOK(ACallback: TSweetCallback): ISweetAlert4DDialog; overload;
    function OnClickOK(ACallback: string): ISweetAlert4DDialog; overload;
    function OnClickCancel(ACallback: TSweetCallback): ISweetAlert4DDialog; overload;
    function OnClickCancel(ACallback: string): ISweetAlert4DDialog; overload;
    function OnClickDeny(ACallback: TSweetCallback): ISweetAlert4DDialog;
  public
    class function New(AForm: TIWForm): ISweetAlert4DDialog;
    constructor Create(AForm: TIWForm);
  end;

implementation

{ TSweetAlert4DDialogIW }

function TSweetAlert4DDialogIW.Arguments: ISweetAlert4D;
begin
  Result := FArguments;
end;

constructor TSweetAlert4DDialogIW.Create(AForm: TIWForm);
begin
  FForm := AForm;
  FArguments := TSweetAlert4D.New;
end;

function TSweetAlert4DDialogIW.GetCommand: string;
begin
  Result := Format('Swal.fire(%s)', [FArguments.Message]);
end;

procedure TSweetAlert4DDialogIW.Initialize;
begin
  FArguments.Initialize;
  FOnClickOK := EmptyStr;
  FOnClickCancel := EmptyStr;
end;

class function TSweetAlert4DDialogIW.New(AForm: TIWForm): ISweetAlert4DDialog;
begin
  Result := Self.Create(AForm);
end;

function TSweetAlert4DDialogIW.OnClickCancel(ACallback: TSweetCallback): ISweetAlert4DDialog;
begin
  Result := Self;
end;

function TSweetAlert4DDialogIW.OnClickCancel(ACallback: string): ISweetAlert4DDialog;
begin
  Result := Self;
  FOnClickCancel := ACallback;
end;

function TSweetAlert4DDialogIW.OnClickDeny(ACallback: TSweetCallback): ISweetAlert4DDialog;
begin
  Result := Self;
end;

function TSweetAlert4DDialogIW.OnClickOK(ACallback: string): ISweetAlert4DDialog;
begin
  Result := Self;
  FOnClickOK := ACallback;
end;

function TSweetAlert4DDialogIW.OnClickOK(ACallback: TSweetCallback): ISweetAlert4DDialog;
begin
  Result := Self;
end;

function TSweetAlert4DDialogIW.Show: ISweetAlert4DDialog;
var
  LCommand: string;
begin
  LCommand := GetCommand;
  ShowMessage(LCommand);
end;

function TSweetAlert4DDialogIW.ShowBasic(AMessage: string): ISweetAlert4DDialog;
begin
  FArguments.Initialize;
  FArguments.Title(AMessage);
  Show;
end;

function TSweetAlert4DDialogIW.ShowBasicError(ATitle, AText: string): ISweetAlert4DDialog;
begin
  FArguments.Icon(siError)
    .Title(ATitle)
    .Text(AText);
  Show;
end;

function TSweetAlert4DDialogIW.ShowBasicInfo(ATitle, AText: string): ISweetAlert4DDialog;
begin
  FArguments.Icon(siInfo)
    .Title(ATitle)
    .Text(AText);
  Show;
end;

function TSweetAlert4DDialogIW.ShowBasicQuestion(ATitle, AText: string): ISweetAlert4DDialog;
begin
  FArguments.Icon(siQuestion)
    .Title(ATitle)
    .Text(AText);
  Show;
end;

function TSweetAlert4DDialogIW.ShowBasicSuccess(ATitle, AText: string): ISweetAlert4DDialog;
begin
  FArguments.Icon(siSuccess)
    .Title(ATitle)
    .Text(AText);
  Show;
end;

function TSweetAlert4DDialogIW.ShowBasicWarning(ATitle, AText: string): ISweetAlert4DDialog;
begin
  FArguments.Icon(siWarning)
    .Title(ATitle)
    .Text(AText);
  Show;
end;

procedure TSweetAlert4DDialogIW.ShowMessage(AMessage: string);
var
  LCommand: string;
  LOnConfirmed: string;
  LOnDenied: string;
  LOnCancel: string;
begin
  try
    LCommand := AMessage;
    if (FOnClickOK <> EmptyStr) or (FOnClickCancel <> EmptyStr) then
    begin
      LOnConfirmed := IfThen(FOnClickOK <> EmptyStr, FOnClickOK);
      LOnDenied := IfThen(FOnClickDeny <> EmptyStr, FOnClickDeny);
      LOnCancel := IfThen(FOnClickCancel <> EmptyStr, FOnClickCancel);

      LCommand := LCommand +
        '.then((result) => {' +
        '  if (result.isConfirmed) {' +
        '    ' + LOnConfirmed +
        '  } else if (result.isDenied) {' +
        '    ' + LOnDenied +
        '  } else if (' +
        '    result.dismiss === Swal.DismissReason.cancel' +
        '  ) {' + LOnCancel +
        '  }' +
        '})';
    end;

    FForm.WebApplication.CallBackResponse
      .AddJavaScriptToExecute(LCommand);
  finally
    Initialize;
  end;
end;

function TSweetAlert4DDialogIW.ShowSuccess: ISweetAlert4DDialog;
begin
  FArguments.Icon(siSuccess);
  Show;
end;

end.
