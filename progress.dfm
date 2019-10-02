object FormProgress: TFormProgress
  Left = 229
  Top = 160
  BorderStyle = bsNone
  Caption = 'FormProgress'
  ClientHeight = 47
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxProgressBar1: TcxProgressBar
    Left = 0
    Top = 26
    Width = 568
    Height = 21
    Align = alBottom
    Properties.PeakValue = 2.000000000000000000
    TabOrder = 0
  end
  object cxLabel1: TcxLabel
    Left = 80
    Top = 8
    Width = 25
    Height = 17
    Caption = '       '
  end
  object cxButton1: TcxButton
    Left = 0
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = cxButton1Click
  end
end
