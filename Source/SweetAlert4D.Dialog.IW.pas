unit SweetAlert4D.Dialog.IW;

interface

uses
  IWForm,
  System.SysUtils,
  SweetAlert4D.Interfaces,
  SweetAlert4D.Classes,
  SweetAlert4D.Dialog.Interfaces;

type
  TSweetAlert4DDialogIW = class(TInterfacedObject, ISweetAlert4DDialog)
  private
    FForm: TIWForm;
    FArguments: ISweetAlert4D;

    procedure ShowMessage(AMessage: string);
    function GetCommand: string;
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

class function TSweetAlert4DDialogIW.New(AForm: TIWForm): ISweetAlert4DDialog;
begin
  Result := Self.Create(AForm);
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
begin
  try
    FForm.WebApplication.CallBackResponse
      .AddJavaScriptToExecute(AMessage);
  finally
    FArguments.Initialize;
  end;
end;

function TSweetAlert4DDialogIW.ShowSuccess: ISweetAlert4DDialog;
begin
  FArguments.Icon(siSuccess);
  Show;
end;

end.
