object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1055#1086#1073#1091#1076#1080#1085#1082#1086#1074#1077' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103' '#1079#1072' '#1087#1077#1088#1110#1086#1076
  ClientHeight = 486
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 413
      Top = 8
      Width = 114
      Height = 25
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' '#1077#1082#1089#1077#1083#1100
      TabOrder = 0
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton2: TcxButton
      Left = 15
      Top = 8
      Width = 114
      Height = 25
      Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080
      TabOrder = 1
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 147
      Top = 10
      Properties.KeyFieldNames = 'YEARMON'
      Properties.ListColumns = <
        item
          FieldName = 'ym'
        end>
      Properties.ListSource = DataSource
      TabOrder = 2
      Width = 114
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 282
      Top = 10
      Properties.KeyFieldNames = 'YEARMON'
      Properties.ListColumns = <
        item
          FieldName = 'ym'
        end>
      Properties.ListSource = DataSource
      TabOrder = 3
      Width = 114
    end
    object cxLabel1: TcxLabel
      Left = 135
      Top = 12
      Caption = #1047
    end
    object cxLabel2: TcxLabel
      Left = 264
      Top = 11
      Caption = #1087#1086
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 813
    Height = 445
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Edit.Enabled = False
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      object cxGrid1DBTableView1ABON: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1072#1073#1086#1085#1077#1085#1090#1072
        DataBinding.FieldName = 'ABON'
        Width = 77
      end
      object cxGrid1DBTableView1SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        Caption = #1055#1030#1041
        DataBinding.FieldName = 'FIO'
        Width = 194
      end
      object cxGrid1DBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        Width = 183
      end
      object cxGrid1DBTableView1N_DOM: TcxGridDBColumn
        Caption = #8470' '#1073#1091#1076'.'
        DataBinding.FieldName = 'N_DOM'
      end
      object cxGrid1DBTableView1KV: TcxGridDBColumn
        Caption = #1050#1074'.'
        DataBinding.FieldName = 'KV'
      end
      object cxGrid1DBTableView1TIP: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072' '
        DataBinding.FieldName = 'TIP'
      end
      object cxGrid1DBTableView1N_LICH: TcxGridDBColumn
        Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
        DataBinding.FieldName = 'N_LICH'
      end
      object cxGrid1DBTableView1DATA_VIP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085'.'
        DataBinding.FieldName = 'DATA_VIP'
      end
      object cxGrid1DBTableView1DATA_STPOV: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1086#1087#1077#1088#1102' '#1087#1086#1074#1110#1088#1082#1080
        DataBinding.FieldName = 'DATA_STPOV'
      end
      object cxGrid1DBTableView1DATA_POV: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1086#1074#1110#1088#1082#1080' '
        DataBinding.FieldName = 'DATA_POV'
      end
    end
    object cxGrid1Level1: TcxGridLevel
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 41
    Width = 813
    Height = 445
    Align = alClient
    TabOrder = 2
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Edit.Enabled = False
      DataController.DataSource = budkubSource
      DataController.DetailKeyFieldNames = 'N_DOM'
      DataController.KeyFieldNames = 'N_DOM'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableView1KUB_ALL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      Preview.Visible = True
      object cxGridDBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        Options.Editing = False
      end
      object cxGridDBTableView1N_DOM: TcxGridDBColumn
        Caption = #8470' '#1073#1091#1076#1080#1085#1082#1091
        DataBinding.FieldName = 'N_DOM'
        Options.Editing = False
        Width = 75
      end
      object cxGridDBTableView1KUB_ALL: TcxGridDBColumn
        Caption = #1050#1091#1073#1080
        DataBinding.FieldName = 'KUB_ALL'
        Options.Editing = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object budkub: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from h_voda'
      'where'
      '  KUB_ALL = :OLD_KUB_ALL and'
      '  N_DOM = :OLD_N_DOM and'
      '  UL = :OLD_UL')
    InsertSQL.Strings = (
      'insert into h_voda'
      '  (KUB_ALL, N_DOM, UL)'
      'values'
      '  (:KUB_ALL, :N_DOM, :UL)')
    RefreshSQL.Strings = (
      'Select '
      '  UL,'
      '  N_DOM,'
      '  KUB_ALL'
      'from h_voda '
      'where'
      '  KUB_ALL = :KUB_ALL and'
      '  N_DOM = :N_DOM and'
      '  UL = :UL')
    SelectSQL.Strings = (
      
        'select ul,n_dom,sum(SCH_RAZN)+sum(NOR_RAZN)+sum(NORM_BLICH)+sum(' +
        'DEL_NORM)+sum(PERERAH)+sum(SPIS)+sum(KUB_NOBALANS) as kub_all fr' +
        'om h_voda where yearmon>=:ym1 and yearmon<=:ym2 and ul is not nu' +
        'll group by ul,n_dom'
      
        'having sum(SCH_RAZN)+sum(NOR_RAZN)+sum(NORM_BLICH)+sum(DEL_NORM)' +
        '+sum(PERERAH)+sum(SPIS)+sum(KUB_NOBALANS) is not null')
    ModifySQL.Strings = (
      'update h_voda'
      'set'
      '  KUB_ALL = :KUB_ALL,'
      '  N_DOM = :N_DOM,'
      '  UL = :UL'
      'where'
      '  KUB_ALL = :OLD_KUB_ALL and'
      '  N_DOM = :OLD_N_DOM and'
      '  UL = :OLD_UL')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_LICH_ID'
    Left = 48
    Top = 120
    object budkubUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object budkubN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object budkubKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      ProviderFlags = []
    end
  end
  object budkubSource: TDataSource
    DataSet = budkub
    Left = 48
    Top = 168
  end
  object DataSource: TDataSource
    DataSet = data
    Left = 136
    Top = 122
  end
  object data: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    OnCalcFields = dataCalcFields
    DeleteSQL.Strings = (
      'delete from DATA'
      'where'
      '  YEARMON = :OLD_YEARMON')
    InsertSQL.Strings = (
      'insert into DATA'
      '  (YEARMON, NORMA_HVD)'
      'values'
      '  (:YEARMON, :NORMA_HVD)')
    RefreshSQL.Strings = (
      'Select '
      '  YEARMON,'
      '  NORMA_HVD'
      'from DATA '
      'where'
      '  YEARMON = :YEARMON')
    SelectSQL.Strings = (
      'SELECT DATA.YEARMON, DATA.NORMA_HVD'
      'FROM DATA'
      'ORDER BY DATA.YEARMON DESC')
    ModifySQL.Strings = (
      'update DATA'
      'set'
      '  YEARMON = :YEARMON,'
      '  NORMA_HVD = :NORMA_HVD'
      'where'
      '  YEARMON = :OLD_YEARMON')
    Left = 104
    Top = 122
    object dataYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = 'DATA.YEARMON'
      Required = True
    end
    object dataNORMA_HVD: TIBBCDField
      FieldName = 'NORMA_HVD'
      Origin = 'DATA.NORMA_HVD'
      Precision = 18
      Size = 4
    end
    object dataym: TStringField
      FieldKind = fkCalculated
      FieldName = 'ym'
      Calculated = True
    end
  end
end
