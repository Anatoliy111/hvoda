object FormAddkart: TFormAddkart
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1044#1086#1076#1072#1090#1080
  ClientHeight = 426
  ClientWidth = 438
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
    Width = 438
    Height = 391
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 391
    ClientRectRight = 438
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 0
      object cxTextEdit1: TcxTextEdit
        Left = 24
        Top = 29
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
        Style.Color = clMoneyGreen
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
        Style.Color = clMoneyGreen
        TabOrder = 5
        Width = 169
      end
      object cxLabel4: TcxLabel
        Left = 24
        Top = 301
        Caption = #1055#1088#1080#1084#1110#1090#1082#1072
      end
      object cxTextEdit4: TcxTextEdit
        Left = 24
        Top = 317
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
        Style.Color = clMoneyGreen
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
        Style.Color = clMoneyGreen
        TabOrder = 11
        Width = 121
      end
      object cxLabel7: TcxLabel
        Left = 167
        Top = 237
        Caption = #1044#1072#1090#1072' '#1087#1086#1074#1110#1088#1082#1080
      end
      object cxDateEdit3: TcxDateEdit
        Left = 167
        Top = 260
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
      object cxCalcEdit4: TcxCalcEdit
        Left = 304
        Top = 210
        EditValue = 0.000000000000000000
        Properties.OnEditValueChanged = cxCalcEdit1PropertiesEditValueChanged
        Style.Color = clMoneyGreen
        TabOrder = 15
        Width = 121
      end
      object cxLabel22: TcxLabel
        Left = 304
        Top = 187
        Caption = #1053#1086#1074#1080#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxLabel24: TcxLabel
        Left = 151
        Top = 137
        Caption = #1044#1072#1090#1072' '#1086#1089#1090#1072#1085#1085#1100#1086#1075#1086' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      end
      object cxDateEdit7: TcxDateEdit
        Left = 151
        Top = 160
        Properties.ReadOnly = True
        Properties.SaveTime = False
        TabOrder = 18
        Width = 121
      end
      object cxLabel25: TcxLabel
        Left = 304
        Top = 137
        Caption = #1054#1089#1090#1072#1085#1085#1110#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxCalcEdit5: TcxCalcEdit
        Left = 304
        Top = 160
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        TabOrder = 20
        Width = 121
      end
      object cxCheckBox1: TcxCheckBox
        Left = 221
        Top = 87
        Caption = #1044#1086#1076#1072#1090#1080' '#1085#1086#1074#1080#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
        Properties.OnChange = cxCheckBox1PropertiesChange
        TabOrder = 21
        Width = 201
      end
      object cxLabel26: TcxLabel
        Left = 207
        Top = 114
        Caption = #1076#1086#1076#1072#1108#1090#1100#1089#1103' '#1087#1088#1080' '#1074#1089#1090'.'#1085#1086#1074#1086#1075#1086' '#1072#1073#1086' '#1087#1110#1089#1083#1103' '#1087#1086#1074#1110#1088#1082#1080
      end
      object cxLabel27: TcxLabel
        Left = 24
        Top = 237
        Caption = #1044#1072#1090#1072' '#1087#1086#1087#1077#1088'. '#1087#1086#1074#1110#1088#1082#1080
      end
      object cxDateEdit9: TcxDateEdit
        Left = 24
        Top = 260
        Properties.ShowTime = False
        Properties.OnChange = cxDateEdit2PropertiesChange
        Style.Color = clMoneyGreen
        TabOrder = 24
        OnExit = cxDateEdit9Exit
        Width = 121
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
        Style.Color = clMoneyGreen
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
        Style.Color = clMoneyGreen
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
        Style.Color = clMoneyGreen
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
        Top = 131
        EditValue = 0d
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DateOnError = deNull
        Properties.SaveTime = False
        Style.Color = clMoneyGreen
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
        Style.Color = clMoneyGreen
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
        Style.Color = clWindow
        TabOrder = 13
        Width = 121
      end
      object cxCalcEdit1: TcxCalcEdit
        Left = 199
        Top = 132
        EditValue = 0.000000000000000000
        Properties.OnEditValueChanged = cxCalcEdit1PropertiesEditValueChanged
        Style.Color = clMoneyGreen
        TabOrder = 14
        Width = 121
      end
      object cxCalcEdit6: TcxCalcEdit
        Left = 27
        Top = 236
        EditValue = 0.000000000000000000
        Enabled = False
        Properties.ReadOnly = True
        TabOrder = 15
        Width = 121
      end
      object cxLabel33: TcxLabel
        Left = 27
        Top = 213
        Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1077' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #1070#1088'.'#1086#1089#1086#1073#1080'/'#1060#1054#1055
      ImageIndex = 3
      OnShow = cxTabSheet4Show
      object cxLabel29: TcxLabel
        Left = 15
        Top = 120
        Caption = #1042#1091#1083#1080#1094#1103
      end
      object cxLookupComboBox3: TcxLookupComboBox
        Left = 15
        Top = 140
        Properties.KeyFieldNames = 'UL'
        Properties.ListColumns = <
          item
            FieldName = 'UL'
          end>
        Properties.ListSource = UlSource
        Properties.OnEditValueChanged = cxLookupComboBox3PropertiesEditValueChanged
        Style.Color = clMoneyGreen
        TabOrder = 1
        Width = 191
      end
      object cxLabel30: TcxLabel
        Left = 15
        Top = 64
        Caption = #1053#1072#1079#1074#1072
      end
      object cxTextEdit10: TcxTextEdit
        Left = 15
        Top = 87
        Style.Color = clMoneyGreen
        TabOrder = 3
        Width = 169
      end
      object cxLabel31: TcxLabel
        Left = 15
        Top = 168
        Caption = #1041#1091#1076#1080#1085#1086#1082
      end
      object cxLabel32: TcxLabel
        Left = 95
        Top = 168
        Caption = #1050#1074#1072#1088#1090#1080#1088#1072
      end
      object cxTextEdit12: TcxTextEdit
        Left = 95
        Top = 191
        TabOrder = 6
        Width = 47
      end
      object cxLabel34: TcxLabel
        Left = 15
        Top = 18
        Caption = #1054#1089'.'#1088#1072#1093'/'#1028#1044#1056#1055#1054#1059'/'#1030#1055#1053
      end
      object cxLookupComboBox4: TcxLookupComboBox
        Left = 15
        Top = 191
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsEditList
        Properties.KeyFieldNames = 'N_DOM'
        Properties.ListColumns = <
          item
            FieldName = 'N_DOM'
          end>
        Properties.ListSource = DomSource
        Properties.MaxLength = 5
        EditValue = ''
        Style.Color = clMoneyGreen
        TabOrder = 8
        Width = 57
      end
      object cxTextEdit6: TcxTextEdit
        Left = 15
        Top = 41
        Properties.MaxLength = 10
        Style.Color = clMoneyGreen
        TabOrder = 9
        Width = 169
      end
      object cxLabel35: TcxLabel
        Left = 24
        Top = 301
        Caption = #1055#1088#1080#1084#1110#1090#1082#1072
      end
      object cxTextEdit11: TcxTextEdit
        Left = 24
        Top = 317
        TabOrder = 11
        Width = 401
      end
      object cxLabel40: TcxLabel
        Left = 15
        Top = 226
        Caption = #1055#1083#1086#1097#1072' '#1084'2'
      end
      object cxLabel41: TcxLabel
        Left = 95
        Top = 226
        Caption = #1050'-'#1090#1100' '#1086#1089#1110#1073' '#1087#1086' '#1087#1083#1086#1097#1110
      end
      object cxCalcEdit7: TcxCalcEdit
        Left = 15
        Top = 249
        EditValue = 0.000000000000000000
        Properties.OnEditValueChanged = cxCalcEdit7PropertiesEditValueChanged
        Style.Color = clMoneyGreen
        TabOrder = 14
        Width = 58
      end
      object cxCalcEdit9: TcxCalcEdit
        Left = 95
        Top = 249
        EditValue = 0.000000000000000000
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 15
        Width = 53
      end
      object cxLabel42: TcxLabel
        Left = 207
        Top = 226
        Caption = #1053#1086#1088#1084#1072
      end
      object cxCalcEdit10: TcxCalcEdit
        Left = 207
        Top = 249
        EditValue = 0.000000000000000000
        Style.Color = clMoneyGreen
        TabOrder = 17
        Width = 74
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = #1041#1091#1076#1080#1085#1082#1086#1074#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 4
      OnShow = cxTabSheet5Show
      object cxLabel36: TcxLabel
        Left = 15
        Top = 9
        Caption = #1042#1091#1083#1080#1094#1103
      end
      object cxLabel37: TcxLabel
        Left = 15
        Top = 57
        Caption = #1041#1091#1076#1080#1085#1086#1082
      end
      object cxLabel38: TcxLabel
        Left = 15
        Top = 116
        Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1080#1081' '#1087#1086#1082#1072#1079#1085#1080#1082
      end
      object cxCalcEdit8: TcxCalcEdit
        Left = 15
        Top = 139
        EditValue = 0.000000000000000000
        Properties.OnEditValueChanged = cxCalcEdit1PropertiesEditValueChanged
        Style.Color = clMoneyGreen
        TabOrder = 3
        Width = 169
      end
      object cxLabel28: TcxLabel
        Left = 15
        Top = 166
        Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      end
      object cxTextEdit13: TcxTextEdit
        Left = 15
        Top = 189
        Style.Color = clMoneyGreen
        TabOrder = 5
        Width = 169
      end
      object cxLabel39: TcxLabel
        Left = 15
        Top = 212
        Caption = #1053#1086#1084#1077#1088' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      end
      object cxTextEdit14: TcxTextEdit
        Left = 15
        Top = 235
        Style.Color = clMoneyGreen
        TabOrder = 7
        Width = 169
      end
      object cxLookupComboBox5: TcxLookupComboBox
        Left = 15
        Top = 29
        Properties.KeyFieldNames = 'UL'
        Properties.ListColumns = <
          item
            FieldName = 'UL'
          end>
        Properties.ListSource = UlSource
        Properties.OnEditValueChanged = cxLookupComboBox5PropertiesEditValueChanged
        Style.Color = clMoneyGreen
        TabOrder = 8
        Width = 191
      end
      object cxLookupComboBox6: TcxLookupComboBox
        Left = 15
        Top = 80
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsEditList
        Properties.KeyFieldNames = 'N_DOM'
        Properties.ListColumns = <
          item
            FieldName = 'N_DOM'
          end>
        Properties.ListSource = DomSource
        Properties.MaxLength = 5
        EditValue = ''
        Style.Color = clMoneyGreen
        TabOrder = 9
        Width = 57
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 391
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
    Left = 336
    Top = 40
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
    object IBVIDZNVID_SP: TIBStringField
      FieldName = 'VID_SP'
      Origin = '"SPR_ZN"."VID_SP"'
      Size = 10
    end
  end
  object VIDZNSource: TDataSource
    DataSet = IBVIDZN
    Left = 336
    Top = 80
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select first 1 *  from POKAZN where schet=:sch and (del=0 or del' +
        ' is null) order by DATE_POK desc')
    Left = 376
    Top = 40
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
      
        'select first 1 *  from POKAZN where schet=:sch and (del=0 or del' +
        ' is null) order by DATE_POK desc')
    Left = 376
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
  end
  object UlSource: TDataSource
    DataSet = ULDataSet
    Left = 256
    Top = 80
  end
  object IBQuery3: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      '')
    Left = 376
    Top = 120
  end
  object IBQuery4: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      '')
    Left = 376
    Top = 160
  end
  object DomSource: TDataSource
    DataSet = DOMDataSet
    Left = 296
    Top = 80
  end
  object ULDataSet: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from h_voda'
      'where'
      '  KL_UL = :OLD_KL_UL')
    InsertSQL.Strings = (
      'insert into h_voda'
      '  (KL_UL, UL)'
      'values'
      '  (:KL_UL, :UL)')
    RefreshSQL.Strings = (
      'Select '
      '  KL_UL,'
      '  UL'
      'from h_voda '
      'where'
      '  KL_UL = :KL_UL')
    SelectSQL.Strings = (
      'select ul from h_voda where h_voda.yearmon=:yearmon group by ul')
    ModifySQL.Strings = (
      'update h_voda'
      'set'
      '  KL_UL = :KL_UL,'
      '  UL = :UL'
      'where'
      '  KL_UL = :OLD_KL_UL')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SPR_ZN_ID'
    Left = 256
    Top = 112
    object ULDataSetUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
  end
  object DOMDataSet: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from h_voda'
      'where'
      '  N_DOM = :OLD_N_DOM')
    InsertSQL.Strings = (
      'insert into h_voda'
      '  (N_DOM)'
      'values'
      '  (:N_DOM)')
    RefreshSQL.Strings = (
      'Select '
      '  N_DOM'
      'from h_voda '
      'where'
      '  N_DOM = :N_DOM')
    SelectSQL.Strings = (
      
        'select n_dom from h_voda where yearmon=:yearmon and ul=:ull grou' +
        'p by ul, n_dom')
    ModifySQL.Strings = (
      'update h_voda'
      'set'
      '  N_DOM = :N_DOM'
      'where'
      '  N_DOM = :OLD_N_DOM')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SPR_ZN_ID'
    Left = 296
    Top = 112
    object DOMDataSetN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
  end
  object IBQuery5: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      '')
    Left = 376
    Top = 200
  end
end
