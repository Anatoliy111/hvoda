object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1030#1084#1087#1086#1088#1090
  ClientHeight = 194
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 144
    Top = 69
    Width = 138
    Height = 13
    Caption = '_______________________'
  end
  object cxProgressBar1: TcxProgressBar
    Left = 48
    Top = 88
    TabOrder = 0
    Width = 345
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 24
    Top = 8
  end
  object IBPokazn: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from POKAZN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into POKAZN'
      
        '  (DATE_POK, DATE_ZN, ID, ID_LICH, N_DOC, POKAZN, SCHET, VID_POK' +
        ', VID_ZN, '
      '   YEARMON)'
      'values'
      
        '  (:DATE_POK, :DATE_ZN, :ID, :ID_LICH, :N_DOC, :POKAZN, :SCHET, ' +
        ':VID_POK, '
      '   :VID_ZN, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  YEARMON,'
      '  POKAZN,'
      '  DATE_POK,'
      '  VID_POK,'
      '  N_DOC,'
      '  DATE_ZN,'
      '  VID_ZN,'
      '  SCHET,'
      '  ID_LICH'
      'from POKAZN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from POKAZN'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update POKAZN'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_ZN = :DATE_ZN,'
      '  ID = :ID,'
      '  ID_LICH = :ID_LICH,'
      '  N_DOC = :N_DOC,'
      '  POKAZN = :POKAZN,'
      '  SCHET = :SCHET,'
      '  VID_POK = :VID_POK,'
      '  VID_ZN = :VID_ZN,'
      '  YEARMON = :YEARMON'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_POKAZN_ID'
    Left = 88
    object IBPokaznID: TIntegerField
      FieldName = 'ID'
      Origin = '"POKAZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBPokaznYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"POKAZN"."YEARMON"'
    end
    object IBPokaznPOKAZN: TIBBCDField
      FieldName = 'POKAZN'
      Origin = '"POKAZN"."POKAZN"'
      Precision = 18
      Size = 4
    end
    object IBPokaznDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"POKAZN"."DATE_POK"'
    end
    object IBPokaznVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"POKAZN"."VID_POK"'
    end
    object IBPokaznN_DOC: TIntegerField
      FieldName = 'N_DOC'
      Origin = '"POKAZN"."N_DOC"'
    end
    object IBPokaznDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"POKAZN"."DATE_ZN"'
    end
    object IBPokaznVID_ZN: TIntegerField
      FieldName = 'VID_ZN'
      Origin = '"POKAZN"."VID_ZN"'
    end
    object IBPokaznSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"POKAZN"."SCHET"'
      Size = 10
    end
    object IBPokaznID_LICH: TIntegerField
      FieldName = 'ID_LICH'
      Origin = '"POKAZN"."ID_LICH"'
    end
  end
  object DSPokazn: TDataSource
    DataSet = IBPokazn
    Left = 88
    Top = 32
  end
end
