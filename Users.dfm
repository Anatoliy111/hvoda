object FormUsers: TFormUsers
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1093#1110#1076
  ClientHeight = 167
  ClientWidth = 215
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label16: TLabel
    Left = 27
    Top = 19
    Width = 112
    Height = 13
    Alignment = taCenter
    Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1082#1086#1088#1080#1089#1090#1091#1074#1072#1095#1072
  end
  object Label1: TLabel
    Left = 27
    Top = 65
    Width = 78
    Height = 13
    Alignment = taCenter
    Caption = #1042#1074#1077#1076#1110#1090#1100' '#1087#1072#1088#1086#1083#1100
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 27
    Top = 84
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 0
    TabOrder = 0
    Width = 166
  end
  object cxButton1: TcxButton
    Left = 27
    Top = 120
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object cxButton2: TcxButton
    Left = 115
    Top = 120
    Width = 78
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 2
    OnClick = cxButton2Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 27
    Top = 38
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'USER_NAIM'
    Properties.ListColumns = <
      item
        FieldName = 'USER_NAIM'
      end>
    Properties.ListOptions.ColumnSorting = False
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = MainForm.usersSource
    EditValue = ''
    TabOrder = 3
    Width = 166
  end
end
