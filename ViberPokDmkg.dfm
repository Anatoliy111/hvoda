object FormViberPokDmkg: TFormViberPokDmkg
  Left = 0
  Top = 0
  Caption = 'FormViberPokDmkg'
  ClientHeight = 423
  ClientWidth = 564
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
    Width = 564
    Height = 49
    Align = alTop
    TabOrder = 0
    object cxButton8: TcxButton
      Left = 15
      Top = 13
      Width = 122
      Height = 25
      Caption = #1054#1073#1088#1086#1073#1080#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082#1080
      TabOrder = 0
      OnClick = cxButton8Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 157
      Top = 22
      DataBinding.DataField = 'ACCESSPOKAZN'
      DataBinding.DataSource = MainForm.viber_taskDataSource
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 359
      Top = 15
      DataBinding.DataField = 'ERR'
      DataBinding.DataSource = MainForm.viber_taskDataSource
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 157
      Top = 0
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1091#1089#1087#1110#1096#1085#1086' '#1086#1073#1088#1086#1073#1083#1077#1085#1080#1093
    end
    object cxLabel2: TcxLabel
      Left = 359
      Top = 0
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1086#1084#1080#1083#1086#1082
    end
  end
  object cxGrid6: TcxGrid
    Left = 0
    Top = 49
    Width = 564
    Height = 374
    Align = alClient
    TabOrder = 1
    object cxGridDBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGridDBTableView3CustomDrawCell
      DataController.DataSource = MainForm.site_pokaznDataSource
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridDBTableView3ID_SITE: TcxGridDBColumn
        DataBinding.FieldName = 'ID_SITE'
      end
      object cxGridDBTableView3VID: TcxGridDBColumn
        DataBinding.FieldName = 'VID'
        Width = 82
      end
      object cxGridDBTableView3DATA: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DATA'
      end
      object cxGridDBTableView3SCHET: TcxGridDBColumn
        Caption = #1056#1072#1093#1091#1085#1086#1082
        DataBinding.FieldName = 'SCHET'
      end
      object cxGridDBTableView3POKAZN: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079#1085#1080#1082
        DataBinding.FieldName = 'POKAZN'
      end
      object cxGridDBTableView3NAME: TcxGridDBColumn
        Caption = #1030#1084#39#1103
        DataBinding.FieldName = 'NAME'
        Width = 207
      end
      object cxGridDBTableView3STATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS'
      end
      object cxGridDBTableView3ERR: TcxGridDBColumn
        DataBinding.FieldName = 'ERR'
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
      
        'select first 1 *  from POKAZN where schet=:sch and date_zn is nu' +
        'll order by DATE_POK desc')
    Left = 480
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select *  from POKAZN where schet=:sch and vid_pok=:vid and poka' +
        'zn=:pok and date_pok=:date')
    Left = 512
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pok'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date'
        ParamType = ptUnknown
      end>
  end
end
