object Form1: TForm1
  Left = 202
  Top = 114
  Caption = 'Form1'
  ClientHeight = 358
  ClientWidth = 559
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
  object DBGrid1: TDBGrid
    Left = 264
    Top = 152
    Width = 320
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 48
    Width = 75
    Height = 25
    Caption = 'exec'
    TabOrder = 2
    OnClick = Button2Click
  end
  object cxProgressBar1: TcxProgressBar
    Left = 16
    Top = 336
    Properties.PeakValue = 50.000000000000000000
    TabOrder = 3
    Width = 649
  end
  object cxProgressBar2: TcxProgressBar
    Left = 16
    Top = 368
    TabOrder = 4
    Width = 649
  end
  object Button3: TButton
    Left = 456
    Top = 16
    Width = 75
    Height = 25
    Caption = 'ImKartPokaz'
    TabOrder = 5
    OnClick = Button3Click
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
    Left = 136
    Top = 176
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
    Left = 64
    Top = 96
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = MainForm.IBDatabase
    Left = 104
    Top = 176
  end
  object qry: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = IBTransaction1
    Left = 136
    Top = 216
  end
end
