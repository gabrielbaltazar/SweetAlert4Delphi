unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML;

type
  TFrmTeste = class(TIWAppForm)
    IWTemplate: TIWTemplateProcessorHTML;
  public
  end;

implementation

{$R *.dfm}


initialization
  TFrmTeste.SetAsMainForm;

end.
