unit SweetAlert4D.Interfaces;

interface

type
  TSweetIcon = (siNone, siInfo, siSuccess, siError, siWarning, siQuestion);

  TSweetPosition = (spTop, spTopStart, spTopEnd, spCenter, spCenterStart, spCenterEnd,
    spBottom, spBottomStart, spBottomEnd);

  ISweetAlert4DButtons = interface;
  ISweetAlert4DImage = interface;

  ISweetAlert4D = interface
    ['{0CD25528-3AB6-4D5C-8B69-2C84CD5D8882}']
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
  end;

  ISweetAlert4DButtons = interface
    ['{993D6325-24F8-4C22-AEB7-9A551F08986C}']
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

    function &End: ISweetAlert4D;
  end;

  ISweetAlert4DImage = interface
    ['{8826A98E-9771-49DE-86EF-67BFF311AB08}']
    function Url(AValue: string): ISweetAlert4DImage; overload;
    function Width(AValue: Integer): ISweetAlert4DImage; overload;
    function Height(AValue: Integer): ISweetAlert4DImage; overload;
    function Alt(AValue: string): ISweetAlert4DImage; overload;

    function Url: string; overload;
    function Width: Integer; overload;
    function Height: Integer; overload;
    function Alt: string; overload;

    function &End: ISweetAlert4D;
  end;

implementation

end.
