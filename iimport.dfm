object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1030#1084#1087#1086#1088#1090
  ClientHeight = 203
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 144
    Top = 69
    Width = 138
    Height = 13
    Caption = '_______________________'
  end
  object cxProgressBar1: TcxProgressBar
    Left = 48
    Top = 88
    TabOrder = 0
    Width = 345
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
end
