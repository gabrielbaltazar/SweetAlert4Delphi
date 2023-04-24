program DemoSweetAlert;

uses
  IWRtlFix,
  IWStart,
  Unit1 in 'Unit1.pas' {FrmTeste: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  SweetAlert4D.Interfaces in '..\..\Source\SweetAlert4D.Interfaces.pas',
  SweetAlert4D.Classes in '..\..\Source\SweetAlert4D.Classes.pas',
  SweetAlert4D.Helper.JSON in '..\..\Source\SweetAlert4D.Helper.JSON.pas',
  SweetAlert4D.Dialog.Interfaces in '..\..\Source\SweetAlert4D.Dialog.Interfaces.pas',
  SweetAlert4D.Dialog.IW in '..\..\Source\SweetAlert4D.Dialog.IW.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
