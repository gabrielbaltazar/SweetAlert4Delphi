program DemoSweetAlert;

uses
  IWRtlFix,
  IWStart,
  Unit1 in 'Unit1.pas' {FrmTeste: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  SweetAlert4D.Interfaces in '..\..\Source\SweetAlert4D.Interfaces.pas',
  SweetAlert4D.Classes in '..\..\Source\SweetAlert4D.Classes.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
