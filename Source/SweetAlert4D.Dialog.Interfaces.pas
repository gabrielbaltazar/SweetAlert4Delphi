unit SweetAlert4D.Dialog.Interfaces;

interface

uses
  SweetAlert4D.Interfaces;

type
  TSweetIcon = SweetAlert4D.Interfaces.TSweetIcon;

  ISweetAlert4DDialog = interface
    ['{A624D4DC-C7EE-483C-A01B-9D616C92834C}']
    function Arguments: ISweetAlert4D;

    function Show: ISweetAlert4DDialog;
    function ShowSuccess: ISweetAlert4DDialog;
    function ShowBasic(AText: string): ISweetAlert4DDialog;
    function ShowBasicSuccess(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicInfo(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicWarning(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicError(ATitle, AText: string): ISweetAlert4DDialog;
    function ShowBasicQuestion(ATitle, AText: string): ISweetAlert4DDialog;
  end;

implementation

end.
