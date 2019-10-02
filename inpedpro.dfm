object FormInplaces: TFormInplaces
  Left = 268
  Top = 234
  Caption = 'FormInplaces'
  ClientHeight = 299
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
  object pnlEdProp: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 201
    Color = 15780517
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 8
      Top = 8
      Width = 233
      Height = 153
      TabOrder = 0
      object DBGrid1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = propSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object DBGrid1DD: TcxGridDBColumn
          DataBinding.FieldName = 'DD'
          Options.Filtering = False
          Width = 89
        end
        object DBGrid1SCHET: TcxGridDBColumn
          DataBinding.FieldName = 'SCHET'
          Visible = False
        end
        object DBGrid1KL: TcxGridDBColumn
          DataBinding.FieldName = 'KL'
          Visible = False
        end
        object DBGrid1KOLI: TcxGridDBColumn
          DataBinding.FieldName = 'KOLI'
          Options.Filtering = False
          Width = 112
        end
        object DBGrid1YEARMON: TcxGridDBColumn
          DataBinding.FieldName = 'YEARMON'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = DBGrid1
      end
    end
    object cxButton1: TcxButton
      Left = 8
      Top = 168
      Width = 75
      Height = 25
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 88
      Top = 168
      Width = 75
      Height = 25
      Caption = #1042#1110#1076#1084#1110#1085#1072
      ModalResult = 2
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  object cxButton3: TcxButton
    Left = 368
    Top = 48
    Width = 75
    Height = 25
    Caption = 'cxButton3'
    TabOrder = 1
  end
  object prop: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = propBeforeOpen
    OnNewRecord = propNewRecord
    DeleteSQL.Strings = (
      'delete from PROP'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into PROP'
      '  (KL, KOLI, SCHET, YEARMON, DD)'
      'values'
      '  (:KL, :KOLI, :SCHET, :YEARMON, :DD)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  SCHET,'
      '  DD,'
      '  KOLI'
      'from PROP '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select KL, KOLI, SCHET, YEARMON, DD from PROP'
      'where schet=:schet and yearmon=:yearmon;')
    ModifySQL.Strings = (
      'update PROP'
      'set'
      '  KL = :KL,'
      '  KOLI = :KOLI,'
      '  SCHET = :SCHET,'
      '  YEARMON = :YEARMON,'
      '  DD = :DD'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PROP_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 24
    Top = 48
    object propKL: TIntegerField
      FieldName = 'KL'
      Origin = 'PROP.KL'
      Required = True
    end
    object propKOLI: TSmallintField
      DisplayLabel = #1050#1110#1083#1100#1082#1110#1089#1090#1100' +,-'
      FieldName = 'KOLI'
      Origin = 'PROP.KOLI'
      OnSetText = propKOLISetText
    end
    object propYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = 'PROP.YEARMON'
      Required = True
    end
    object propDD: TSmallintField
      DisplayLabel = #1044#1077#1085#1100
      FieldName = 'DD'
      Origin = 'PROP.DD'
      OnSetText = propDDSetText
    end
    object propSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = 'PROP.SCHET'
      Required = True
      Size = 10
    end
  end
  object propSource: TDataSource
    DataSet = prop
    Left = 24
    Top = 80
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = MainForm.IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 64
    Top = 48
  end
end
