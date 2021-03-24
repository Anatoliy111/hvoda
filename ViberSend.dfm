object FormViberSend: TFormViberSend
  Left = 0
  Top = 0
  Caption = 'FormViberSend'
  ClientHeight = 423
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 49
    Align = alTop
    TabOrder = 0
    object cxButton8: TcxButton
      Left = 15
      Top = 13
      Width = 162
      Height = 25
      Caption = #1042#1110#1076#1087#1088#1072#1074#1080#1090#1080' '#1087#1086#1074#1110#1076#1086#1084#1083#1077#1085#1085#1103
      TabOrder = 0
      OnClick = cxButton8Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxLabel1: TcxLabel
      Left = 216
      Top = 16
      Caption = 'cxLabel1'
    end
  end
  object cxMemo1: TcxMemo
    Left = 0
    Top = 49
    Align = alClient
    Lines.Strings = (
      '')
    Properties.ScrollBars = ssVertical
    TabOrder = 1
    Height = 374
    Width = 541
  end
end
