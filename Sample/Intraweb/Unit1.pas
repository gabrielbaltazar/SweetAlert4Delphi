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
    IWBTN_BASIC_MESSAGE_SERVER: TIWButton;
    IWBASIC_MESSAGE_CLIENT: TIWButton;
    IWBTN_QUESTION: TIWButton;
    IWBTN_SUCCESS_MESSAGE_SERVER: TIWButton;
    IWBTN_SUCCESS_MESSAGE_CLIENT: TIWButton;
    IWBTN_ERROR_MESSAGE_SERVER: TIWButton;
    IWBTN_ERROR_MESSAGE_CLIENT: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWBTN_BASIC_MESSAGE_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_QUESTIONAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_SUCCESS_MESSAGE_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWBTN_ERROR_MESSAGE_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    FSweetAlert: ISweetAlert4DDialog;
  public
  end;

implementation

{$R *.dfm}

procedure TFrmTeste.IWAppFormCreate(Sender: TObject);
begin
  FSweetAlert := TSweetAlert4DDialogIW.New(Self);
end;

procedure TFrmTeste.IWBTN_BASIC_MESSAGE_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasic('Any fool can use a computer');
end;

procedure TFrmTeste.IWBTN_ERROR_MESSAGE_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasicError('Ops...', 'Something went wrong!');
end;

procedure TFrmTeste.IWBTN_QUESTIONAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.Arguments
    .Icon(TSweetIcon.siQuestion)
    .Title('The Internet?')
    .Text('That thing is still around?');
  FSweetAlert.Show;
end;

procedure TFrmTeste.IWBTN_SUCCESS_MESSAGE_SERVERAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FSweetAlert.ShowBasicSuccess('Good job!', 'You clicked the button!');
end;

initialization
  TFrmTeste.SetAsMainForm;

end.
