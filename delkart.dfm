object FormDelkart: TFormDelkart
  Left = 0
  Top = 0
  Caption = #1042#1080#1076#1072#1083#1080#1090#1080
  ClientHeight = 427
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 492
    Height = 392
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 392
    ClientRectRight = 492
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 0
      object cxTextEdit1: TcxTextEdit
        Left = 24
        Top = 123
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 169
      end
      object cxLabel1: TcxLabel
        Left = 24
        Top = 26
        Caption = #1055#1077#1088#1077#1076' '#1079#1085#1103#1090#1090#1103#1084' '#1086#1073#1077#1088#1110#1090#1100' '#1087#1088#1080#1095#1080#1085#1091'.'
      end
      object cxLabel2: TcxLabel
        Left = 24
        Top = 147
        Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      end
      object cxTextEdit2: TcxTextEdit
        Left = 24
        Top = 163
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 169
      end
      object cxLabel3: TcxLabel
        Left = 24
        Top = 187
        Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      end
      object cxTextEdit3: TcxTextEdit
        Left = 24
        Top = 203
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 169
      end
      object cxLabel5: TcxLabel
        Left = 240
        Top = 54
        Caption = #1044#1072#1090#1072' '#1079#1085#1103#1090#1090#1103
      end
      object cxDateEdit1: TcxDateEdit
        Left = 240
        Top = 72
        Properties.ArrowsForYear = False
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.YearsInMonthList = False
        Style.Color = clMoneyGreen
        TabOrder = 7
        Width = 121
      end
      object cxLabel6: TcxLabel
        Left = 24
        Top = 236
        Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
      end
      object cxDateEdit2: TcxDateEdit
        Left = 24
        Top = 253
        Properties.ReadOnly = True
        TabOrder = 9
        Width = 121
      end
      object cxLabel17: TcxLabel
        Left = 151
        Top = 105
        Caption = 'fio'
      end
      object cxLabel4: TcxLabel
        Left = 101
        Top = 3
        Caption = #1042#1080' '#1076#1110#1081#1089#1085#1086' '#1073#1072#1078#1072#1108#1090#1077' '#1079#1085#1103#1090#1080' '#1083#1110#1095#1080#1083#1100#1085#1080#1082'? '
      end
      object cxLabel7: TcxLabel
        Left = 24
        Top = 105
        Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
      end
      object cxLabel22: TcxLabel
        Left = 24
        Top = 54
        Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 24
        Top = 72
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'VID_ZN'
          end>
        Properties.ListSource = VIDZNSource
        Style.Color = clMoneyGreen
        TabOrder = 14
        Width = 191
      end
      object cxCheckBox1: TcxCheckBox
        Left = 232
        Top = 119
        Caption = #1044#1086#1076#1072#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082
        Properties.OnChange = cxCheckBox1PropertiesChange
        TabOrder = 15
        Width = 201
      end
      object cxLabel21: TcxLabel
        Left = 232
        Top = 146
        Caption = #1076#1086#1076#1072#1108#1090#1100#1089#1103' '#1087#1088#1080' '#1079#1085#1103#1090#1090#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
        Properties.WordWrap = True
        Width = 177
      end
      object cxLabel30: TcxLabel
        Left = 199
        Top = 184
        Caption = #1044#1072#1090#1072' '#1086#1089#1090#1072#1085#1085#1100#1086#1075#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      end
      object cxDateEdit8: TcxDateEdit
        Left = 225
        Top = 203
        Properties.ReadOnly = True
        Properties.SaveTime = False
        TabOrder = 18
        Width = 121
      end
      object cxLabel31: TcxLabel
        Left = 352
        Top = 184
        Caption = #1054#1089#1090#1072#1085#1085#1110#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxCalcEdit5: TcxCalcEdit
        Left = 352
        Top = 203
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        TabOrder = 20
        Width = 121
      end
      object cxLabel32: TcxLabel
        Left = 352
        Top = 230
        Caption = #1053#1086#1074#1080#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxCalcEdit4: TcxCalcEdit
        Left = 352
        Top = 253
        EditValue = 0.000000000000000000
        Properties.OnEditValueChanged = cxCalcEdit4PropertiesEditValueChanged
        Style.Color = clMoneyGreen
        TabOrder = 22
        Width = 121
      end
      object cxLabel33: TcxLabel
        Left = 352
        Top = 283
        Caption = #1056#1110#1079#1085#1080#1094#1103
      end
      object cxCalcEdit2: TcxCalcEdit
        Left = 352
        Top = 306
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 24
        Width = 121
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1083#1086#1084#1073#1080
      ImageIndex = 1
      object cxLabel8: TcxLabel
        Left = 16
        Top = 96
        Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
      end
      object cxTextEdit5: TcxTextEdit
        Left = 16
        Top = 112
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 169
      end
      object cxLabel9: TcxLabel
        Left = 16
        Top = 136
        Caption = #1042#1080#1076' '#1087#1083#1086#1084#1073#1080
      end
      object cxTextEdit6: TcxTextEdit
        Left = 16
        Top = 152
        Properties.ReadOnly = False
        TabOrder = 3
        Width = 169
      end
      object cxLabel10: TcxLabel
        Left = 16
        Top = 176
        Caption = #8470' '#1087#1083#1086#1084#1073#1080
      end
      object cxTextEdit7: TcxTextEdit
        Left = 16
        Top = 192
        Properties.ReadOnly = False
        TabOrder = 5
        Width = 169
      end
      object cxLabel11: TcxLabel
        Left = 16
        Top = 224
        Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
      end
      object cxDateEdit4: TcxDateEdit
        Left = 16
        Top = 242
        Properties.ReadOnly = False
        TabOrder = 7
        Width = 121
      end
      object cxLabel16: TcxLabel
        Left = 191
        Top = 113
        Caption = 'fio'
      end
      object cxLabel12: TcxLabel
        Left = 93
        Top = 4
        Caption = #1042#1080' '#1076#1110#1081#1089#1085#1086' '#1073#1072#1078#1072#1108#1090#1077' '#1079#1085#1103#1090#1080' '#1087#1083#1086#1084#1073#1091'? '
      end
      object cxLabel23: TcxLabel
        Left = 93
        Top = 27
        Caption = #1055#1077#1088#1077#1076' '#1079#1085#1103#1090#1090#1103#1084' '#1086#1073#1077#1088#1110#1090#1100' '#1087#1088#1080#1095#1080#1085#1091'.'
      end
      object cxLabel24: TcxLabel
        Left = 16
        Top = 50
        Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103
      end
      object cxDateEdit3: TcxDateEdit
        Left = 232
        Top = 68
        Style.Color = clMoneyGreen
        TabOrder = 12
        Width = 121
      end
      object cxLabel25: TcxLabel
        Left = 232
        Top = 50
        Caption = #1044#1072#1090#1072' '#1079#1085#1103#1090#1090#1103
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 16
        Top = 68
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'VID_ZN'
          end>
        Properties.ListSource = VIDZNSource
        Style.Color = clMoneyGreen
        TabOrder = 14
        Width = 191
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1086#1082#1072#1079#1085#1080#1082#1080
      ImageIndex = 2
      object cxLabel13: TcxLabel
        Left = 40
        Top = 189
        Caption = #1044#1072#1090#1072' '#1087#1086#1087#1077#1088#1076#1085#1100#1086#1075#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      end
      object cxDateEdit5: TcxDateEdit
        Left = 40
        Top = 162
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 121
      end
      object cxLabel14: TcxLabel
        Left = 40
        Top = 96
        Caption = #1054#1089#1086#1073#1086#1074#1080#1081' '#1088#1072#1093#1091#1085#1086#1082
      end
      object cxTextEdit9: TcxTextEdit
        Left = 40
        Top = 112
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 169
      end
      object cxLabel15: TcxLabel
        Left = 215
        Top = 113
        Caption = 'fio'
      end
      object cxLabel18: TcxLabel
        Left = 215
        Top = 139
        Caption = #1042#1080#1076#1072#1083#1077#1085#1080#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxLabel19: TcxLabel
        Left = 215
        Top = 189
        Caption = #1055#1086#1087#1077#1088#1077#1076#1085#1110#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxLabel20: TcxLabel
        Left = 40
        Top = 139
        Caption = #1044#1072#1090#1072' '#1074#1080#1076#1072#1083#1077#1085#1086#1075#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      end
      object cxDateEdit6: TcxDateEdit
        Left = 40
        Top = 208
        Properties.ReadOnly = False
        TabOrder = 8
        Width = 121
      end
      object cxLabel26: TcxLabel
        Left = 117
        Top = 4
        Caption = #1042#1080' '#1076#1110#1081#1089#1085#1086' '#1073#1072#1078#1072#1108#1090#1077' '#1074#1080#1076#1072#1083#1080#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082'? '
      end
      object cxLabel27: TcxLabel
        Left = 117
        Top = 27
        Caption = #1055#1077#1088#1077#1076' '#1074#1080#1076#1072#1083#1077#1085#1085#1103#1084' '#1086#1073#1077#1088#1110#1090#1100' '#1087#1088#1080#1095#1080#1085#1091'.'
      end
      object cxLabel28: TcxLabel
        Left = 40
        Top = 50
        Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1080#1076#1072#1083#1077#1085#1085#1103
      end
      object cxLabel29: TcxLabel
        Left = 256
        Top = 50
        Caption = #1044#1072#1090#1072' '#1074#1080#1076#1072#1083#1077#1085#1085#1103
      end
      object cxLookupComboBox3: TcxLookupComboBox
        Left = 40
        Top = 68
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'VID_ZN'
          end>
        Properties.ListSource = VIDZNSource
        Style.Color = clMoneyGreen
        TabOrder = 13
        Width = 191
      end
      object cxCalcEdit3: TcxCalcEdit
        Left = 215
        Top = 162
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 14
        Width = 121
      end
      object cxCalcEdit1: TcxCalcEdit
        Left = 215
        Top = 208
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 15
        Width = 121
      end
      object cxDateEdit7: TcxDateEdit
        Left = 256
        Top = 68
        Properties.ShowTime = False
        Style.Color = clMoneyGreen
        TabOrder = 16
        Width = 121
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 392
    Width = 492
    Height = 35
    Align = alBottom
    TabOrder = 1
    object cxButton3: TcxButton
      Left = 247
      Top = 6
      Width = 106
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = cxButton3Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton1: TcxButton
      Left = 367
      Top = 6
      Width = 106
      Height = 25
      Caption = #1042#1110#1076#1084#1110#1085#1072
      TabOrder = 1
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfUltraFlat
    end
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
      '  (ID, VID_OB, VID_SP, VID_ZN)'
      'values'
      '  (:ID, :VID_OB, :VID_SP, :VID_ZN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  VID_ZN,'
      '  VID_OB,'
      '  VID_SP'
      'from SPR_ZN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from SPR_ZN')
    ModifySQL.Strings = (
      'update SPR_ZN'
      'set'
      '  ID = :ID,'
      '  VID_OB = :VID_OB,'
      '  VID_SP = :VID_SP,'
      '  VID_ZN = :VID_ZN'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SPR_ZN_ID'
    Left = 408
    Top = 40
    object IBVIDZNID: TIntegerField
      FieldName = 'ID'
      Origin = '"SPR_ZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBVIDZNVID_ZN: TIBStringField
      FieldName = 'VID_ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object IBVIDZNVID_OB: TIntegerField
      FieldName = 'VID_OB'
      Origin = '"SPR_ZN"."VID_OB"'
    end
    object IBVIDZNVID_SP: TIBStringField
      FieldName = 'VID_SP'
      Origin = '"SPR_ZN"."VID_SP"'
      Size = 10
    end
  end
  object VIDZNSource: TDataSource
    DataSet = IBVIDZN
    Left = 408
    Top = 104
  end
  object IBQuery4: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      '')
    Left = 408
    Top = 72
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select first 1 *  from POKAZN where schet=:sch and (del=0 or del' +
        ' is null) order by DATE_POK desc, id desc')
    Left = 376
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
  end
end
