object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 180
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    AlignWithMargins = True
    Left = 75
    Top = 69
    Width = 138
    Height = 13
    Alignment = taCenter
    Caption = '_______________________'
    Layout = tlCenter
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label3: TLabel
    Left = 8
    Top = 27
    Width = 31
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Label4: TLabel
    Left = 75
    Top = 115
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object cxProgressBar1: TcxProgressBar
    Left = 75
    Top = 88
    TabOrder = 0
    Width = 345
  end
  object cxButton1: TcxButton
    Left = 360
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    Visible = False
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 216
    Top = 147
    Width = 123
    Height = 25
    Caption = #1047#1072#1082#1088#1080#1090#1080' '#1087#1088#1086#1075#1088#1072#1084#1091
    TabOrder = 2
    Visible = False
    OnClick = cxButton1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 407
    Top = 24
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
    Left = 327
    Top = 16
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
    Left = 287
    Top = 16
  end
  object IBQuery1: TIBQuery
    SQL.Strings = (
      
        'SELECT h_voda.* , sp1.vid_zn from H_VODA left join spr_zn sp1 on' +
        ' sp1.id=h_voda.vid_rn where h_voda.yearmon=:yearmon ORDER BY h_v' +
        'oda.vid_rn')
    Left = 65455
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'yearmon'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    Left = 232
    Top = 16
  end
end
