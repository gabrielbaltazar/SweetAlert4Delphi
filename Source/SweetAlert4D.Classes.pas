unit SweetAlert4D.Classes;

interface

uses
  System.JSON,
  System.SysUtils,
  SweetAlert4D.Helper.JSON,
  SweetAlert4D.Interfaces;

type
  TSweetAlert4D = class(TInterfacedObject, ISweetAlert4D)
  private
    FIcon: TSweetIcon;
    FTitle: string;
    FText: string;
    FHtml: string;
    FFooter: string;
    FTimer: Integer;
    FPosition: TSweetPosition;
    FButtons: ISweetAlert4DButtons;
    FImage: ISweetAlert4DImage;
  protected
    function Icon(AValue: TSweetIcon): ISweetAlert4D; overload;
    function Title(AValue: string): ISweetAlert4D; overload;
    function Text(AValue: string): ISweetAlert4D; overload;
    function Html(AValue: string): ISweetAlert4D; overload;
    function Footer(AValue: string): ISweetAlert4D; overload;
    function Timer(AValue: Integer): ISweetAlert4D; overload;
    function Position(AValue: TSweetPosition): ISweetAlert4D; overload;

    function Icon: TSweetIcon; overload;
    function Title: string; overload;
    function Text: string; overload;
    function Html: string; overload;
    function Footer: string; overload;
    function Timer: Integer; overload;
    function Position: TSweetPosition; overload;

    function Buttons: ISweetAlert4DButtons;
    function Image: ISweetAlert4DImage;
    function Message: string;
    function Initialize: ISweetAlert4D;
  public
    constructor Create;
    class function New: ISweetAlert4D;
  end;

  TSweetAlert4DButtons = class(TInterfacedObject, ISweetAlert4DButtons)
  private
    [Weak]
    FParent: ISweetAlert4D;
    FShowCloseButton: Boolean;
    FShowCancelButton: Boolean;
    FShowDenyButton: Boolean;
    FFocusConfirm: Boolean;
    FConfirmButtonText: string;
    FCancelButtonText: string;
    FDenyButtonText: string;
    FConfirmButtonColor: string;
    FCancelButtonColor: string;
    FDenyButtonColor: string;
    FReverseButtons: Boolean;
  protected
    function ShowCloseButton(AValue: Boolean): ISweetAlert4DButtons; overload;
    function ShowCancelButton(AValue: Boolean): ISweetAlert4DButtons; overload;
    function ShowDenyButton(AValue: Boolean): ISweetAlert4DButtons; overload;
    function FocusConfirm(AValue: Boolean): ISweetAlert4DButtons; overload;
    function ConfirmButtonText(AValue: string): ISweetAlert4DButtons; overload;
    function CancelButtonText(AValue: string): ISweetAlert4DButtons; overload;
    function DenyButtonText(AValue: string): ISweetAlert4DButtons; overload;
    function ConfirmButtonColor(AValue: string): ISweetAlert4DButtons; overload;
    function CancelButtonColor(AValue: string): ISweetAlert4DButtons; overload;
    function DenyButtonColor(AValue: string): ISweetAlert4DButtons; overload;
    function ReverseButtons(AValue: Boolean): ISweetAlert4DButtons; overload;

    function ShowCloseButton: Boolean; overload;
    function ShowCancelButton: Boolean; overload;
    function ShowDenyButton: Boolean; overload;
    function FocusConfirm: Boolean; overload;
    function ConfirmButtonText: string; overload;
    function CancelButtonText: string; overload;
    function DenyButtonText: string; overload;
    function ConfirmButtonColor: string; overload;
    function CancelButtonColor: string; overload;
    function DenyButtonColor: string; overload;
    function ReverseButtons: Boolean; overload;

    function Initialize: ISweetAlert4DButtons;
    function &End: ISweetAlert4D;
  public
    constructor Create(AParent: ISweetAlert4D);
    class function New(AParent: ISweetAlert4D): ISweetAlert4DButtons;
  end;

  TSweetAlert4DImage = class(TInterfacedObject, ISweetAlert4DImage)
  private
    [Weak]
    FParent: ISweetAlert4D;
    FUrl: string;
    FWidth: Integer;
    FHeight: Integer;
    FAlt: string;
  protected
    function Url(AValue: string): ISweetAlert4DImage; overload;
    function Width(AValue: Integer): ISweetAlert4DImage; overload;
    function Height(AValue: Integer): ISweetAlert4DImage; overload;
    function Alt(AValue: string): ISweetAlert4DImage; overload;

    function Url: string; overload;
    function Width: Integer; overload;
    function Height: Integer; overload;
    function Alt: string; overload;

    function Initialize: ISweetAlert4DImage;
    function &End: ISweetAlert4D;
  public
    constructor Create(AParent: ISweetAlert4D);
    class function New(AParent: ISweetAlert4D): ISweetAlert4DImage;
  end;

implementation

{ TSweetAlert4DImage }

function TSweetAlert4DImage.Alt(AValue: string): ISweetAlert4DImage;
begin
  Result := Self;
  FAlt := AValue;
end;

function TSweetAlert4DImage.Alt: string;
begin
  Result := FAlt;
end;

constructor TSweetAlert4DImage.Create(AParent: ISweetAlert4D);
begin
  FParent := AParent;
  Initialize;
end;

function TSweetAlert4DImage.&End: ISweetAlert4D;
begin
  Result := FParent;
end;

function TSweetAlert4DImage.Height: Integer;
begin
  Result := FHeight;
end;

function TSweetAlert4DImage.Initialize: ISweetAlert4DImage;
begin
  FUrl := EmptyStr;
  FAlt := EmptyStr;
  FWidth := 0;
  FHeight := 0;
end;

function TSweetAlert4DImage.Height(AValue: Integer): ISweetAlert4DImage;
begin
  Result := Self;
  FHeight := AValue;
end;

class function TSweetAlert4DImage.New(AParent: ISweetAlert4D): ISweetAlert4DImage;
begin
  Result := Self.Create(AParent);
end;

function TSweetAlert4DImage.Url: string;
begin
  Result := FUrl;
end;

function TSweetAlert4DImage.Url(AValue: string): ISweetAlert4DImage;
begin
  Result := Self;
  FUrl := AValue;
end;

function TSweetAlert4DImage.Width: Integer;
begin
  Result := FWidth;
end;

function TSweetAlert4DImage.Width(AValue: Integer): ISweetAlert4DImage;
begin
  Result := Self;
  FWidth := AValue;
end;

{ TSweetAlert4D }

function TSweetAlert4D.Buttons: ISweetAlert4DButtons;
begin
  Result := FButtons;
end;

constructor TSweetAlert4D.Create;
begin
  FButtons := TSweetAlert4DButtons.New(Self);
  FImage := TSweetAlert4DImage.New(Self);
  Initialize;
end;

function TSweetAlert4D.Footer: string;
begin
  Result := FFooter;
end;

function TSweetAlert4D.Footer(AValue: string): ISweetAlert4D;
begin
  Result := Self;
  FFooter := AValue;
end;

function TSweetAlert4D.Html(AValue: string): ISweetAlert4D;
begin
  Result := Self;
  FHtml := AValue;
end;

function TSweetAlert4D.Html: string;
begin
  Result := FHtml;
end;

function TSweetAlert4D.Icon: TSweetIcon;
begin
  Result := FIcon;
end;

function TSweetAlert4D.Icon(AValue: TSweetIcon): ISweetAlert4D;
begin
  Result := Self;
  FIcon := AValue;
end;

function TSweetAlert4D.Image: ISweetAlert4DImage;
begin
  Result := FImage;
end;

function TSweetAlert4D.Initialize: ISweetAlert4D;
begin
  FIcon := siNone;
  FPosition := spCenter;
  FImage.Initialize;
  FButtons.Initialize;
end;

function TSweetAlert4D.Message: string;
var
  LSweetMessage: TJSONObject;
begin
  LSweetMessage := TJSONObject.Create;
  try
    LSweetMessage.SetValue('title', FTitle)
      .SetValue('text', FText)
      .SetValue('icon', FIcon.Value)
      .SetValue('footer', FFooter)
      .SetValue('html', FHtml)
      .SetValue('timer', FTimer * 1000)
      .SetValue('position', FPosition.Value);

    LSweetMessage.SetValue('showCloseButton', FButtons.ShowCloseButton)
      .SetValue('showCancelButton', FButtons.ShowCancelButton)
      .SetValue('showDenyButton', FButtons.ShowDenyButton)
      .SetValue('focusConfirm', FButtons.FocusConfirm)
      .SetValue('denyButtonText', FButtons.DenyButtonText)
      .SetValue('confirmButtonText', FButtons.ConfirmButtonText)
      .SetValue('cancelButtonText', FButtons.CancelButtonText)
      .SetValue('denyButtonText', FButtons.DenyButtonText)
      .SetValue('confirmButtonColor', FButtons.ConfirmButtonColor)
      .SetValue('cancelButtonColor', FButtons.CancelButtonColor)
      .SetValue('denyButtonColor', FButtons.DenyButtonColor)
      .SetValue('reverseButtons', FButtons.ReverseButtons);

    Result := LSweetMessage.ToJSON;
  finally
    LSweetMessage.Free;
  end;
end;

class function TSweetAlert4D.New: ISweetAlert4D;
begin
  Result := Self.Create;
end;

function TSweetAlert4D.Position: TSweetPosition;
begin
  Result := FPosition;
end;

function TSweetAlert4D.Position(AValue: TSweetPosition): ISweetAlert4D;
begin
  Result := Self;
  FPosition := AValue;
end;

function TSweetAlert4D.Text(AValue: string): ISweetAlert4D;
begin
  Result := Self;
  FText := AValue;
end;

function TSweetAlert4D.Text: string;
begin
  Result := FText;
end;

function TSweetAlert4D.Timer: Integer;
begin
  Result := FTimer;
end;

function TSweetAlert4D.Timer(AValue: Integer): ISweetAlert4D;
begin
  Result := Self;
  FTimer := AValue;
end;

function TSweetAlert4D.Title(AValue: string): ISweetAlert4D;
begin
  Result := Self;
  FTitle := AValue;
end;

function TSweetAlert4D.Title: string;
begin
  Result := FTitle;
end;

{ TSweetAlert4DButtons }

function TSweetAlert4DButtons.CancelButtonColor: string;
begin
  Result := FCancelButtonColor;
end;

function TSweetAlert4DButtons.CancelButtonColor(AValue: string): ISweetAlert4DButtons;
begin
  Result := Self;
  FCancelButtonColor := AValue;
end;

function TSweetAlert4DButtons.CancelButtonText(AValue: string): ISweetAlert4DButtons;
begin
  Result := Self;
  FCancelButtonText := AValue;
end;

function TSweetAlert4DButtons.CancelButtonText: string;
begin
  Result := FCancelButtonText;
end;

function TSweetAlert4DButtons.ConfirmButtonColor(AValue: string): ISweetAlert4DButtons;
begin
  Result := Self;
  FConfirmButtonColor := AValue;
end;

function TSweetAlert4DButtons.ConfirmButtonColor: string;
begin
  Result := FConfirmButtonColor;
end;

function TSweetAlert4DButtons.ConfirmButtonText: string;
begin
  Result := FConfirmButtonText;
end;

function TSweetAlert4DButtons.ConfirmButtonText(AValue: string): ISweetAlert4DButtons;
begin
  Result := Self;
  FConfirmButtonText := AValue;
end;

constructor TSweetAlert4DButtons.Create(AParent: ISweetAlert4D);
begin
  FParent := AParent;
  Initialize;
end;

function TSweetAlert4DButtons.DenyButtonColor: string;
begin
  Result := FDenyButtonColor;
end;

function TSweetAlert4DButtons.DenyButtonColor(AValue: string): ISweetAlert4DButtons;
begin
  Result := Self;
  FDenyButtonColor := AValue;
end;

function TSweetAlert4DButtons.DenyButtonText(AValue: string): ISweetAlert4DButtons;
begin
  Result := Self;
  FDenyButtonText := AValue;
end;

function TSweetAlert4DButtons.DenyButtonText: string;
begin
  Result := FDenyButtonText;
end;

function TSweetAlert4DButtons.&End: ISweetAlert4D;
begin
  Result := FParent;
end;

function TSweetAlert4DButtons.FocusConfirm: Boolean;
begin
  Result := FFocusConfirm;
end;

function TSweetAlert4DButtons.Initialize: ISweetAlert4DButtons;
begin
  FShowCloseButton := False;
  FShowCancelButton := False;
  FShowDenyButton := False;
  FFocusConfirm := False;
  FConfirmButtonText := 'OK';
  FCancelButtonText := 'Cancel';
  FDenyButtonText := 'Deny';
  FReverseButtons := False;
end;

function TSweetAlert4DButtons.FocusConfirm(AValue: Boolean): ISweetAlert4DButtons;
begin
  Result := Self;
  FFocusConfirm := AValue;
end;

class function TSweetAlert4DButtons.New(AParent: ISweetAlert4D): ISweetAlert4DButtons;
begin
  Result := Self.Create(AParent);
end;

function TSweetAlert4DButtons.ReverseButtons: Boolean;
begin
  Result := FReverseButtons;
end;

function TSweetAlert4DButtons.ReverseButtons(AValue: Boolean): ISweetAlert4DButtons;
begin
  Result := Self;
  FReverseButtons := AValue;
end;

function TSweetAlert4DButtons.ShowCancelButton(AValue: Boolean): ISweetAlert4DButtons;
begin
  Result := Self;
  FShowCancelButton := AValue;
end;

function TSweetAlert4DButtons.ShowCancelButton: Boolean;
begin
  Result := FShowCancelButton;
end;

function TSweetAlert4DButtons.ShowCloseButton: Boolean;
begin
  Result := FShowCloseButton;
end;

function TSweetAlert4DButtons.ShowCloseButton(AValue: Boolean): ISweetAlert4DButtons;
begin
  Result := Self;
  FShowCloseButton := AValue;
end;

function TSweetAlert4DButtons.ShowDenyButton: Boolean;
begin
  Result := FShowDenyButton;
end;

function TSweetAlert4DButtons.ShowDenyButton(AValue: Boolean): ISweetAlert4DButtons;
begin
  Result := Self;
  FShowDenyButton := AValue;
end;

end.
