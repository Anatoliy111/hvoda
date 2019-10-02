object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1050#1072#1088#1090#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
  ClientHeight = 541
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 201
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 241
      Top = 8
      Width = 17
      Height = 13
      Alignment = taCenter
      Caption = #1055#1030#1041
    end
    object Label6: TLabel
      Left = 24
      Top = 99
      Width = 79
      Height = 13
      Alignment = taCenter
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1088#1086#1078'.'
    end
    object Label4: TLabel
      Left = 24
      Top = 54
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = #1042#1091#1083#1080#1094#1103
    end
    object Label5: TLabel
      Left = 296
      Top = 53
      Width = 43
      Height = 13
      Alignment = taCenter
      Caption = #1041#1091#1076#1080#1085#1086#1082
    end
    object Label7: TLabel
      Left = 375
      Top = 53
      Width = 49
      Height = 13
      Alignment = taCenter
      Caption = #1050#1074#1072#1088#1090#1080#1088#1072
    end
    object Label11: TLabel
      Left = 15
      Top = 149
      Width = 57
      Height = 13
      Alignment = taCenter
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
    end
    object Label15: TLabel
      Left = 24
      Top = 8
      Width = 42
      Height = 13
      Alignment = taCenter
      Caption = #1056#1072#1093#1091#1085#1086#1082
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 241
      Top = 26
      DataBinding.DataField = 'FIO'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 289
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 24
      Top = 118
      DataBinding.DataField = 'KOLI_P'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 79
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 24
      Top = 72
      DataBinding.DataField = 'UL'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 249
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 296
      Top = 72
      DataBinding.DataField = 'N_DOM'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 49
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 24
      Top = 27
      DataBinding.DataField = 'SCHET'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 201
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 375
      Top = 72
      DataBinding.DataField = 'KV'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 49
    end
    object cxButton2: TcxButton
      Left = 15
      Top = 168
      Width = 66
      Height = 25
      Caption = #1044#1086#1076#1072#1090#1080
      TabOrder = 6
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton1: TcxButton
      Left = 87
      Top = 168
      Width = 90
      Height = 25
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      TabOrder = 7
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 201
    Width = 688
    Height = 340
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MainForm.lichSource
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1TIP: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072' '
        DataBinding.FieldName = 'TIP'
      end
      object cxGrid1DBTableView1N_LICH: TcxGridDBColumn
        Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
        DataBinding.FieldName = 'N_LICH'
        Width = 115
      end
      object cxGrid1DBTableView1DATA_VIP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085'.'
        DataBinding.FieldName = 'DATA_VIP'
        Width = 87
      end
      object cxGrid1DBTableView1DATA_POV: TcxGridDBColumn
        Caption = #1058#1077#1088#1084#1110#1085' '#1087#1086#1074#1110#1088#1082#1080' '
        DataBinding.FieldName = 'DATA_POV'
        Width = 100
      end
      object cxGrid1DBTableView1DATA_INP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1110#1085#1076'.'#1087#1083'.'
        DataBinding.FieldName = 'DATA_INP'
      end
      object cxGrid1DBTableView1N_INPLOMB: TcxGridDBColumn
        Caption = #8470' '#1110#1085#1076#1080#1082#1072#1090#1086#1088#1085#1086#1111' '#1087#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'N_INPLOMB'
        Width = 131
      end
      object cxGrid1DBTableView1DATA_MGP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1084#1072#1075'.'#1087#1083'.'
        DataBinding.FieldName = 'DATA_MGP'
      end
      object cxGrid1DBTableView1N_MGPLOMB: TcxGridDBColumn
        Caption = #8470' '#1072#1085#1090#1080#1084#1072#1075#1085#1110#1090#1085#1086#1111' '#1087#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'N_MGPLOMB'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
