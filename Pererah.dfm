object FormPererah: TFormPererah
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1082#1080' '#1087#1086' '#1073#1091#1076#1080#1085#1082#1091
  ClientHeight = 659
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    object Label16: TLabel
      Left = 8
      Top = 10
      Width = 212
      Height = 13
      Alignment = taCenter
      Caption = #1054#1089#1085#1086#1074#1085#1072' '#1090#1072#1073#1083#1080#1094#1103' '#1087#1077#1088#1077#1088#1072#1093#1091#1085#1082#1110#1074' '#1079#1072' '#1087#1077#1088#1110#1086#1076' '
    end
    object Label1: TLabel
      Left = 226
      Top = 10
      Width = 33
      Height = 13
      Alignment = taCenter
      Caption = #1087#1077#1088#1110#1086#1076
    end
  end
  object cxGrid3: TcxGrid
    Left = 473
    Top = 421
    Width = 476
    Height = 238
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 120
    ExplicitTop = 157
    ExplicitWidth = 949
    ExplicitHeight = 481
    object cxGrid3DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = grppererahSource
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1SCH_KUB
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1SCH_SUMABON
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1SCH_RAZN
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid3DBTableView1YEARMONP: TcxGridDBColumn
        Caption = #1055#1077#1088#1110#1086#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1100
        DataBinding.FieldName = 'YEARMONP'
        Options.Editing = False
        Width = 89
      end
      object cxGrid3DBTableView1N_LICH: TcxGridDBColumn
        Caption = #8470' '#1083#1110#1095'.'
        DataBinding.FieldName = 'N_LICH'
        Options.Editing = False
      end
      object cxGrid3DBTableView1SCH_KUB: TcxGridDBColumn
        Caption = #1050#1091#1073#1080' '#1087#1086' '#1083#1110#1095'.'
        DataBinding.FieldName = 'SCH_KUB'
        Options.Editing = False
      end
      object cxGrid3DBTableView1SCH_SUMABON: TcxGridDBColumn
        Caption = #1057#1087#1086#1078#1080#1074#1072#1085#1085#1103' '#1072#1073#1086#1085'.'
        DataBinding.FieldName = 'SCH_SUMABON'
        Options.Editing = False
        Width = 107
      end
      object cxGrid3DBTableView1SCH_RAZN: TcxGridDBColumn
        Caption = #1056#1110#1079#1085#1080#1094#1103
        DataBinding.FieldName = 'SCH_RAZN'
        Options.Editing = False
        Width = 74
      end
      object cxGrid3DBTableView1NOTEWID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
        DataBinding.FieldName = 'NOTEWID'
        Options.Editing = False
        Width = 221
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBTableView1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 949
    Height = 355
    Align = alTop
    TabOrder = 2
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = hvpererahSource
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1KOLI_P
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1SCH_RAZN
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1NOR_RAZN
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1KUB_NOBALANS
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1PERERAH
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1SUMNACH
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellMultiSelect = True
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1KL: TcxGridDBColumn
        DataBinding.FieldName = 'KL'
      end
      object cxGridDBTableView1YEARMONP: TcxGridDBColumn
        Caption = #1055#1077#1088#1110#1086#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1100
        DataBinding.FieldName = 'YEARMONP'
        Options.Editing = False
        Width = 103
      end
      object cxGridDBTableView1FIO: TcxGridDBColumn
        Caption = #1055#1030#1055
        DataBinding.FieldName = 'FIO'
        Options.Editing = False
      end
      object cxGridDBTableView1KV: TcxGridDBColumn
        Caption = #1050#1074'.'
        DataBinding.FieldName = 'KV'
        Options.Editing = False
        Width = 26
      end
      object cxGridDBTableView1KOLI_P: TcxGridDBColumn
        Caption = #1082'-'#1090#1100' '#1083#1102#1076'.'
        DataBinding.FieldName = 'KOLI_P'
        Options.Editing = False
        Width = 56
      end
      object cxGridDBTableView1WID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1100
        DataBinding.FieldName = 'WID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'VID_ZN'
          end>
        Properties.ListSource = MainForm.vid_nachSource
        Options.Editing = False
        Width = 147
      end
      object cxGridDBTableView1SCHET: TcxGridDBColumn
        Caption = #1054#1089'.'#1088#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
        Options.Editing = False
      end
      object cxGridDBTableView1SCH_RAZN: TcxGridDBColumn
        Caption = #1050#1091#1073#1080' '#1083#1110#1095#1083#1100#1085#1080#1082
        DataBinding.FieldName = 'SCH_RAZN'
        Options.Editing = False
      end
      object cxGridDBTableView1NOR_RAZN: TcxGridDBColumn
        Caption = #1056#1086#1079#1088#1072#1093'.'#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'NOR_RAZN'
        Options.Editing = False
      end
      object cxGridDBTableView1SUMNACH: TcxGridDBColumn
        Caption = #1042#1089#1100#1086#1075#1086' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'SUMNACH'
        Options.Editing = False
      end
      object cxGridDBTableView1KUB_NOBALANS: TcxGridDBColumn
        Caption = #1053#1077#1073#1072#1083#1072#1085#1089
        DataBinding.FieldName = 'KUB_NOBALANS'
        Options.Editing = False
      end
      object cxGridDBTableView1PERERAH: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082' '#1085#1077#1073#1072#1083#1072#1085#1089#1091
        DataBinding.FieldName = 'PERERAH'
        Options.Editing = False
        Width = 74
      end
      object cxGridDBTableView1ORG: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1110#1079#1072#1094#1110#1103
        DataBinding.FieldName = 'ORG'
        Options.Editing = False
      end
      object cxGridDBTableView1NOTEWID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
        DataBinding.FieldName = 'NOTEWID'
        Options.Editing = False
        Width = 200
      end
      object cxGridDBTableView1NOTERAW: TcxGridDBColumn
        Caption = #1056#1086#1079#1096#1080#1092#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'NOTERAW'
        Options.Editing = False
        Width = 381
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 421
    Width = 473
    Height = 238
    Align = alLeft
    TabOrder = 3
    object cxGridDBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = hv_nowSource
      DataController.DetailKeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skSum
          Column = cxGridDBTableView2PERERAH
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView2FIO: TcxGridDBColumn
        Caption = #1055#1030#1055
        DataBinding.FieldName = 'FIO'
        Options.Editing = False
        Width = 188
      end
      object cxGridDBTableView2KV: TcxGridDBColumn
        Caption = #1050#1074'.'
        DataBinding.FieldName = 'KV'
        Options.Editing = False
        Width = 40
      end
      object cxGridDBTableView2SCHET: TcxGridDBColumn
        Caption = #1054#1089'.'#1088#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
        Options.Editing = False
        Width = 70
      end
      object cxGridDBTableView2PERERAH: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082' '#1085#1077#1073#1072#1083#1072#1085#1089#1091
        DataBinding.FieldName = 'PERERAH'
        Options.Editing = False
        Width = 131
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 388
    Width = 949
    Height = 33
    Align = alTop
    TabOrder = 4
    ExplicitTop = 382
    object Label2: TLabel
      Left = 8
      Top = 10
      Width = 195
      Height = 13
      Alignment = taCenter
      Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1082#1080' '#1085#1077#1073#1072#1083#1072#1085#1089#1091' '#1087#1086' '#1072#1073#1086#1085#1077#1085#1090#1072#1084
    end
    object Label3: TLabel
      Left = 488
      Top = 10
      Width = 332
      Height = 13
      Alignment = taCenter
      Caption = #1055#1077#1088#1110#1086#1076#1080' '#1073#1091#1076#1080#1085#1082#1091' '#1087#1086' '#1103#1082#1080#1084' '#1108' '#1087#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082' '#1110' '#1092#1072#1082#1090#1080#1095#1085#1077' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
    end
  end
  object hvpererah: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from HV_PRH'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into HV_PRH'
      
        '  (DATE_POK, DEL_NORM, FACT, FIO, GRP_RAZN, KL, KL_UL, KOLI_P, K' +
        'UB_ALL, '
      
        '   KUB_NOBALANS, KV, N_DOM, NOR_RAZN, NORM_BLICH, NOTERAW, NOTEW' +
        'ID, ORG, '
      
        '   PERE_RAZN, PERERAH, POD, SCH_RAZN, SCHET, UL, WID, WID_PREV, ' +
        'YEARMON, '
      '   YEARMONP)'
      'values'
      
        '  (:DATE_POK, :DEL_NORM, :FACT, :FIO, :GRP_RAZN, :KL, :KL_UL, :K' +
        'OLI_P, '
      
        '   :KUB_ALL, :KUB_NOBALANS, :KV, :N_DOM, :NOR_RAZN, :NORM_BLICH,' +
        ' :NOTERAW, '
      
        '   :NOTEWID, :ORG, :PERE_RAZN, :PERERAH, :POD, :SCH_RAZN, :SCHET' +
        ', :UL, '
      '   :WID, :WID_PREV, :YEARMON, :YEARMONP)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  YEARMONP,'
      '  FIO,'
      '  WID,'
      '  WID_PREV,'
      '  SCHET,'
      '  SCH_RAZN,'
      '  KOLI_P,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_RAZN,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  POD,'
      '  DATE_POK,'
      '  ORG,'
      '  DEL_NORM,'
      '  KL_UL,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PERERAH,'
      '  NOTEWID,'
      '  FACT,'
      '  NOTERAW'
      'from HV_PRH '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'select HV_PRH.*,(sch_razn+nor_razn) sumnach  from HV_PRH where y' +
        'earmon=:ym and ul=:ul and n_dom=:ndom order by yearmon,yearmonp,' +
        'kl')
    ModifySQL.Strings = (
      'update HV_PRH'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DEL_NORM = :DEL_NORM,'
      '  FACT = :FACT,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KOLI_P = :KOLI_P,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  N_DOM = :N_DOM,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NOTERAW = :NOTERAW,'
      '  NOTEWID = :NOTEWID,'
      '  ORG = :ORG,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  POD = :POD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCHET = :SCHET,'
      '  UL = :UL,'
      '  WID = :WID,'
      '  WID_PREV = :WID_PREV,'
      '  YEARMON = :YEARMON,'
      '  YEARMONP = :YEARMONP'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_HV_PER_ID'
    Left = 128
    Top = 56
    object hvpererahKL: TIntegerField
      FieldName = 'KL'
      Origin = '"HV_PRH"."KL"'
      Required = True
    end
    object hvpererahYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"HV_PRH"."YEARMON"'
    end
    object hvpererahYEARMONP: TIntegerField
      FieldName = 'YEARMONP'
      Origin = '"HV_PRH"."YEARMONP"'
    end
    object hvpererahFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"HV_PRH"."FIO"'
      Size = 35
    end
    object hvpererahWID: TSmallintField
      FieldName = 'WID'
      Origin = '"HV_PRH"."WID"'
    end
    object hvpererahWID_PREV: TIntegerField
      FieldName = 'WID_PREV'
      Origin = '"HV_PRH"."WID_PREV"'
    end
    object hvpererahSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"HV_PRH"."SCHET"'
      Size = 10
    end
    object hvpererahSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"HV_PRH"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"HV_PRH"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object hvpererahNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"HV_PRH"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"HV_PRH"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"HV_PRH"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahUL: TIBStringField
      FieldName = 'UL'
      Origin = '"HV_PRH"."UL"'
      Size = 70
    end
    object hvpererahN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"HV_PRH"."N_DOM"'
      Size = 10
    end
    object hvpererahKV: TIBStringField
      FieldName = 'KV'
      Origin = '"HV_PRH"."KV"'
      Size = 10
    end
    object hvpererahPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"HV_PRH"."POD"'
    end
    object hvpererahDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"HV_PRH"."DATE_POK"'
    end
    object hvpererahORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"HV_PRH"."ORG"'
    end
    object hvpererahDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"HV_PRH"."DEL_NORM"'
    end
    object hvpererahKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"HV_PRH"."KL_UL"'
    end
    object hvpererahNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"HV_PRH"."NORM_BLICH"'
    end
    object hvpererahKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"HV_PRH"."KUB_NOBALANS"'
    end
    object hvpererahKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"HV_PRH"."KUB_ALL"'
    end
    object hvpererahPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"HV_PRH"."PERERAH"'
    end
    object hvpererahNOTEWID: TIBStringField
      FieldName = 'NOTEWID'
      Origin = '"HV_PRH"."NOTEWID"'
      Size = 100
    end
    object hvpererahFACT: TIntegerField
      FieldName = 'FACT'
      Origin = '"HV_PRH"."FACT"'
    end
    object hvpererahNOTERAW: TIBStringField
      FieldName = 'NOTERAW'
      Origin = '"HV_PRH"."NOTERAW"'
      Size = 200
    end
    object hvpererahSUMNACH: TIBBCDField
      FieldName = 'SUMNACH'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object hvpererahSource: TDataSource
    DataSet = hvpererah
    Left = 128
    Top = 88
  end
  object grppererah: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from GRP_PER'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into GRP_PER'
      
        '  (KL, KL_UL, N_DOM, N_LICH, NOTE, NOTEWID, SCH_CUR, SCH_KUB, SC' +
        'H_NAS, '
      
        '   SCH_OLD, SCH_RAZN, SCH_SUMABON, SCH_UR, TIP, UL, YEARMON, YEA' +
        'RMONP)'
      'values'
      
        '  (:KL, :KL_UL, :N_DOM, :N_LICH, :NOTE, :NOTEWID, :SCH_CUR, :SCH' +
        '_KUB, :SCH_NAS, '
      
        '   :SCH_OLD, :SCH_RAZN, :SCH_SUMABON, :SCH_UR, :TIP, :UL, :YEARM' +
        'ON, :YEARMONP)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  YEARMONP,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  N_LICH,'
      '  TIP,'
      '  KL_UL,'
      '  UL,'
      '  N_DOM,'
      '  SCH_NAS,'
      '  SCH_UR,'
      '  SCH_SUMABON,'
      '  SCH_KUB,'
      '  NOTEWID,'
      '  NOTE'
      'from GRP_PER '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'select * from GRP_PER where yearmon=:ym and ul=:ul and n_dom=:nd' +
        'om order by yearmon,yearmonp,kl')
    ModifySQL.Strings = (
      'update GRP_PER'
      'set'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  N_DOM = :N_DOM,'
      '  N_LICH = :N_LICH,'
      '  NOTE = :NOTE,'
      '  NOTEWID = :NOTEWID,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_KUB = :SCH_KUB,'
      '  SCH_NAS = :SCH_NAS,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_SUMABON = :SCH_SUMABON,'
      '  SCH_UR = :SCH_UR,'
      '  TIP = :TIP,'
      '  UL = :UL,'
      '  YEARMON = :YEARMON,'
      '  YEARMONP = :YEARMONP'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_GRP_PER_ID'
    Left = 160
    Top = 56
    object grppererahKL: TIntegerField
      FieldName = 'KL'
      Origin = '"GRP_PER"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object grppererahYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"GRP_PER"."YEARMON"'
      Required = True
    end
    object grppererahYEARMONP: TIntegerField
      FieldName = 'YEARMONP'
      Origin = '"GRP_PER"."YEARMONP"'
    end
    object grppererahSCH_OLD: TFloatField
      FieldName = 'SCH_OLD'
      Origin = '"GRP_PER"."SCH_OLD"'
    end
    object grppererahSCH_CUR: TFloatField
      FieldName = 'SCH_CUR'
      Origin = '"GRP_PER"."SCH_CUR"'
    end
    object grppererahSCH_RAZN: TFloatField
      FieldName = 'SCH_RAZN'
      Origin = '"GRP_PER"."SCH_RAZN"'
    end
    object grppererahN_LICH: TIBStringField
      FieldName = 'N_LICH'
      Origin = '"GRP_PER"."N_LICH"'
    end
    object grppererahTIP: TIBStringField
      FieldName = 'TIP'
      Origin = '"GRP_PER"."TIP"'
    end
    object grppererahKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"GRP_PER"."KL_UL"'
    end
    object grppererahUL: TIBStringField
      FieldName = 'UL'
      Origin = '"GRP_PER"."UL"'
      Size = 70
    end
    object grppererahN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"GRP_PER"."N_DOM"'
      Size = 10
    end
    object grppererahSCH_NAS: TFloatField
      FieldName = 'SCH_NAS'
      Origin = '"GRP_PER"."SCH_NAS"'
    end
    object grppererahSCH_UR: TFloatField
      FieldName = 'SCH_UR'
      Origin = '"GRP_PER"."SCH_UR"'
    end
    object grppererahSCH_SUMABON: TFloatField
      FieldName = 'SCH_SUMABON'
      Origin = '"GRP_PER"."SCH_SUMABON"'
    end
    object grppererahSCH_KUB: TFloatField
      FieldName = 'SCH_KUB'
      Origin = '"GRP_PER"."SCH_KUB"'
    end
    object grppererahNOTEWID: TIBStringField
      FieldName = 'NOTEWID'
      Origin = '"GRP_PER"."NOTEWID"'
      Size = 100
    end
    object grppererahNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"GRP_PER"."NOTE"'
      Size = 100
    end
  end
  object grppererahSource: TDataSource
    DataSet = grppererah
    Left = 160
    Top = 88
  end
  object hv_now: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (DATE_POK, DATE_ZN, DEL_NORM, EDRPOU, FILTR, FIO, GRP_RAZN, ID' +
        '_KONTR, '
      
        '   KL, KL_UL, KLNTAR, KOLI_F, KOLI_P, KOLI_P0, KOLI_P1, KUB_ALL,' +
        ' KUB_MES, '
      
        '   KUB_NOBALANS, KV, LICH_POV, LICH_TO, LICH_YEARMON, N_DOM, N_S' +
        'CH, NOR_RAZN, '
      
        '   NORM_BLICH, NORMA, NOTE, OLD_NORM, ORG, PERE_DAY, PERE_RAZN, ' +
        'PERERAH, '
      
        '   PLOMB, PLOSCH_UR, POD, POMPA, PREV_NORM, R_NACH, R_NOBAL, RAS' +
        'CH_KUB, '
      
        '   RASCH_NOR, RASCH_NOTE, SCH_CUR, SCH_OLD, SCH_RAZN, SCH_RAZN2,' +
        ' SCHET, '
      
        '   TARIF_NAME, UL, VID_POK, VID_RN, WID, WID_PREV, YEARMON, ZN_L' +
        'ICH, ZNOLD_LICH)'
      'values'
      
        '  (:DATE_POK, :DATE_ZN, :DEL_NORM, :EDRPOU, :FILTR, :FIO, :GRP_R' +
        'AZN, :ID_KONTR, '
      
        '   :KL, :KL_UL, :KLNTAR, :KOLI_F, :KOLI_P, :KOLI_P0, :KOLI_P1, :' +
        'KUB_ALL, '
      
        '   :KUB_MES, :KUB_NOBALANS, :KV, :LICH_POV, :LICH_TO, :LICH_YEAR' +
        'MON, :N_DOM, '
      
        '   :N_SCH, :NOR_RAZN, :NORM_BLICH, :NORMA, :NOTE, :OLD_NORM, :OR' +
        'G, :PERE_DAY, '
      
        '   :PERE_RAZN, :PERERAH, :PLOMB, :PLOSCH_UR, :POD, :POMPA, :PREV' +
        '_NORM, '
      
        '   :R_NACH, :R_NOBAL, :RASCH_KUB, :RASCH_NOR, :RASCH_NOTE, :SCH_' +
        'CUR, :SCH_OLD, '
      
        '   :SCH_RAZN, :SCH_RAZN2, :SCHET, :TARIF_NAME, :UL, :VID_POK, :V' +
        'ID_RN, '
      '   :WID, :WID_PREV, :YEARMON, :ZN_LICH, :ZNOLD_LICH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  WID_PREV,'
      '  DOM,'
      '  KVART,'
      '  SCHET,'
      '  N_SCH,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  SCH_RAZN2,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN,'
      '  ID_KONTR,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  NOTE,'
      '  KOLI_F,'
      '  RASCH_KUB,'
      '  RASCH_NOR,'
      '  POD,'
      '  RASCH_NOTE,'
      '  DATE_POK,'
      '  VID_POK,'
      '  KUB_MES,'
      '  LICH_POV,'
      '  ORG,'
      '  VID_RN,'
      '  FILTR,'
      '  POMPA,'
      '  ZN_LICH,'
      '  ZNOLD_LICH,'
      '  DATE_ZN,'
      '  LICH_TO,'
      '  KLNTAR,'
      '  TARIF_NAME,'
      '  NORMA,'
      '  OLD_NORM,'
      '  DEL_NORM,'
      '  PREV_NORM,'
      '  LICH_YEARMON,'
      '  EDRPOU,'
      '  KL_UL,'
      '  R_NACH,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PLOSCH_UR,'
      '  PERERAH,'
      '  R_NOBAL'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'select * from H_VODA where pererah<>0 and yearmon=:ym and ul=:ul' +
        ' and n_dom=:ndom order by yearmon,schet')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_ZN = :DATE_ZN,'
      '  DEL_NORM = :DEL_NORM,'
      '  EDRPOU = :EDRPOU,'
      '  FILTR = :FILTR,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KLNTAR = :KLNTAR,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_MES = :KUB_MES,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  LICH_POV = :LICH_POV,'
      '  LICH_TO = :LICH_TO,'
      '  LICH_YEARMON = :LICH_YEARMON,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NORMA = :NORMA,'
      '  NOTE = :NOTE,'
      '  OLD_NORM = :OLD_NORM,'
      '  ORG = :ORG,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  PLOMB = :PLOMB,'
      '  PLOSCH_UR = :PLOSCH_UR,'
      '  POD = :POD,'
      '  POMPA = :POMPA,'
      '  PREV_NORM = :PREV_NORM,'
      '  R_NACH = :R_NACH,'
      '  R_NOBAL = :R_NOBAL,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_RAZN2 = :SCH_RAZN2,'
      '  SCHET = :SCHET,'
      '  TARIF_NAME = :TARIF_NAME,'
      '  UL = :UL,'
      '  VID_POK = :VID_POK,'
      '  VID_RN = :VID_RN,'
      '  WID = :WID,'
      '  WID_PREV = :WID_PREV,'
      '  YEARMON = :YEARMON,'
      '  ZN_LICH = :ZN_LICH,'
      '  ZNOLD_LICH = :ZNOLD_LICH'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    Left = 192
    Top = 56
    object hv_nowKL: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object hv_nowYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object hv_nowPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object hv_nowFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object hv_nowWID: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object hv_nowWID_PREV: TIntegerField
      FieldName = 'WID_PREV'
      Origin = '"H_VODA"."WID_PREV"'
    end
    object hv_nowDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hv_nowKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hv_nowSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object hv_nowN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object hv_nowSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object hv_nowSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object hv_nowSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hv_nowSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hv_nowKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object hv_nowKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object hv_nowKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object hv_nowNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hv_nowGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hv_nowPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object hv_nowPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hv_nowID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object hv_nowUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object hv_nowN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object hv_nowKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object hv_nowNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object hv_nowKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object hv_nowRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object hv_nowRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object hv_nowPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object hv_nowRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object hv_nowDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object hv_nowVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object hv_nowKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object hv_nowLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object hv_nowORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object hv_nowVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object hv_nowFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object hv_nowPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object hv_nowZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object hv_nowZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object hv_nowDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object hv_nowLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object hv_nowKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hv_nowTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hv_nowNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hv_nowOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hv_nowDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hv_nowPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hv_nowLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hv_nowEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hv_nowKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hv_nowR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hv_nowNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hv_nowKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hv_nowKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object hv_nowPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object hv_nowPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
    object hv_nowR_NOBAL: TIBStringField
      FieldName = 'R_NOBAL'
      Origin = '"H_VODA"."R_NOBAL"'
      Size = 100
    end
  end
  object hv_nowSource: TDataSource
    DataSet = hv_now
    Left = 192
    Top = 88
  end
end
