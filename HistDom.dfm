object Formhistdom: TFormhistdom
  Left = 0
  Top = 0
  Caption = #1030#1089#1090#1086#1088#1110#1103' '#1087#1086' '#1073#1091#1076#1080#1085#1082#1091
  ClientHeight = 582
  ClientWidth = 1099
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
    Width = 1099
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 23
      Top = 8
      Width = 114
      Height = 25
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' '#1077#1082#1089#1077#1083#1100
      TabOrder = 0
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object cxGrid3: TcxGrid
    Left = 0
    Top = 41
    Width = 1099
    Height = 541
    Align = alClient
    TabOrder = 1
    object cxGrid3DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = histdomSource
      DataController.KeyFieldNames = 'YEARMON'
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
          Column = cxGrid3DBTableView1SCH_KUB
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1PREV_NORM
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1KUB_ALL
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1PERERAH
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1KUB_NOBALANS
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1DEL_NORM
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1NORM_BLICH
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1SUM_NACH
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1NOR_RAZN
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1SCH_RAZN
        end
        item
          Kind = skCount
          Column = cxGrid3DBTableView1UL
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1SCH_RAZNDOM
        end
        item
          Kind = skSum
          Column = cxGrid3DBTableView1SPIS
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid3DBTableView1YEARMON: TcxGridDBColumn
        Caption = #1055#1077#1088#1110#1086#1076
        DataBinding.FieldName = 'YEARMON'
        Width = 120
      end
      object cxGrid3DBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        Visible = False
        Options.Editing = False
        Width = 269
      end
      object cxGrid3DBTableView1N_DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'N_DOM'
        Visible = False
        Options.Editing = False
      end
      object cxGrid3DBTableView1SCH_KUB: TcxGridDBColumn
        Caption = #1041#1091#1076'. '#1083#1110#1095#1080#1083#1100#1085#1080#1082
        DataBinding.FieldName = 'SCH_KUB'
        Options.Editing = False
        Width = 80
      end
      object cxGrid3DBTableView1SUM_NACH: TcxGridDBColumn
        Caption = #1042#1089#1100#1086#1075#1086' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'SUM_SB'
        Options.Editing = False
        Width = 84
      end
      object cxGrid3DBTableView1SCH_RAZNDOM: TcxGridDBColumn
        Caption = #1056#1110#1079#1085#1080#1094#1103
        DataBinding.FieldName = 'SCH_RAZNDOM'
        Options.Editing = False
        Width = 93
      end
      object cxGrid3DBTableView1SCH_RAZN: TcxGridDBColumn
        Caption = #1060#1072#1082#1090'. '#1089#1087#1086#1078#1080#1074'.'
        DataBinding.FieldName = 'SCH_RAZN'
        Options.Editing = False
        Width = 99
      end
      object cxGrid3DBTableView1NORM_BLICH: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072' '#1073#1077#1079' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
        DataBinding.FieldName = 'NORM_BLICH'
        Options.Editing = False
        Width = 90
      end
      object cxGrid3DBTableView1NOR_RAZN: TcxGridDBColumn
        Caption = #1056#1086#1079#1088#1072#1093'. '#1089#1087#1086#1078#1080#1074'.'
        DataBinding.FieldName = 'NOR_RAZN'
        Options.Editing = False
      end
      object cxGrid3DBTableView1DEL_NORM: TcxGridDBColumn
        Caption = #1057#1087#1080#1089'.'#1088#1086#1079#1088#1072#1093'.'#1089#1087#1086#1078#1080#1074'.'
        DataBinding.FieldName = 'DEL_NORM'
        Options.Editing = False
        Width = 123
      end
      object cxGrid3DBTableView1KUB_NOBALANS: TcxGridDBColumn
        Caption = #1053#1077#1073#1072#1083#1072#1085#1089
        DataBinding.FieldName = 'KUB_NOBALANS'
        Options.Editing = False
        Width = 83
      end
      object cxGrid3DBTableView1PERERAH: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1088#1072#1093'. '#1085#1077#1073#1072#1083#1072#1085#1089#1091
        DataBinding.FieldName = 'PERERAH'
        Options.Editing = False
        Width = 96
      end
      object cxGrid3DBTableView1SPIS: TcxGridDBColumn
        Caption = #1057#1087#1080#1089#1072#1085#1085#1103
        DataBinding.FieldName = 'SPIS'
        Options.Editing = False
        Width = 94
      end
      object cxGrid3DBTableView1KUB_ALL: TcxGridDBColumn
        Caption = #1042#1089#1100#1086#1075#1086
        DataBinding.FieldName = 'KUB_ALL'
        Options.Editing = False
        Width = 100
      end
      object cxGrid3DBTableView1PREV_NORM: TcxGridDBColumn
        Caption = #1053#1072#1082#1086#1087#1080#1095'.'#1088#1086#1079#1088#1072#1093'.'#1089#1087#1086#1078#1080#1074'.'
        DataBinding.FieldName = 'PREV_NORM'
        Options.Editing = False
        Width = 98
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBTableView1
    end
  end
  object histdom: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    OnCalcFields = histdomCalcFields
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'Select '
      '  CT,'
      '  YEARMON,'
      '  UL,'
      '  N_DOM,'
      '  SCH_RAZN,'
      '  NOR_RAZN,'
      '  SUM_SR,'
      '  SUM_SB,'
      '  SUM_SRB,'
      '  NORM_BLICH,'
      '  DEL_NORM,'
      '  KUB_NOBALANS,'
      '  PERERAH,'
      '  SPIS,'
      '  KUB_ALL,'
      '  PREV_NORM,'
      '  SCH_KUB,'
      '  SCH_RAZNDOM'
      'from hvdom '
      'where'
      '  CT = :CT')
    SelectSQL.Strings = (
      
        'select first 24 * from hvdom where ul=:uul and n_dom=:ndom order' +
        ' by yearmon desc')
    ModifySQL.Strings = (
      '')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 248
    Top = 160
    object histdomCT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CT'
      Origin = '"HVDOM"."CT"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomYEARMON: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'YEARMON'
      Origin = '"HVDOM"."YEARMON"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomUL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'UL'
      Origin = '"HVDOM"."UL"'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object histdomN_DOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'N_DOM'
      Origin = '"HVDOM"."N_DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object histdomSCH_RAZN: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'SCH_RAZN'
      Origin = '"HVDOM"."SCH_RAZN"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object histdomNOR_RAZN: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'NOR_RAZN'
      Origin = '"HVDOM"."NOR_RAZN"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object histdomSUM_SR: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'SUM_SR'
      Origin = '"HVDOM"."SUM_SR"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object histdomSUM_SB: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUM_SB'
      Origin = '"HVDOM"."SUM_SB"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomSUM_SRB: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUM_SRB'
      Origin = '"HVDOM"."SUM_SRB"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomNORM_BLICH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'NORM_BLICH'
      Origin = '"HVDOM"."NORM_BLICH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomDEL_NORM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'DEL_NORM'
      Origin = '"HVDOM"."DEL_NORM"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomKUB_NOBALANS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'KUB_NOBALANS'
      Origin = '"HVDOM"."KUB_NOBALANS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomPERERAH: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PERERAH'
      Origin = '"HVDOM"."PERERAH"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomSPIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SPIS'
      Origin = '"HVDOM"."SPIS"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomKUB_ALL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'KUB_ALL'
      Origin = '"HVDOM"."KUB_ALL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomPREV_NORM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PREV_NORM'
      Origin = '"HVDOM"."PREV_NORM"'
      ProviderFlags = []
      ReadOnly = True
    end
    object histdomSCH_KUB: TFloatField
      FieldName = 'SCH_KUB'
      Origin = '"HVDOM"."SCH_KUB"'
    end
    object histdomSCH_RAZNDOM: TFloatField
      FieldName = 'SCH_RAZNDOM'
      Origin = '"HVDOM"."SCH_RAZNDOM"'
    end
    object histdomym: TStringField
      FieldKind = fkCalculated
      FieldName = 'ym'
      Calculated = True
    end
  end
  object histdomSource: TDataSource
    DataSet = histdom
    Left = 248
    Top = 192
  end
end
