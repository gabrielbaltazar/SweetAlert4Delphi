object FrmTeste: TFrmTeste
  Left = 0
  Top = 0
  Width = 555
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
  object IWBTN_BASIC_MESSAGE_SERVER: TIWButton
    Left = 48
    Top = 80
    Width = 169
    Height = 30
    Caption = 'Basic Message - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_BASIC_MESSAGE_SERVER'
    OnAsyncClick = IWBTN_BASIC_MESSAGE_SERVERAsyncClick
  end
  object IWBASIC_MESSAGE_CLIENT: TIWButton
    Left = 256
    Top = 80
    Width = 161
    Height = 30
    Caption = 'Basic Message - Client'
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
    Left = 48
    Top = 248
    Width = 169
    Height = 30
    Caption = 'Question - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_QUESTION'
    OnAsyncClick = IWBTN_QUESTIONAsyncClick
  end
  object IWBTN_SUCCESS_MESSAGE_SERVER: TIWButton
    Left = 48
    Top = 128
    Width = 169
    Height = 30
    Caption = 'Success Message - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_MESSAGE_SERVER'
    OnAsyncClick = IWBTN_SUCCESS_MESSAGE_SERVERAsyncClick
  end
  object IWBTN_SUCCESS_MESSAGE_CLIENT: TIWButton
    Left = 256
    Top = 128
    Width = 161
    Height = 30
    Caption = 'Success Message - Client'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_MESSAGE_CLIENT'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ShowBasicSuccess('#39'Good job!'#39', '#39'You clicked the button!'#39');')
        Event = 'onClick'
      end>
  end
  object IWBTN_ERROR_MESSAGE_SERVER: TIWButton
    Left = 48
    Top = 176
    Width = 169
    Height = 30
    Caption = 'Error Message - Server'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_MESSAGE_SERVER'
    OnAsyncClick = IWBTN_ERROR_MESSAGE_SERVERAsyncClick
  end
  object IWBTN_ERROR_MESSAGE_CLIENT: TIWButton
    Left = 256
    Top = 176
    Width = 161
    Height = 30
    Caption = 'Error Message - Client'
    Color = clBtnFace
    FriendlyName = 'IWBTN_SUCCESS_MESSAGE_CLIENT'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ShowBasicError('#39'Ops...'#39', '#39'Something went wrong!'#39')')
        Event = 'onClick'
      end>
  end
  object IWTemplate: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 480
    Top = 320
  end
end
