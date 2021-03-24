object FormViberTask: TFormViberTask
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1087#1086#1082#1072#1079#1085#1080#1082#1110#1074' Viber'
  ClientHeight = 469
  ClientWidth = 531
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
    Width = 531
    Height = 49
    Align = alTop
    TabOrder = 0
    object cxButton8: TcxButton
      Left = 15
      Top = 13
      Width = 146
      Height = 25
      Caption = 'Viber '#1087#1088#1080#1081#1085#1103#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082#1080
      TabOrder = 0
      OnClick = cxButton8Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxLabel1: TcxLabel
      Left = 224
      Top = 16
      Caption = 'cxLabel1'
    end
  end
  object cxGrid6: TcxGrid
    Left = 0
    Top = 49
    Width = 531
    Height = 420
    Align = alClient
    TabOrder = 1
    object cxGridDBTableView3: TcxGridDBTableView
      OnDblClick = cxGridDBTableView3DblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MainForm.viber_taskDataSource
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridDBTableView3ID: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'ID'
      end
      object cxGridDBTableView3DATA: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DATA'
      end
      object cxGridDBTableView3ALLPOKAZN: TcxGridDBColumn
        Caption = #1042#1089#1100#1086#1075#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1110#1074
        DataBinding.FieldName = 'ALLPOKAZN'
        Width = 101
      end
      object cxGridDBTableView3ACCESSPOKAZN: TcxGridDBColumn
        Caption = #1055#1088#1080#1081#1085#1103#1090#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1110#1074
        DataBinding.FieldName = 'ACCESSPOKAZN'
        Width = 116
      end
      object cxGridDBTableView3ERR: TcxGridDBColumn
        Caption = #1055#1086#1084#1080#1083#1082#1086#1074#1080#1093' '#1087#1086#1082#1072#1079#1085#1080#1082#1110#1074
        DataBinding.FieldName = 'ERR'
        Width = 123
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = cxGridDBTableView3
    end
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      'select first 1 ID_VIBER from VIBER_POKAZN order by ID_VIBER desc')
    Left = 400
    Top = 8
  end
end
