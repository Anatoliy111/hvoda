object FormViberSendOrders: TFormViberSendOrders
  Left = 0
  Top = 0
  Caption = 'FormViberSendOrders'
  ClientHeight = 435
  ClientWidth = 607
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
    Width = 607
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 536
    object cxButton8: TcxButton
      Left = 15
      Top = 13
      Width = 122
      Height = 25
      Caption = #1044#1086#1076#1072#1090#1080' '#1087#1086#1074#1110#1076#1086#1084#1083#1077#1085#1085#1103
      TabOrder = 0
      OnClick = cxButton8Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton1: TcxButton
      Left = 151
      Top = 13
      Width = 146
      Height = 25
      Caption = #1050#1086#1087#1110#1102#1074#1072#1090#1080' '#1087#1086#1074#1110#1076#1086#1084#1083#1077#1085#1085#1103
      TabOrder = 1
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton2: TcxButton
      Left = 311
      Top = 13
      Width = 146
      Height = 25
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1087#1086#1074#1110#1076#1086#1084#1083#1077#1085#1085#1103
      TabOrder = 2
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object cxGrid6: TcxGrid
    Left = 0
    Top = 49
    Width = 607
    Height = 386
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 536
    object cxGridDBTableView3: TcxGridDBTableView
      OnDblClick = cxGridDBTableView3DblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MainForm.viber_sendDataSource
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
        Width = 25
      end
      object cxGridDBTableView3DATA: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DATA'
      end
      object cxGridDBTableView3DATE_SEND: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1110#1076#1087#1088#1072#1074#1082#1080
        DataBinding.FieldName = 'DATE_SEND'
      end
      object cxGridDBTableView3KOLSEND: TcxGridDBColumn
        Caption = #1050#1110#1083#1100'. '#1074#1110#1076#1087#1088#1072#1074#1083'.'
        DataBinding.FieldName = 'KOLSEND'
      end
      object cxGridDBTableView3SMALLTEXT: TcxGridDBColumn
        Caption = #1050#1086#1088#1086#1090#1082'. '#1090#1077#1082#1089#1090
        DataBinding.FieldName = 'SMALLTEXT'
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
      '')
    Left = 472
    Top = 8
  end
end
