object FormAddkart: TFormAddkart
  Left = 0
  Top = 0
  Caption = #1044#1086#1076#1072#1090#1080
  ClientHeight = 339
  ClientWidth = 438
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 438
    Height = 304
    ActivePage = cxTabSheet3
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 304
    ClientRectRight = 438
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 0
      object cxTextEdit1: TcxTextEdit
        Left = 24
        Top = 32
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 169
      end
      object cxLabel1: TcxLabel
        Left = 24
        Top = 16
        Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
      end
      object cxLabel2: TcxLabel
        Left = 24
        Top = 56
        Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      end
      object cxTextEdit2: TcxTextEdit
        Left = 24
        Top = 72
        Style.Color = cl3DLight
        TabOrder = 3
        Width = 169
      end
      object cxLabel3: TcxLabel
        Left = 24
        Top = 96
        Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      end
      object cxTextEdit3: TcxTextEdit
        Left = 24
        Top = 112
        Style.Color = cl3DLight
        TabOrder = 5
        Width = 169
      end
      object cxLabel4: TcxLabel
        Left = 24
        Top = 237
        Caption = #1055#1088#1080#1084#1110#1090#1082#1072
      end
      object cxTextEdit4: TcxTextEdit
        Left = 24
        Top = 253
        TabOrder = 7
        Width = 401
      end
      object cxLabel5: TcxLabel
        Left = 24
        Top = 139
        Caption = #1044#1072#1090#1072' '#1074#1080#1075#1086#1090#1086#1074#1083#1077#1085#1085#1103
      end
      object cxDateEdit1: TcxDateEdit
        Left = 24
        Top = 162
        Properties.ShowTime = False
        Style.Color = cl3DLight
        TabOrder = 9
        Width = 121
      end
      object cxLabel6: TcxLabel
        Left = 24
        Top = 187
        Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
      end
      object cxDateEdit2: TcxDateEdit
        Left = 24
        Top = 210
        Properties.ShowTime = False
        Properties.OnChange = cxDateEdit2PropertiesChange
        Style.Color = cl3DLight
        TabOrder = 11
        Width = 121
      end
      object cxLabel7: TcxLabel
        Left = 151
        Top = 187
        Caption = #1044#1072#1090#1072' '#1087#1086#1074#1110#1088#1082#1080
      end
      object cxDateEdit3: TcxDateEdit
        Left = 151
        Top = 210
        Enabled = False
        Properties.ReadOnly = True
        Properties.ShowTime = False
        Style.Color = clWindow
        TabOrder = 13
        Width = 121
      end
      object cxLabel17: TcxLabel
        Left = 199
        Top = 33
        Caption = 'fio'
      end
      object cxTextEdit13: TcxTextEdit
        Left = 278
        Top = 210
        Style.Color = cl3DLight
        TabOrder = 15
        Width = 121
      end
      object cxLabel22: TcxLabel
        Left = 278
        Top = 187
        Caption = #1053#1086#1074#1080#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1083#1086#1084#1073#1080
      ImageIndex = 1
      object cxLabel8: TcxLabel
        Left = 24
        Top = 16
        Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
      end
      object cxTextEdit5: TcxTextEdit
        Left = 24
        Top = 32
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 169
      end
      object cxLabel9: TcxLabel
        Left = 24
        Top = 56
        Caption = #1042#1080#1076' '#1087#1083#1086#1084#1073#1080
      end
      object cxLabel10: TcxLabel
        Left = 24
        Top = 96
        Caption = #8470' '#1087#1083#1086#1084#1073#1080
      end
      object cxTextEdit7: TcxTextEdit
        Left = 24
        Top = 112
        Style.Color = cl3DLight
        TabOrder = 4
        Width = 169
      end
      object cxLabel11: TcxLabel
        Left = 24
        Top = 139
        Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
      end
      object cxDateEdit4: TcxDateEdit
        Left = 24
        Top = 162
        Properties.ShowTime = False
        Style.Color = cl3DLight
        TabOrder = 6
        Width = 121
      end
      object cxLabel12: TcxLabel
        Left = 24
        Top = 237
        Caption = #1055#1088#1080#1084#1110#1090#1082#1072
      end
      object cxTextEdit8: TcxTextEdit
        Left = 24
        Top = 253
        TabOrder = 8
        Width = 401
      end
      object cxLabel16: TcxLabel
        Left = 199
        Top = 33
        Caption = 'fio'
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 24
        Top = 76
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'VID_ZN'
          end>
        Properties.ListSource = VIDZNSource
        Style.Color = cl3DLight
        TabOrder = 10
        Width = 191
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1086#1082#1072#1079#1085#1080#1082#1080
      ImageIndex = 2
      object cxLabel13: TcxLabel
        Left = 24
        Top = 59
        Caption = #1044#1072#1090#1072' '#1086#1089#1090#1072#1085#1085#1100#1086#1075#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      end
      object cxDateEdit5: TcxDateEdit
        Left = 24
        Top = 82
        Properties.ReadOnly = True
        Properties.SaveTime = False
        TabOrder = 1
        Width = 121
      end
      object cxLabel14: TcxLabel
        Left = 24
        Top = 16
        Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
      end
      object cxTextEdit9: TcxTextEdit
        Left = 24
        Top = 32
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 169
      end
      object cxLabel15: TcxLabel
        Left = 199
        Top = 33
        Caption = 'fio'
      end
      object cxLabel18: TcxLabel
        Left = 199
        Top = 109
        Caption = #1053#1086#1074#1080#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxLabel19: TcxLabel
        Left = 199
        Top = 59
        Caption = #1054#1089#1090#1072#1085#1085#1110#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxLabel20: TcxLabel
        Left = 24
        Top = 109
        Caption = #1044#1072#1090#1072' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      end
      object cxDateEdit6: TcxDateEdit
        Left = 24
        Top = 132
        Properties.SaveTime = False
        Style.Color = cl3DLight
        TabOrder = 8
        Width = 121
      end
      object cxLabel21: TcxLabel
        Left = 199
        Top = 155
        Caption = #1056#1110#1079#1085#1080#1094#1103
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 24
        Top = 178
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'VID_ZN'
          end>
        Properties.ListSource = VIDZNSource
        Style.Color = cl3DLight
        TabOrder = 10
        Width = 169
      end
      object cxLabel23: TcxLabel
        Left = 24
        Top = 158
        Caption = #1042#1080#1076' '#1085#1072#1076#1093#1086#1076#1078#1077#1085#1085#1103' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      end
      object cxCalcEdit2: TcxCalcEdit
        Left = 199
        Top = 82
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        TabOrder = 12
        Width = 121
      end
      object cxCalcEdit3: TcxCalcEdit
        Left = 199
        Top = 178
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        Properties.OnChange = cxCalcEdit1PropertiesChange
        Style.Color = cl3DLight
        TabOrder = 13
        Width = 121
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 304
    Width = 438
    Height = 35
    Align = alBottom
    TabOrder = 1
    object Label2: TLabel
      Left = 15
      Top = 12
      Width = 3
      Height = 13
      Alignment = taCenter
    end
    object cxButton3: TcxButton
      Left = 207
      Top = 6
      Width = 106
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = cxButton3Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton1: TcxButton
      Left = 319
      Top = 6
      Width = 106
      Height = 25
      Caption = #1042#1110#1076#1084#1110#1085#1072
      TabOrder = 1
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object cxCalcEdit1: TcxCalcEdit
    Left = 199
    Top = 152
    EditValue = 0.000000000000000000
    Properties.OnChange = cxCalcEdit1PropertiesChange
    Style.Color = cl3DLight
    TabOrder = 2
    Width = 121
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
      'select * from SPR_ZN where vid_ob=:4')
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
    Left = 376
    Top = 120
    object IBVIDZNID: TIntegerField
      FieldName = 'ID'
      Origin = '"SPR_ZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBVIDZNVID_ZN: TIBStringField
      FieldName = 'VID_ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
    end
    object IBVIDZNVID_OB: TIntegerField
      FieldName = 'VID_OB'
      Origin = '"SPR_ZN"."VID_OB"'
    end
  end
  object VIDZNSource: TDataSource
    DataSet = IBVIDZN
    Left = 376
    Top = 152
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select first 1 *  from POKAZN where schet=:sch and date_zn is nu' +
        'll order by DATE_POK desc')
    Left = 376
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
  end
end
