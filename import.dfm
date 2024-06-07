object Form1: TForm1
  Left = 202
  Top = 114
  Caption = 'Form1'
  ClientHeight = 358
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 31
    Width = 75
    Height = 25
    Caption = 'exec'
    TabOrder = 1
    OnClick = Button2Click
  end
  object cxProgressBar2: TcxProgressBar
    Left = 16
    Top = 368
    TabOrder = 2
    Width = 649
  end
  object Button3: TButton
    Left = 456
    Top = 8
    Width = 97
    Height = 25
    Caption = 'UpdateKartAbon'
    TabOrder = 3
    OnClick = Button3Click
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 93
    Width = 648
    Height = 265
    Align = alBottom
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MainForm.usersSource
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
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
      object cxGrid1DBTableView1ADDLICH: TcxGridDBColumn
        Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
        DataBinding.FieldName = 'ADDLICH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueGrayed = 0
        Properties.ValueUnchecked = '0'
      end
      object cxGrid1DBTableView1ADDPOKAZ: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079#1085#1080#1082#1080
        DataBinding.FieldName = 'ADDPOKAZ'
      end
      object cxGrid1DBTableView1ADDPLOMB: TcxGridDBColumn
        Caption = #1055#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'ADDPLOMB'
      end
      object cxGrid1DBTableView1ENDMES: TcxGridDBColumn
        Caption = #1047#1072#1082#1088#1080#1090#1090#1103' '#1084#1110#1089'.'
        DataBinding.FieldName = 'ENDMES'
        Width = 91
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
      
        '  (FIO, KL, KOLI_F, KOLI_P, KOLI_P0, KOLI_P1, PLOMB, SCH_CUR, SC' +
        'H_OLD, '
      '   SCHET, WID, YEARMON)'
      'values'
      
        '  (:FIO, :KL, :KOLI_F, :KOLI_P, :KOLI_P0, :KOLI_P1, :PLOMB, :SCH' +
        '_CUR, :SCH_OLD, '
      '   :SCHET, :WID, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  KOLI_P0,'
      '  KOLI_P,'
      '  KOLI_F,'
      '  KOLI_P1,'
      '  PLOMB,'
      '  SCH_CUR,'
      '  SCH_OLD,'
      '  SCHET,'
      '  YEARMON,'
      '  WID,'
      '  FIO'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'select KL, KOLI_P0, koli_p,koli_f,koli_p1,PLOMB, SCH_CUR, SCH_OL' +
        'D, SCHET, YEARMON, WID, FIO from H_VODA')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  FIO = :FIO,'
      '  KL = :KL,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  PLOMB = :PLOMB,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCHET = :SCHET,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON'
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
    Transaction = IBTransaction1
    Left = 320
    Top = 16
  end
end
