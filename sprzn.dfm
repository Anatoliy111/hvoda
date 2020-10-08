object SPR_ZN: TSPR_ZN
  Left = 0
  Top = 0
  Caption = 'SPR_ZN'
  ClientHeight = 386
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 268
    Height = 25
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 251
    object cxButton8: TcxButton
      Left = 0
      Top = 0
      Width = 106
      Height = 25
      Caption = #1044#1086#1076#1072#1090#1080
      TabOrder = 0
      OnClick = cxButton8Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton1: TcxButton
      Left = 152
      Top = 0
      Width = 106
      Height = 25
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      TabOrder = 1
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object cxGrid6: TcxGrid
    Left = 0
    Top = 25
    Width = 268
    Height = 361
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 251
    object cxGridDBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = VIDZNSource
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridDBTableView3VID_ZN: TcxGridDBColumn
        Caption = #1042#1080#1076
        DataBinding.FieldName = 'VID_ZN'
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = cxGridDBTableView3
    end
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    Left = 176
    Top = 112
  end
  object VIDZNSource: TDataSource
    DataSet = IBVIDZN
    Left = 136
    Top = 144
  end
  object IBVIDZN: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from SPR_ZN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SPR_ZN'
      '  (ID, VID_OB, VID_ZN)'
      'values'
      '  (:ID, :VID_OB, :VID_ZN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  VID_ZN,'
      '  VID_OB'
      'from SPR_ZN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from SPR_ZN where vid_ob=:vid order by id')
    ModifySQL.Strings = (
      'update SPR_ZN'
      'set'
      '  ID = :ID,'
      '  VID_OB = :VID_OB,'
      '  VID_ZN = :VID_ZN'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SPR_ZN_ID'
    Left = 136
    Top = 112
    object IBVIDZNID: TIntegerField
      FieldName = 'ID'
      Origin = '"SPR_ZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBVIDZNVID_OB: TIntegerField
      FieldName = 'VID_OB'
      Origin = '"SPR_ZN"."VID_OB"'
    end
    object IBVIDZNVID_ZN: TIBStringField
      FieldName = 'VID_ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
  end
end
