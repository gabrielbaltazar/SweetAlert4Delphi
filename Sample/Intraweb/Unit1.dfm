object FrmTeste: TFrmTeste
  Left = 0
  Top = 0
  Width = 797
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  LayoutMgr = IWTemplate
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWBTN_BASIC_SERVER: TIWButton
    Left = 16
    Top = 32
    Width = 145
    Height = 30
    Caption = 'Basic - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_BASIC_SERVER'
    OnAsyncClick = IWBTN_BASIC_SERVERAsyncClick
  end
  object IWBASIC_CLIENT: TIWButton
    Left = 167
    Top = 32
    Width = 145
    Height = 30
    Caption = 'Basic - Client'
    Color = clBtnFace
    FriendlyName = 'IWBTN_BASIC_MESSAGE'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ShowBasic('#39'Any fool can use a computer'#39')')
        Event = 'onClick'
      end>
  end
  object IWBTN_QUESTION: TIWButton
    Left = 16
    Top = 208
    Width = 145
    Height = 30
    Caption = 'Question - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_QUESTION'
    OnAsyncClick = IWBTN_QUESTIONAsyncClick
  end
  object IWBTN_SUCCESS_SERVER: TIWButton
    Left = 16
    Top = 80
    Width = 145
    Height = 30
    Caption = 'Success - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_SERVER'
    OnAsyncClick = IWBTN_SUCCESS_SERVERAsyncClick
  end
  object IWBTN_SUCCESS_CLIENT: TIWButton
    Left = 16
    Top = 132
    Width = 145
    Height = 30
    Caption = 'Success - Client'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_CLIENT'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ShowBasicSuccess('#39'Good job!'#39', '#39'You clicked the button!'#39');')
        Event = 'onClick'
      end>
  end
  object IWBTN_ERROR_SERVER: TIWButton
    Left = 167
    Top = 80
    Width = 145
    Height = 30
    Caption = 'Error - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_MESSAGE_SERVER'
    OnAsyncClick = IWBTN_ERROR_SERVERAsyncClick
  end
  object IWBTN_ERROR_CLIENT: TIWButton
    Left = 167
    Top = 132
    Width = 145
    Height = 30
    Caption = 'Error - Client'
    Color = clBtnFace
    FriendlyName = 'IWBTN_ERROR_CLIENT'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ShowBasicError('#39'Ops...'#39', '#39'Something went wrong!'#39');')
        Event = 'onClick'
      end>
  end
  object IWBTN_WARNING_SERVER: TIWButton
    Left = 318
    Top = 80
    Width = 145
    Height = 30
    Caption = 'Warning - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_WARNING_SERVER'
    OnAsyncClick = IWBTN_WARNING_SERVERAsyncClick
  end
  object IWBTN_INFO_SERVER: TIWButton
    Left = 469
    Top = 80
    Width = 145
    Height = 30
    Caption = 'Info - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_MESSAGE_SERVER'
    OnAsyncClick = IWBTN_INFO_SERVERAsyncClick
  end
  object IWBTN_WARNING_CLIENT: TIWButton
    Left = 318
    Top = 132
    Width = 145
    Height = 30
    Caption = 'Warning - Client'
    Color = clBtnFace
    FriendlyName = 'IWBTN_WARNING_CLIENT'
    ScriptEvents = <
      item
        EventCode.Strings = (
          
            'ShowBasicWarning("Atention!", "You won'#39't be able to revert this!' +
            '");')
        Event = 'onClick'
      end>
  end
  object IWBTN_INFO_CLIENT: TIWButton
    Left = 469
    Top = 132
    Width = 145
    Height = 30
    Caption = 'Info - Client'
    Color = clBtnFace
    FriendlyName = 'IWBTN_INFO_CLIENT'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ShowBasicInfo('#39'Hi!'#39', '#39'Info Text message'#39');')
        Event = 'onClick'
      end>
  end
  object IWTemplate: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 480
    Top = 320
  end
end
