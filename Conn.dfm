object FormConn: TFormConn
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormConn'
  ClientHeight = 138
  ClientWidth = 276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 152
    Top = 96
    Width = 113
    Height = 28
    Caption = #1047#1072#1082#1088#1080#1090#1080' '#1087#1088#1086#1075#1088#1072#1084#1091
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxLabel1: TcxLabel
    Left = 28
    Top = 40
    Caption = #1059#1074#1072#1075#1072'! '#1042#1110#1076#1089#1091#1090#1085#1108' '#1087#1110#1076#1082#1083#1102#1095#1077#1085#1085#1103' '#1076#1086' '#1073#1072#1079#1080' '#1076#1072#1085#1080#1093'.'
    Style.TextColor = clRed
  end
  object cxLabel2: TcxLabel
    Left = 40
    Top = 63
    Caption = #1053#1072#1089#1090#1091#1087#1085#1072' '#1089#1087#1088#1086#1073#1072' '#1087#1110#1076#1082#1083#1102#1095#1077#1085#1103' '#1095#1077#1088#1077#1079' - '
    Style.TextColor = clRed
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 80
    Top = 8
  end
end
