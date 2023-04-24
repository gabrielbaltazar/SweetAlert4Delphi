unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  SweetAlert4D.Dialog.Interfaces,
  SweetAlert4D.Dialog.IW;

type
  TFrmTeste = class(TIWAppForm)
    IWTemplate: TIWTemplateProcessorHTML;
    IWBTN_BASIC_SERVER: TIWButton;
    IWBASIC_CLIENT: TIWButton;
    IWBTN_QUESTION: TIWButton;
    IWBTN_SUCCESS_SERVER: TIWButton;
    IWBTN_SUCCESS_CLIENT: TIWButton;
    IWBTN_ERROR_SERVER: TIWButton;
    IWBTN_ERROR_CLIENT: TIWButton;
    IWBTN_WARNING_SERVER: TIWButton;
    IWBTN_INFO_SERVER: TIWButton;
    IWBTN_WARNING_CLIENT: TIWButton;
    IWBTN_INFO_CLIENT: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTN_BASIC_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_QUESTIONAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_SUCCESS_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_ERROR_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_WARNING_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_INFO_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    FSweetAlert: ISweetAlert4DDialog;

    procedure OnClickOK(AParams: TStringList);
    procedure OnClickCancel(AParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

procedure TFrmTeste.IWAppFormCreate(Sender: TObject);
begin
  FSweetAlert := TSweetAlert4DDialogIW.New(Self);

  RegisterCallBack('OnClickOK', OnClickOK);
  RegisterCallBack('OnClickCancel', OnClickCancel);
end;

procedure TFrmTeste.IWBTN_BASIC_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasic('Any fool can use a computer');
end;

procedure TFrmTeste.IWBTN_ERROR_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasicError('Ops...', 'Something went wrong!');
end;

procedure TFrmTeste.IWBTN_INFO_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasicInfo('Hi!', 'Info Text message');
end;

procedure TFrmTeste.IWBTN_QUESTIONAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.Arguments
    .Icon(TSweetIcon.siQuestion)
    .Title('Are you sure?')
    .Text('You won''t be able to revert this!')
    .Buttons
      .ShowCancelButton(True);
  FSweetAlert
    .OnClickOK('console.log("OK")')
    .OnClickCancel('console.log("CANCEL")')
    .Show;
end;

procedure TFrmTeste.IWBTN_SUCCESS_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasicSuccess('Good job!', 'You clicked the button!');
end;

procedure TFrmTeste.IWBTN_WARNING_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasicWarning('Atention!', 'You won''t be able to revert this!');
end;

procedure TFrmTeste.OnClickCancel(AParams: TStringList);
begin
//
end;

procedure TFrmTeste.OnClickOK(AParams: TStringList);
begin
//
end;

initialization
  TFrmTeste.SetAsMainForm;

end.
