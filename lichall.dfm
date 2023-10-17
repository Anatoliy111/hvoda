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
  OnCreate = FormCreate
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
    object cxButton2: TcxButton
      Left = 151
      Top = 8
      Width = 218
      Height = 25
      Caption = #1047#1074#1110#1090' '#1087#1086' '#1087#1088#1086#1089#1090#1088#1086#1095#1077#1085#1086#1084#1091' '#1090#1077#1088#1084#1110#1085#1091' '#1087#1086#1074#1110#1088#1082#1080
      TabOrder = 1
      OnClick = cxButton2Click
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
      '                     select '
      '    lich.id,'
      '    lich.schet,'
      '    lich.tip,'
      '    lich.n_lich,'
      '    lich.data_vip,'
      '    lich.data_pov,'
      '    lich.data_stpov,'
      '    h_voda.fio,'
      '    h_voda.ul,'
      '    h_voda.n_dom,'
      '    h_voda.kv,'
      '    case when org=0 then '#39#1060#1110#1079'.'#1086#1089#1086#1073#1080#39' else '#39#1070#1088'.'#1086#1089#1086#1073#1080#39' end as abon'
      'from lich'
      
        'left join h_voda on (lich.schet = h_voda.schet and h_voda.yearmo' +
        'n=:yearmon)'
      'where lich.vid_zn is null '
      ''
      '')
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
    Top = 112
    object lichallID: TIntegerField
      FieldName = 'ID'
      Origin = '"LICH"."ID"'
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
    object lichallDATA_STPOV: TDateField
      FieldName = 'DATA_STPOV'
      Origin = '"LICH"."DATA_STPOV"'
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
    object lichallABON: TIBStringField
      FieldName = 'ABON'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
  end
  object lichallSource: TDataSource
    DataSet = lichall
    Left = 48
    Top = 144
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'lichprint'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'SCHET=SCHET'
      'TIP=TIP'
      'N_LICH=N_LICH'
      'DATA_VIP=DATA_VIP'
      'DATA_POV=DATA_POV'
      'DATA_STPOV=DATA_STPOV'
      'FIO=FIO'
      'UL=UL'
      'N_DOM=N_DOM'
      'KV=KV')
    DataSet = lichprint
    BCDToCurrency = False
    Left = 168
    Top = 112
  end
  object lichprint: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    BeforeOpen = lichallBeforeOpen
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
      '                     select '
      '    lich.id,'
      '    lich.schet,'
      '    lich.tip,'
      '    lich.n_lich,'
      '    lich.data_vip,'
      '    lich.data_pov,'
      '    lich.data_stpov,'
      '    h_voda.fio,'
      '    h_voda.ul,'
      '    h_voda.n_dom,'
      '    h_voda.kv,'
      '   case when org=0 then '#39#1060#1110#1079'.'#1086#1089#1086#1073#1080#39' else '#39#1070#1088'.'#1086#1089#1086#1073#1080#39' end as abon'
      'from lich'
      
        'left join h_voda on (lich.schet = h_voda.schet and h_voda.yearmo' +
        'n=:yearmon)'
      'where lich.vid_zn is null'
      ''
      '')
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
    Left = 88
    Top = 112
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = '"LICH"."ID"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'SCHET'
      Origin = '"LICH"."SCHET"'
      Size = 10
    end
    object IBStringField2: TIBStringField
      FieldName = 'TIP'
      Origin = '"LICH"."TIP"'
    end
    object IBStringField3: TIBStringField
      FieldName = 'N_LICH'
      Origin = '"LICH"."N_LICH"'
    end
    object DateField1: TDateField
      FieldName = 'DATA_VIP'
      Origin = '"LICH"."DATA_VIP"'
    end
    object DateField2: TDateField
      FieldName = 'DATA_POV'
      Origin = '"LICH"."DATA_POV"'
    end
    object DateField3: TDateField
      FieldName = 'DATA_STPOV'
      Origin = '"LICH"."DATA_STPOV"'
    end
    object IBStringField4: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object IBStringField5: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object IBStringField6: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object IBStringField7: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object lichprintABON: TIBStringField
      FieldName = 'ABON'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
  end
  object lichprintSource: TDataSource
    DataSet = lichprint
    Left = 88
    Top = 144
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44383.685569907400000000
    ReportOptions.LastChange = 44384.485045115740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'i: Integer;'
      '  '
      'procedure DialogPage1OnShow(Sender: TfrxComponent);'
      'begin'
      '  DateEdit1.Date:=now();'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'MasterData1.visible:=false;      '
      ''
      'if <lichprint."DATA_POV"><DateEdit1.Date then'
      'begin            '
      '   masterData1.visible:=true;'
      '   i:=i+1;       '
      'end;             '
      '    '
      ''
      'end;'
      ''
      'begin  '
      ''
      ''
      'end.')
    Left = 128
    Top = 104
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'lichprint'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 1043.150280000000000000
          Height = 31.496083330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#8212#1056#1030#1057#8211#1057#8218' '#1056#1111#1056#1109' '#1056#1111#1057#1026#1056#1109#1057#1027#1057#8218#1057#1026#1056#1109#1057#8225#1056#181#1056#1029#1056#1109#1056#1112#1057#1107' '#1057#8218#1056#181#1057#1026#1056#1112#1057#8211#1056#1029#1057#1107' '#1056#1111#1056#1109#1056#1030#1057#8211 +
              #1057#1026#1056#1108#1056#1105' '#1056#187#1057#8211#1057#8225#1056#1105#1056#187#1057#1034#1056#1029#1056#1105#1056#1108#1057#8211#1056#1030' '#1056#1029#1056#176' [DatetoStr(DateEdit1.Date)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'lichprint'
        RowCount = 0
        object lichallSCHET: TfrxMemoView
          Left = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SCHET'
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."SCHET"]')
          ParentFont = False
        end
        object lichallFIO: TfrxMemoView
          Left = 120.944960000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FIO'
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."FIO"]')
          ParentFont = False
        end
        object lichallUL: TfrxMemoView
          Left = 355.275820000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UL'
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."UL"]')
          ParentFont = False
        end
        object lichallN_DOM: TfrxMemoView
          Left = 650.079160000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'N_DOM'
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."N_DOM"]')
          ParentFont = False
        end
        object lichallKV: TfrxMemoView
          Left = 714.331170000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KV'
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."KV"]')
          ParentFont = False
        end
        object lichallTIP: TfrxMemoView
          Left = 763.465060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TIP'
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."TIP"]')
          ParentFont = False
        end
        object lichallN_LICH: TfrxMemoView
          Left = 842.835190000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'N_LICH'
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."N_LICH"]')
          ParentFont = False
        end
        object lichallDATA_POV: TfrxMemoView
          Left = 963.780150000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[lichprint."DATA_POV"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'lichprint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[i]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 98.267780000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#176#1057#8230#1057#1107#1056#1029#1056#1109#1056#1108)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#8224#1056#8216)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 355.275820000000000000
          Width = 294.803340000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1107#1056#187#1056#1105#1057#8224#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 650.079160000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8216#1057#1107#1056#1169#1056#1105#1056#1029#1056#1109#1056#1108)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 714.331170000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1030'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 763.465060000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1105#1056#1111' '#1056#187#1057#8211#1057#8225#1056#1105#1056#187#1057#1034#1056#1029#1056#1105#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 842.835190000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#187#1057#8211#1057#8225#1056#1105#1056#187#1057#1034#1056#1029#1056#1105#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 963.780150000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#1109#1056#1030#1057#8211#1057#1026#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111'/'#1056#1111)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 17.523275450000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Left = 997.795920000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Width = 102.734497270000000000
          Height = 17.523275450000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 109.606370000000000000
          Width = 941.790157270000000000
          Height = 17.523275450000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1113#1056#1109#1056#1112#1057#1107#1056#1029#1056#176#1056#187#1057#1034#1056#1029#1056#181' '#1056#1111#1057#8211#1056#1169#1056#1111#1057#1026#1056#1105#1057#8221#1056#1112#1057#1027#1057#8218#1056#1030#1056#1109' '#1042#171#1056#1113#1056#1109#1056#1109#1057#1026#1056#1169#1056#1105#1056#1029#1056#176 +
              #1057#8224#1057#8211#1056#8470#1056#1029#1056#1105#1056#8470' '#1057#8224#1056#181#1056#1029#1057#8218#1057#1026' '#1056#1111#1056#1109' '#1056#1109#1056#177#1057#1027#1056#187#1057#1107#1056#1110#1056#1109#1056#1030#1057#1107#1056#1030#1056#176#1056#1029#1056#1029#1057#1035' '#1056#1029#1056#176#1057#1027 +
              #1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#1039#1042#187)
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Height = 200.000000000000000000
      ClientHeight = 162.000000000000000000
      Left = 265.000000000000000000
      Top = 150.000000000000000000
      Width = 300.000000000000000000
      ClientWidth = 284.000000000000000000
      OnShow = 'DialogPage1OnShow'
      object DateEdit1: TfrxDateEditControl
        Left = 56.000000000000000000
        Top = 48.000000000000000000
        Width = 145.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Date = 44384.391556932900000000
        Time = 44384.391556932900000000
        WeekNumbers = False
      end
      object BitBtn1: TfrxBitBtnControl
        Left = 84.000000000000000000
        Top = 92.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        Kind = bkOK
        Caption = 'OK'
        ModalResult = 1
        NumGlyphs = 2
        OnClick = 'BitBtn1OnClick'
      end
    end
  end
end
