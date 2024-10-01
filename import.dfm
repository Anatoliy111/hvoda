object Form1: TForm1
  Left = 202
  Top = 114
  Caption = 'Form1'
  ClientHeight = 397
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 152
    Top = 24
    Width = 18
    Height = 13
    Caption = 'kart'
  end
  object Button1: TButton
    Left = 8
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 31
    Width = 75
    Height = 25
    Caption = 'exec'
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object cxProgressBar2: TcxProgressBar
    Left = 16
    Top = 368
    TabOrder = 2
    Width = 649
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 111
    Width = 742
    Height = 286
    Align = alBottom
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = usersSource
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1USER_NAIM: TcxGridDBColumn
        Caption = #1055#1030#1055
        DataBinding.FieldName = 'USER_NAIM'
        Width = 178
      end
      object cxGrid1DBTableView1PW: TcxGridDBColumn
        Caption = #1055#1072#1088#1086#1083#1100
        DataBinding.FieldName = 'PW'
      end
      object cxGrid1DBTableView1ADM: TcxGridDBColumn
        Caption = #1040#1076#1084#1110#1085#1110#1089#1090#1088#1072#1090#1086#1088
        DataBinding.FieldName = 'ADM'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 82
      end
      object cxGrid1DBTableView1ADDLICH: TcxGridDBColumn
        Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
        DataBinding.FieldName = 'ADDLICH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxGrid1DBTableView1ADDPOKAZ: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079#1085#1080#1082#1080
        DataBinding.FieldName = 'ADDPOKAZ'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxGrid1DBTableView1ADDPLOMB: TcxGridDBColumn
        Caption = #1055#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'ADDPLOMB'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxGrid1DBTableView1ADDSPIS: TcxGridDBColumn
        Caption = #1057#1087#1080#1089#1072#1085#1085#1103
        DataBinding.FieldName = 'ADDSPIS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
      object cxGrid1DBTableView1ENDMES: TcxGridDBColumn
        Caption = #1047#1072#1082#1088#1080#1090#1090#1103' '#1084#1110#1089'.'
        DataBinding.FieldName = 'ENDMES'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 91
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Button4: TButton
    Left = 89
    Top = 0
    Width = 97
    Height = 25
    Caption = 'UpdateKartAbon'
    TabOrder = 4
    OnClick = Button3Click
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = #1044#1086#1076#1072#1090#1080
    TabOrder = 5
    OnClick = cxButton1Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object cxButton2: TcxButton
    Left = 89
    Top = 80
    Width = 75
    Height = 25
    Caption = #1042#1080#1076#1072#1083#1080#1090#1080
    TabOrder = 6
    OnClick = cxButton2Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object cxButton3: TcxButton
    Left = 192
    Top = 0
    Width = 121
    Height = 25
    Caption = #1055#1086#1074#1085#1080#1081' '#1088#1086#1079#1088#1072#1093#1091#1085#1086#1082
    TabOrder = 7
    OnClick = cxButton3Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object hvd: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransaction1
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
      
        '   SPIS, TARIF_NAME, UL, VID_POK, VID_RN, WID, WID_PREV, YEARMON' +
        ', ZN_LICH, '
      '   ZNOLD_LICH)'
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
      
        '   :SCH_RAZN, :SCH_RAZN2, :SCHET, :SPIS, :TARIF_NAME, :UL, :VID_' +
        'POK, :VID_RN, '
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
      '  SPIS,'
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
      'select * from H_VODA')
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
      '  SPIS = :SPIS,'
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
    GeneratorField.ApplyEvent = gamOnPost
    Left = 248
    Top = 16
    object hvdKL: TIntegerField
      FieldName = 'KL'
      Origin = 'H_VODA.KL'
      Required = True
    end
    object hvdPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = 'H_VODA.PLOMB'
    end
    object hvdSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = 'H_VODA.SCH_CUR'
      Precision = 18
      Size = 4
    end
    object hvdSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = 'H_VODA.SCH_OLD'
      Precision = 18
      Size = 4
    end
    object hvdSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = 'H_VODA.SCHET'
      Required = True
      Size = 10
    end
    object hvdYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = 'H_VODA.YEARMON'
      Required = True
    end
    object hvdWID: TSmallintField
      FieldName = 'WID'
      Origin = 'H_VODA.WID'
    end
    object hvdFIO: TIBStringField
      FieldName = 'FIO'
      Origin = 'H_VODA.FIO'
      Size = 35
    end
    object hvdKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = 'H_VODA.KOLI_P0'
    end
    object hvdKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = 'H_VODA.KOLI_P'
      Precision = 18
      Size = 4
    end
    object hvdKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = 'H_VODA.KOLI_P1'
    end
    object hvdKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object hvdDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object hvdSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hvdNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object hvdPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object hvdUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object hvdN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object hvdKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object hvdNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object hvdRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object hvdRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object hvdPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object hvdRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object hvdDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object hvdVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object hvdKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object hvdLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object hvdORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object hvdVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object hvdFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object hvdPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object hvdZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object hvdZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object hvdDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object hvdLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object hvdKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hvdTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hvdNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hvdOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hvdDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hvdPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hvdLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hvdEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hvdKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hvdR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hvdNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hvdKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hvdKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object hvdPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object hvdPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
    object hvdWID_PREV: TIntegerField
      FieldName = 'WID_PREV'
      Origin = '"H_VODA"."WID_PREV"'
    end
    object hvdSPIS: TFloatField
      FieldName = 'SPIS'
      Origin = '"H_VODA"."SPIS"'
    end
    object hvdR_NOBAL: TIBStringField
      FieldName = 'R_NOBAL'
      Origin = '"H_VODA"."R_NOBAL"'
      Size = 100
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'dbf|*.dbf'
    Left = 360
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = MainForm.IBDatabase
    Left = 288
    Top = 16
  end
  object qry: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    Left = 320
    Top = 16
  end
  object users: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from USERS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into USERS'
      
        '  (ADDLICH, ADDPLOMB, ADDPOKAZ, ADDSPIS, ADM, DEL, ENDMES, ID, P' +
        'W, USER_NAIM)'
      'values'
      
        '  (:ADDLICH, :ADDPLOMB, :ADDPOKAZ, :ADDSPIS, :ADM, :DEL, :ENDMES' +
        ', :ID, '
      '   :PW, :USER_NAIM)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  USER_NAIM,'
      '  PW,'
      '  ADM,'
      '  ADDLICH,'
      '  ADDPOKAZ,'
      '  ADDPLOMB,'
      '  ADDSPIS,'
      '  ENDMES,'
      '  DEL'
      'from USERS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * from USERS where del is null order by ID')
    ModifySQL.Strings = (
      'update USERS'
      'set'
      '  ADDLICH = :ADDLICH,'
      '  ADDPLOMB = :ADDPLOMB,'
      '  ADDPOKAZ = :ADDPOKAZ,'
      '  ADDSPIS = :ADDSPIS,'
      '  ADM = :ADM,'
      '  DEL = :DEL,'
      '  ENDMES = :ENDMES,'
      '  ID = :ID,'
      '  PW = :PW,'
      '  USER_NAIM = :USER_NAIM'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_USERS_ID'
    Left = 248
    Top = 50
    object usersID: TIntegerField
      FieldName = 'ID'
      Origin = '"USERS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object usersUSER_NAIM: TIBStringField
      FieldName = 'USER_NAIM'
      Origin = '"USERS"."USER_NAIM"'
      Required = True
      Size = 50
    end
    object usersPW: TIBStringField
      FieldName = 'PW'
      Origin = '"USERS"."PW"'
      Size = 10
    end
    object usersADDLICH: TIntegerField
      FieldName = 'ADDLICH'
      Origin = '"USERS"."ADDLICH"'
    end
    object usersADDPOKAZ: TIntegerField
      FieldName = 'ADDPOKAZ'
      Origin = '"USERS"."ADDPOKAZ"'
    end
    object usersADDPLOMB: TIntegerField
      FieldName = 'ADDPLOMB'
      Origin = '"USERS"."ADDPLOMB"'
    end
    object usersENDMES: TIntegerField
      FieldName = 'ENDMES'
      Origin = '"USERS"."ENDMES"'
    end
    object usersDEL: TIntegerField
      FieldName = 'DEL'
      Origin = '"USERS"."DEL"'
    end
    object usersADM: TIntegerField
      FieldName = 'ADM'
      Origin = '"USERS"."ADM"'
      OnChange = usersADMChange
    end
    object usersADDSPIS: TIntegerField
      FieldName = 'ADDSPIS'
      Origin = '"USERS"."ADDSPIS"'
    end
  end
  object usersSource: TDataSource
    DataSet = users
    Left = 280
    Top = 50
  end
end
