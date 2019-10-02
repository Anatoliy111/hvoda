object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
  ClientHeight = 551
  ClientWidth = 668
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
    Width = 668
    Height = 41
    Align = alTop
    TabOrder = 0
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
    Width = 668
    Height = 510
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Edit.Enabled = False
      DataController.DataSource = lichallSource
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
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
      object cxGrid1DBTableView1DATA_POV: TcxGridDBColumn
        Caption = #1058#1077#1088#1084#1110#1085' '#1087#1086#1074#1110#1088#1082#1080' '
        DataBinding.FieldName = 'DATA_POV'
      end
      object cxGrid1DBTableView1DATA_INP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1110#1085#1076'.'#1087#1083'.'
        DataBinding.FieldName = 'DATA_INP'
      end
      object cxGrid1DBTableView1N_INPLOMB: TcxGridDBColumn
        Caption = #8470' '#1110#1085#1076#1080#1082#1072#1090#1086#1088#1085#1086#1111' '#1087#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'N_INPLOMB'
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
  object lichall: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    BeforeOpen = lichallBeforeOpen
    DeleteSQL.Strings = (
      'delete from lich'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into lich'
      
        '  (DATA_INP, DATA_MGP, DATA_POV, DATA_VIP, ID, N_INPLOMB, N_LICH' +
        ', N_MGPLOMB, '
      '   SCHET, TIP)'
      'values'
      
        '  (:DATA_INP, :DATA_MGP, :DATA_POV, :DATA_VIP, :ID, :N_INPLOMB, ' +
        ':N_LICH, '
      '   :N_MGPLOMB, :SCHET, :TIP)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SCHET,'
      '  TIP,'
      '  N_LICH,'
      '  DATA_VIP,'
      '  DATA_POV,'
      '  N_INPLOMB,'
      '  N_MGPLOMB,'
      '  DATA_INP,'
      '  DATA_MGP'
      'from lich '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select '
      '    lich.id,'
      '    lich.schet,'
      '    lich.tip,'
      '    lich.n_lich,'
      '    lich.data_vip,'
      '    lich.data_pov,'
      '    lich.n_inplomb,'
      '    lich.n_mgplomb,'
      '    lich.data_inp,'
      '    lich.data_mgp,'
      '    h_voda.fio,'
      '    h_voda.ul,'
      '    h_voda.n_dom,'
      '    h_voda.kv'
      'from lich'
      '   inner join h_voda on (lich.schet = h_voda.schet)'
      'where h_voda.yearmon=:yearmon'
      'ORDER BY lich.SCHET')
    ModifySQL.Strings = (
      'update lich'
      'set'
      '  DATA_INP = :DATA_INP,'
      '  DATA_MGP = :DATA_MGP,'
      '  DATA_POV = :DATA_POV,'
      '  DATA_VIP = :DATA_VIP,'
      '  ID = :ID,'
      '  N_INPLOMB = :N_INPLOMB,'
      '  N_LICH = :N_LICH,'
      '  N_MGPLOMB = :N_MGPLOMB,'
      '  SCHET = :SCHET,'
      '  TIP = :TIP'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_LICH_ID'
    Left = 48
    Top = 112
    object lichallID: TIntegerField
      FieldName = 'ID'
      Origin = '"LICH"."ID"'
      Required = True
    end
    object lichallSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"LICH"."SCHET"'
      Size = 10
    end
    object lichallTIP: TIBStringField
      FieldName = 'TIP'
      Origin = '"LICH"."TIP"'
    end
    object lichallN_LICH: TIBStringField
      FieldName = 'N_LICH'
      Origin = '"LICH"."N_LICH"'
    end
    object lichallDATA_VIP: TDateField
      FieldName = 'DATA_VIP'
      Origin = '"LICH"."DATA_VIP"'
    end
    object lichallDATA_POV: TDateField
      FieldName = 'DATA_POV'
      Origin = '"LICH"."DATA_POV"'
    end
    object lichallN_INPLOMB: TIBStringField
      FieldName = 'N_INPLOMB'
      Origin = '"LICH"."N_INPLOMB"'
    end
    object lichallN_MGPLOMB: TIBStringField
      FieldName = 'N_MGPLOMB'
      Origin = '"LICH"."N_MGPLOMB"'
    end
    object lichallFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object lichallUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object lichallN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object lichallKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object lichallDATA_INP: TDateField
      FieldName = 'DATA_INP'
      Origin = '"LICH"."DATA_INP"'
    end
    object lichallDATA_MGP: TDateField
      FieldName = 'DATA_MGP'
      Origin = '"LICH"."DATA_MGP"'
    end
  end
  object lichallSource: TDataSource
    DataSet = lichall
    Left = 48
    Top = 144
  end
end
