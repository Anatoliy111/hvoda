object FormLichPlomb: TFormLichPlomb
  Left = 0
  Top = 0
  Caption = 'FormLichPlomb'
  ClientHeight = 426
  ClientWidth = 671
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
    Width = 671
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 495
    object cxButton1: TcxButton
      Left = 15
      Top = 8
      Width = 114
      Height = 25
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' '#1077#1082#1089#1077#1083#1100
      TabOrder = 0
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 671
    Height = 385
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 495
    ExplicitHeight = 484
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
    Width = 671
    Height = 385
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 495
    ExplicitHeight = 484
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Edit.Enabled = False
      DataController.DataSource = lichplombSource
      DataController.DetailKeyFieldNames = 'SCHET'
      DataController.KeyFieldNames = 'SCHET'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      Preview.Visible = True
      object cxGridDBTableView1ABON: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1072#1073#1086#1085#1077#1085#1090#1072
        DataBinding.FieldName = 'ABON'
        Width = 78
      end
      object cxGridDBTableView1SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
      end
      object cxGridDBTableView1LICH: TcxGridDBColumn
        Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
        DataBinding.FieldName = 'LICH'
        Width = 129
      end
      object cxGridDBTableView1PLOMB: TcxGridDBColumn
        Caption = #1055#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'PLOMB'
        Width = 99
      end
      object cxGridDBTableView1FIO: TcxGridDBColumn
        Caption = #1055#1030#1055
        DataBinding.FieldName = 'FIO'
      end
      object cxGridDBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        Width = 302
      end
      object cxGridDBTableView1N_DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'N_DOM'
      end
      object cxGridDBTableView1KV: TcxGridDBColumn
        Caption = #1050#1074#1072#1088#1090#1080#1088#1072
        DataBinding.FieldName = 'KV'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object lichplomb: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from lich'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into lich'
      '  (DATA_POV, DATA_STPOV, DATA_VIP, ID, N_LICH, SCHET, TIP)'
      'values'
      
        '  (:DATA_POV, :DATA_STPOV, :DATA_VIP, :ID, :N_LICH, :SCHET, :TIP' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SCHET,'
      '  TIP,'
      '  N_LICH,'
      '  DATA_VIP,'
      '  DATA_POV,'
      '  DATA_STPOV'
      'from lich '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select lich_plomb.schet,lich_plomb.yearmon,'
      'case when trim(lichall)='#39#39' then null else lichall end as lich, '
      
        'case when trim(plomball)='#39#39' then null else plomball end as plomb' +
        ','
      'lich_plomb.lichall,'
      'lich_plomb.plomball, '
      'h_voda.fio,'
      '    h_voda.ul,'
      '    h_voda.n_dom,'
      '    h_voda.kv,'
      '    case when org=0 then '#39#1060#1110#1079'.'#1086#1089#1086#1073#1080#39' else '#39#1070#1088'.'#1086#1089#1086#1073#1080#39' end as abon'
      'from lich_plomb'
      
        'left join h_voda on (lich_plomb.schet = h_voda.schet and h_voda.' +
        'yearmon=lich_plomb.yearmon)'
      'order by lich_plomb.schet')
    ModifySQL.Strings = (
      'update lich'
      'set'
      '  DATA_POV = :DATA_POV,'
      '  DATA_STPOV = :DATA_STPOV,'
      '  DATA_VIP = :DATA_VIP,'
      '  ID = :ID,'
      '  N_LICH = :N_LICH,'
      '  SCHET = :SCHET,'
      '  TIP = :TIP'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_LICH_ID'
    Left = 48
    Top = 128
    object lichplombSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"LICH_PLOMB"."SCHET"'
      Size = 10
    end
    object lichplombYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"LICH_PLOMB"."YEARMON"'
    end
    object lichplombLICH: TIBStringField
      FieldName = 'LICH'
      ProviderFlags = []
      Size = 80
    end
    object lichplombPLOMB: TIBStringField
      FieldName = 'PLOMB'
      ProviderFlags = []
      Size = 80
    end
    object lichplombFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object lichplombUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object lichplombN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object lichplombKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object lichplombABON: TIBStringField
      FieldName = 'ABON'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
  end
  object lichplombSource: TDataSource
    DataSet = lichplomb
    Left = 48
    Top = 168
  end
end
