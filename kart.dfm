object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1050#1072#1088#1090#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
  ClientHeight = 678
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 271
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 241
      Top = 8
      Width = 17
      Height = 13
      Alignment = taCenter
      Caption = #1055#1030#1041
    end
    object Label6: TLabel
      Left = 24
      Top = 99
      Width = 152
      Height = 13
      Alignment = taCenter
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1079#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1080#1093' '#1086#1089#1110#1073
    end
    object Label4: TLabel
      Left = 24
      Top = 54
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = #1042#1091#1083#1080#1094#1103
    end
    object Label5: TLabel
      Left = 296
      Top = 53
      Width = 43
      Height = 13
      Alignment = taCenter
      Caption = #1041#1091#1076#1080#1085#1086#1082
    end
    object Label7: TLabel
      Left = 375
      Top = 53
      Width = 49
      Height = 13
      Alignment = taCenter
      Caption = #1050#1074#1072#1088#1090#1080#1088#1072
    end
    object Label15: TLabel
      Left = 24
      Top = 8
      Width = 42
      Height = 13
      Alignment = taCenter
      Caption = #1056#1072#1093#1091#1085#1086#1082
    end
    object Label16: TLabel
      Left = 24
      Top = 160
      Width = 140
      Height = 13
      Alignment = taCenter
      Caption = #1055#1086#1090#1086#1095#1085#1080#1081' '#1074#1080#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 24
      Top = 118
      DataBinding.DataField = 'KOLI_P'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 79
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 24
      Top = 72
      DataBinding.DataField = 'UL'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 249
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 296
      Top = 72
      DataBinding.DataField = 'N_DOM'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 49
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 24
      Top = 27
      DataBinding.DataField = 'SCHET'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 201
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 375
      Top = 72
      DataBinding.DataField = 'KV'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 49
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 137
      Top = 118
      Caption = #1054#1088#1075#1072#1085#1110#1079#1072#1094#1110#1103
      DataBinding.DataField = 'ORG'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 5
      Width = 88
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 241
      Top = 26
      DataBinding.DataField = 'FIO'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 315
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 375
      Top = 118
      Caption = #1060#1110#1083#1100#1090#1088
      DataBinding.DataField = 'FILTR'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 7
      Width = 59
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 471
      Top = 118
      Caption = #1055#1086#1084#1087#1072
      DataBinding.DataField = 'POMPA'
      DataBinding.DataSource = MainForm.DataAllSource
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 8
      Width = 58
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 170
      Top = 158
      AutoSize = False
      DataBinding.DataField = 'WID'
      DataBinding.DataSource = MainForm.DataAllSource
      Enabled = False
      ParentShowHint = False
      Properties.AutoSelect = False
      Properties.DropDownListStyle = lsEditList
      Properties.ImmediateDropDown = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'VID_ZN'
        end>
      Properties.ListSource = MainForm.vid_nachSource
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValidateOnEnter = False
      ShowHint = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWindow
      StyleDisabled.TextColor = clWindowText
      TabOrder = 9
      Height = 21
      Width = 225
    end
    object cxButton5: TcxButton
      Left = 401
      Top = 155
      Width = 98
      Height = 25
      Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082
      TabOrder = 10
      OnClick = cxButton5Click
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxGroupBox1: TcxGroupBox
      Left = 312
      Top = 199
      Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1077' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
      TabOrder = 11
      Height = 58
      Width = 377
      object Label9: TLabel
        Left = 10
        Top = 18
        Width = 77
        Height = 13
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1076#1085#1110#1074' :'
      end
      object Label10: TLabel
        Left = 118
        Top = 18
        Width = 67
        Height = 13
        Caption = #1053#1086#1088#1084#1072' '#1082#1091#1073#1110#1074' :'
      end
      object Label22: TLabel
        Left = 10
        Top = 37
        Width = 130
        Height = 13
        Caption = #1053#1072#1082#1086#1087#1080#1095#1077#1085#1072' '#1085#1086#1088#1084#1072' '#1082#1091#1073#1110#1074' :'
      end
      object Label21: TLabel
        Left = 186
        Top = 37
        Width = 111
        Height = 13
        Caption = #1057#1087#1080#1089#1072#1085#1072' '#1085#1086#1088#1084#1072' '#1082#1091#1073#1110#1074' :'
      end
      object cxDBLabel2: TcxDBLabel
        Left = 93
        Top = 16
        DataBinding.DataField = 'PERE_DAY'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 21
        Width = 19
      end
      object cxDBLabel3: TcxDBLabel
        Left = 191
        Top = 15
        DataBinding.DataField = 'NOR_RAZN'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 19
        Width = 59
      end
      object cxDBLabel6: TcxDBLabel
        Left = 135
        Top = 35
        DataBinding.DataField = 'PREV_NORM'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 20
        Width = 42
      end
      object cxDBLabel8: TcxDBLabel
        Left = 303
        Top = 35
        DataBinding.DataField = 'DEL_NORM'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 20
        Width = 42
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 24
      Top = 199
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
      TabOrder = 12
      Height = 58
      Width = 282
      object Label12: TLabel
        Left = 3
        Top = 18
        Width = 102
        Height = 13
        Caption = #1054#1089#1090#1072#1085#1085#1110#1081' '#1087#1086#1082#1072#1079#1085#1080#1082' :'
      end
      object Label20: TLabel
        Left = 149
        Top = 17
        Width = 81
        Height = 13
        Caption = #1057#1087#1086#1078#1080#1090#1086' '#1082#1091#1073#1110#1074' :'
      end
      object Label23: TLabel
        Left = 75
        Top = 37
        Width = 155
        Height = 13
        Caption = #1057#1087#1086#1078#1080#1090#1086' '#1082#1091#1073#1110#1074' '#1079#1072' '#1085#1072#1089#1090'. '#1084#1110#1089#1103#1094#1110' :'
        Visible = False
      end
      object cxDBLabel4: TcxDBLabel
        Left = 105
        Top = 16
        DataBinding.DataField = 'SCH_CUR'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 21
        Width = 35
      end
      object cxDBLabel5: TcxDBLabel
        Left = 236
        Top = 15
        DataBinding.DataField = 'SCH_RAZN'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 19
        Width = 37
      end
      object cxDBLabel7: TcxDBLabel
        Left = 236
        Top = 36
        DataBinding.DataField = 'SCH_RAZN2'
        DataBinding.DataSource = MainForm.DataAllSource
        Visible = False
        Height = 19
        Width = 37
      end
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 271
    Width = 699
    Height = 407
    ActivePage = cxTabSheet11
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 407
    ClientRectRight = 699
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 699
        Height = 383
        ActivePage = cxTabSheet6
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 383
        ClientRectRight = 699
        ClientRectTop = 24
        object cxTabSheet4: TcxTabSheet
          Caption = #1055#1086#1090#1086#1095#1085#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1080
          ImageIndex = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 699
            Height = 73
            Align = alTop
            TabOrder = 0
            object Label8: TLabel
              Left = 15
              Top = 32
              Width = 121
              Height = 13
              Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1090#1086#1095#1086#1082' '#1086#1073#1083#1110#1082#1091' :'
            end
            object Label11: TLabel
              Left = 15
              Top = 51
              Width = 89
              Height = 13
              Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082' '#1079#1085#1103#1090#1080#1081
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object cxButton3: TcxButton
              Left = 15
              Top = 3
              Width = 106
              Height = 25
              Caption = #1044#1086#1076#1072#1090#1080' '#1083#1110#1095#1080#1083#1100#1085#1080#1082
              TabOrder = 0
              OnClick = cxButton3Click
              LookAndFeel.Kind = lfUltraFlat
            end
            object cxButton4: TcxButton
              Left = 508
              Top = 3
              Width = 98
              Height = 25
              Caption = #1047#1085#1103#1090#1080' '#1083#1110#1095#1080#1083#1100#1085#1080#1082
              TabOrder = 1
              OnClick = cxButton4Click
              LookAndFeel.Kind = lfUltraFlat
            end
            object cxButton2: TcxButton
              Left = 127
              Top = 3
              Width = 131
              Height = 25
              Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080' '#1083#1110#1095#1080#1083#1100#1085#1080#1082
              TabOrder = 2
              OnClick = cxButton2Click
              LookAndFeel.Kind = lfUltraFlat
            end
            object cxDBLabel1: TcxDBLabel
              Left = 137
              Top = 30
              DataBinding.DataField = 'LICH_TO'
              DataBinding.DataSource = MainForm.DataAllSource
              Height = 21
              Width = 19
            end
          end
          object cxGrid4: TcxGrid
            Left = 0
            Top = 73
            Width = 699
            Height = 286
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = MainForm.lichDataSource
              DataController.DetailKeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBTableView1ID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
              end
              object cxGridDBTableView1SCHET: TcxGridDBColumn
                Caption = #1054#1089'.'#1088#1072#1093#1091#1085#1086#1082
                DataBinding.FieldName = 'SCHET'
              end
              object cxGridDBTableView1TIP: TcxGridDBColumn
                Caption = #1058#1080#1087
                DataBinding.FieldName = 'TIP'
              end
              object cxGridDBTableView1N_LICH: TcxGridDBColumn
                Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
                DataBinding.FieldName = 'N_LICH'
              end
              object cxGridDBTableView1DATA_VIP: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
                DataBinding.FieldName = 'DATA_VIP'
                SortIndex = 0
                SortOrder = soDescending
                Width = 92
              end
              object cxGridDBTableView1DATA_STPOV: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1087#1077#1088'. '#1087#1086#1074#1110#1088#1082#1080
                DataBinding.FieldName = 'DATA_STPOV'
                Width = 86
              end
              object cxGridDBTableView1DATA_POV: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1074#1110#1088#1082#1080
                DataBinding.FieldName = 'DATA_POV'
                Width = 87
              end
              object cxGridDBTableView1DATA_VIG: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1074#1080#1075#1086#1090#1086#1074#1083#1077#1085#1085#1103
                DataBinding.FieldName = 'DATA_VIG'
              end
              object cxGridDBTableView1NOTE: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1110#1090#1082#1080
                DataBinding.FieldName = 'NOTE'
              end
              object cxGridDBTableView1ID_USER: TcxGridDBColumn
                Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
                DataBinding.FieldName = 'ID_USER'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'USER_NAIM'
                  end>
                Properties.ListSource = MainForm.usersSource
                Options.Editing = False
                Width = 80
              end
              object cxGridDBTableView1DATE_USER: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
                DataBinding.FieldName = 'DATE_USER'
                Options.Editing = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = #1030#1089#1090#1086#1088#1110#1103
          ImageIndex = 2
          object cxGrid5: TcxGrid
            Left = 0
            Top = 41
            Width = 699
            Height = 318
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxGridDBTableView2CustomDrawCell
              DataController.DataSource = MainForm.lichznDataSource
              DataController.DetailKeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBTableView2SCHET: TcxGridDBColumn
                Caption = #1054#1089'.'#1088#1072#1093#1091#1085#1086#1082
                DataBinding.FieldName = 'SCHET'
              end
              object cxGridDBTableView2TIP: TcxGridDBColumn
                Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
                DataBinding.FieldName = 'TIP'
              end
              object cxGridDBTableView2N_LICH: TcxGridDBColumn
                Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
                DataBinding.FieldName = 'N_LICH'
              end
              object cxGridDBTableView2DATA_VIP: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
                DataBinding.FieldName = 'DATA_VIP'
                Width = 95
              end
              object cxGridDBTableView2DATA_ZN: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1079#1085#1103#1090#1090#1103
                DataBinding.FieldName = 'DATA_ZN'
                SortIndex = 0
                SortOrder = soDescending
                Width = 79
              end
              object cxGridDBTableView2ZN: TcxGridDBColumn
                Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103
                DataBinding.FieldName = 'ZN'
              end
              object cxGridDBTableView2DATA_VIG: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1074#1080#1075#1086#1090#1086#1074#1083#1077#1085#1085#1103
                DataBinding.FieldName = 'DATA_VIG'
              end
              object cxGridDBTableView2NOTE: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1110#1090#1082#1080
                DataBinding.FieldName = 'NOTE'
              end
              object cxGridDBTableView2RASCH_DAY: TcxGridDBColumn
                Caption = #1056#1086#1079#1088#1072#1093'. '#1076#1085#1110
                DataBinding.FieldName = 'RASCH_DAY'
              end
              object cxGridDBTableView2ID_USER: TcxGridDBColumn
                Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
                DataBinding.FieldName = 'ID_USER'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'USER_NAIM'
                  end>
                Properties.ListSource = MainForm.usersSource
                Options.Editing = False
                Width = 76
              end
              object cxGridDBTableView2DATE_USER: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
                DataBinding.FieldName = 'DATE_USER'
                Options.Editing = False
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 699
            Height = 41
            Align = alTop
            TabOrder = 1
            object Shape1: TShape
              Left = 192
              Top = 12
              Width = 33
              Height = 19
              Brush.Color = clRed
            end
            object Label13: TLabel
              Left = 230
              Top = 14
              Width = 277
              Height = 13
              Alignment = taCenter
              Caption = '- '#1085#1077' '#1074#1080#1082#1086#1088#1080#1089#1090#1086#1074#1091#1108#1090#1100#1089#1103' '#1074' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1086#1084#1091' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1102
            end
            object cxButton1: TcxButton
              Left = 15
              Top = 8
              Width = 154
              Height = 25
              Caption = #1044#1086#1076#1072#1090#1080' '#1079#1085#1103#1090#1080#1081' '#1083#1110#1095#1080#1083#1100#1085#1080#1082
              TabOrder = 0
              OnClick = cxButton1Click
              LookAndFeel.Kind = lfUltraFlat
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1083#1086#1084#1073#1080
      ImageIndex = 1
      object cxPageControl3: TcxPageControl
        Left = 0
        Top = 0
        Width = 699
        Height = 383
        ActivePage = cxTabSheet5
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 383
        ClientRectRight = 699
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = #1055#1086#1090#1086#1095#1085#1110' '#1087#1083#1086#1084#1073#1080
          ImageIndex = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 699
            Height = 41
            Align = alTop
            TabOrder = 0
            object cxButton6: TcxButton
              Left = 15
              Top = 8
              Width = 106
              Height = 25
              Caption = #1044#1086#1076#1072#1090#1080' '#1087#1083#1086#1084#1073#1091
              TabOrder = 0
              OnClick = cxButton6Click
              LookAndFeel.Kind = lfUltraFlat
            end
            object cxButton7: TcxButton
              Left = 127
              Top = 8
              Width = 98
              Height = 25
              Caption = #1047#1085#1103#1090#1080' '#1087#1083#1086#1084#1073#1091
              TabOrder = 1
              OnClick = cxButton7Click
              LookAndFeel.Kind = lfUltraFlat
            end
          end
          object cxGrid3: TcxGrid
            Left = 0
            Top = 41
            Width = 699
            Height = 318
            Align = alClient
            TabOrder = 1
            object cxGrid3DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = MainForm.plombsDataSource
              DataController.DetailKeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid3DBTableView1SCHET: TcxGridDBColumn
                Caption = #1054#1089'.'#1088#1072#1093#1091#1085#1086#1082
                DataBinding.FieldName = 'SCHET'
                Width = 104
              end
              object cxGrid3DBTableView1PL: TcxGridDBColumn
                Caption = #1042#1080#1076' '#1087#1083#1086#1084#1073#1080
                DataBinding.FieldName = 'PL'
                Width = 100
              end
              object cxGrid3DBTableView1N_PLOMB: TcxGridDBColumn
                Caption = #8470' '#1087#1083#1086#1084#1073#1080
                DataBinding.FieldName = 'N_PLOMB'
                Width = 96
              end
              object cxGrid3DBTableView1DATE_VS: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
                DataBinding.FieldName = 'DATE_VS'
                SortIndex = 0
                SortOrder = soDescending
              end
              object cxGrid3DBTableView1NOTE: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1110#1090#1082#1080
                DataBinding.FieldName = 'NOTE'
              end
              object cxGrid3DBTableView1ID_USER: TcxGridDBColumn
                Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
                DataBinding.FieldName = 'ID_USER'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'USER_NAIM'
                  end>
                Properties.ListSource = MainForm.usersSource
                Options.Editing = False
                Width = 79
              end
              object cxGrid3DBTableView1DATE_USER: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
                DataBinding.FieldName = 'DATE_USER'
                Options.Editing = False
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = #1030#1089#1090#1086#1088#1110#1103
          ImageIndex = 2
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 699
            Height = 359
            Align = alClient
            TabOrder = 0
            object cxGrid2DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = MainForm.plombsznDataSource
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid2DBTableView1SCHET: TcxGridDBColumn
                Caption = #1054#1089'.'#1088#1072#1093#1091#1085#1086#1082
                DataBinding.FieldName = 'SCHET'
              end
              object cxGrid2DBTableView1PL: TcxGridDBColumn
                Caption = #1042#1080#1076' '#1087#1083#1086#1084#1073#1080
                DataBinding.FieldName = 'PL'
                Width = 121
              end
              object cxGrid2DBTableView1N_PLOMB: TcxGridDBColumn
                Caption = #8470' '#1087#1083#1086#1084#1073#1080
                DataBinding.FieldName = 'N_PLOMB'
              end
              object cxGrid2DBTableView1DATE_ZN: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1079#1085#1103#1090#1090#1103
                DataBinding.FieldName = 'DATE_ZN'
                SortIndex = 0
                SortOrder = soDescending
                Width = 74
              end
              object cxGrid2DBTableView1ZN: TcxGridDBColumn
                Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103
                DataBinding.FieldName = 'ZN'
              end
              object cxGrid2DBTableView1DATE_VS: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1103
                DataBinding.FieldName = 'DATE_VS'
                Width = 94
              end
              object cxGrid2DBTableView1NOTE: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1110#1090#1082#1080
                DataBinding.FieldName = 'NOTE'
              end
              object cxGrid2DBTableView1ID_USER: TcxGridDBColumn
                Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
                DataBinding.FieldName = 'ID_USER'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'USER_NAIM'
                  end>
                Properties.ListSource = MainForm.usersSource
                Options.Editing = False
                Width = 85
              end
              object cxGrid2DBTableView1DATE_USER: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
                DataBinding.FieldName = 'DATE_USER'
                Options.Editing = False
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1086#1082#1072#1079#1085#1080#1082#1080
      ImageIndex = 2
      object cxPageControl4: TcxPageControl
        Left = 0
        Top = 0
        Width = 699
        Height = 383
        ActivePage = cxTabSheet9
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 383
        ClientRectRight = 699
        ClientRectTop = 24
        object cxTabSheet9: TcxTabSheet
          Caption = #1055#1086#1082#1072#1079#1085#1080#1082#1080
          ImageIndex = 0
          object cxGrid8: TcxGrid
            Left = 0
            Top = 49
            Width = 699
            Height = 310
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView5: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = MainForm.pokaznSource
              DataController.DetailKeyFieldNames = 'ID'
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = #1055#1077#1088#1110#1086#1076
                DataBinding.FieldName = 'YEARMON'
                Options.Editing = False
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
                DataBinding.FieldName = 'DATE_POK'
                Options.Editing = False
                SortIndex = 0
                SortOrder = soDescending
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = #1055#1086#1082#1072#1079#1085#1080#1082
                DataBinding.FieldName = 'POKAZN'
                Options.Editing = False
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = #1042#1080#1076' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
                DataBinding.FieldName = 'PKZ'
                Options.Editing = False
                Width = 193
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
                DataBinding.FieldName = 'LICH'
                Options.Editing = False
                Width = 172
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
                DataBinding.FieldName = 'ID_USER'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'USER_NAIM'
                  end>
                Properties.ListSource = MainForm.usersSource
                Options.Editing = False
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
                DataBinding.FieldName = 'DATE_USER'
                Options.Editing = False
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = cxGridDBTableView5
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 699
            Height = 49
            Align = alTop
            TabOrder = 1
            object Label27: TLabel
              Left = 15
              Top = 12
              Width = 3
              Height = 13
              Alignment = taCenter
            end
            object Label28: TLabel
              Left = 432
              Top = 5
              Width = 124
              Height = 13
              Alignment = taCenter
              Caption = #1050#1091#1073#1080' '#1079#1072' '#1087#1086#1090#1086#1095#1085#1080#1081' '#1084#1110#1089#1103#1094#1100
            end
            object cxButton16: TcxButton
              Left = 15
              Top = 16
              Width = 106
              Height = 25
              Caption = #1044#1086#1076#1072#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082
              TabOrder = 0
              OnClick = cxButton16Click
              LookAndFeel.Kind = lfUltraFlat
            end
            object cxButton17: TcxButton
              Left = 127
              Top = 16
              Width = 114
              Height = 25
              Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082
              TabOrder = 1
              OnClick = cxButton17Click
              LookAndFeel.Kind = lfUltraFlat
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 432
              Top = 20
              DataBinding.DataField = 'SCH_RAZN'
              DataBinding.DataSource = MainForm.DataAllSource
              Properties.ReadOnly = True
              TabOrder = 2
              Width = 121
            end
            object cxButton18: TcxButton
              Left = 278
              Top = 16
              Width = 98
              Height = 25
              Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082
              TabOrder = 3
              Visible = False
              OnClick = cxButton18Click
              LookAndFeel.Kind = lfUltraFlat
            end
          end
        end
        object cxTabSheet10: TcxTabSheet
          Caption = #1030#1089#1090#1086#1088#1110#1103
          ImageIndex = 2
          object cxGrid1: TcxGrid
            Left = 0
            Top = 25
            Width = 699
            Height = 334
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = MainForm.delpokaznSource
              DataController.DetailKeyFieldNames = 'ID'
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = #1055#1077#1088#1110#1086#1076
                DataBinding.FieldName = 'YEARMON'
                Options.Editing = False
              end
              object cxGridDBColumn9: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
                DataBinding.FieldName = 'DATE_POK'
                Options.Editing = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 107
              end
              object cxGridDBColumn10: TcxGridDBColumn
                Caption = #1055#1086#1082#1072#1079#1085#1080#1082
                DataBinding.FieldName = 'POKAZN'
                Options.Editing = False
              end
              object cxGridDBColumn11: TcxGridDBColumn
                Caption = #1042#1080#1076' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
                DataBinding.FieldName = 'PKZ'
                Options.Editing = False
                Width = 193
              end
              object cxGridDBColumn12: TcxGridDBColumn
                Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
                DataBinding.FieldName = 'LICH'
                Options.Editing = False
                Width = 150
              end
              object cxGridDBColumn13: TcxGridDBColumn
                Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
                DataBinding.FieldName = 'ID_USER'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'USER_NAIM'
                  end>
                Properties.ListSource = MainForm.usersSource
                Options.Editing = False
                Width = 72
              end
              object cxGridDBColumn14: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
                DataBinding.FieldName = 'DATE_USER'
                Options.Editing = False
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 699
            Height = 25
            Align = alTop
            TabOrder = 1
            object Label1: TLabel
              Left = 15
              Top = 12
              Width = 3
              Height = 13
              Alignment = taCenter
            end
            object Label3: TLabel
              Left = 15
              Top = 6
              Width = 101
              Height = 13
              Alignment = taCenter
              Caption = #1042#1080#1076#1072#1083#1077#1085#1110' '#1087#1086#1082#1072#1079#1085#1080#1082#1080
            end
          end
        end
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = #1047#1084#1110#1085#1072' '#1074#1080#1076#1091' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 699
        Height = 137
        Align = alTop
        TabOrder = 0
        object Label14: TLabel
          Left = 15
          Top = 12
          Width = 3
          Height = 13
          Alignment = taCenter
        end
        object Label17: TLabel
          Left = 18
          Top = 116
          Width = 35
          Height = 13
          Alignment = taCenter
          Caption = #1030#1089#1090#1086#1088#1110#1103
        end
        object Label18: TLabel
          Left = 283
          Top = 5
          Width = 71
          Height = 13
          Alignment = taCenter
          Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1084#1110#1085#1080
        end
        object Label19: TLabel
          Left = 27
          Top = 19
          Width = 122
          Height = 13
          Alignment = taCenter
          Caption = #1053#1086#1074#1080#1081' '#1074#1080#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
        end
        object cxButton11: TcxButton
          Left = 27
          Top = 72
          Width = 162
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1074#1080#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103' '#1085#1072
          TabOrder = 0
          OnClick = cxButton11Click
          LookAndFeel.Kind = lfUltraFlat
        end
        object cxLookupComboBox1: TcxLookupComboBox
          Left = 27
          Top = 38
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'VID_ZN'
            end>
          Properties.ListSource = MainForm.vid_nach46Source
          TabOrder = 1
          Width = 225
        end
        object cxMemo1: TcxMemo
          Left = 283
          Top = 24
          Lines.Strings = (
            '')
          Properties.MaxLength = 300
          TabOrder = 2
          Height = 89
          Width = 385
        end
      end
      object cxGrid7: TcxGrid
        Left = 0
        Top = 137
        Width = 699
        Height = 246
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView4: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MainForm.why_pokSource
          DataController.DetailKeyFieldNames = 'ID'
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableView4ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Options.Editing = False
            Width = 43
          end
          object cxGridDBTableView4VID_ZN: TcxGridDBColumn
            Caption = #1042#1080#1076
            DataBinding.FieldName = 'VID_ZN'
            Options.Editing = False
            Width = 196
          end
          object cxGridDBTableView4NOTE: TcxGridDBColumn
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1084#1110#1085#1080
            DataBinding.FieldName = 'NOTE'
            Options.Editing = False
            Width = 288
          end
          object cxGridDBTableView4ID_USER: TcxGridDBColumn
            Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
            DataBinding.FieldName = 'ID_USER'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'USER_NAIM'
              end>
            Properties.ListSource = MainForm.usersSource
            Options.Editing = False
            Width = 72
          end
          object cxGridDBTableView4DATE_USER: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'DATE_USER'
            Options.Editing = False
            Width = 86
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
    end
    object cxTabSheet11: TcxTabSheet
      Caption = #1057#1087#1080#1089#1072#1085#1085#1103'\'#1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
      ImageIndex = 4
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 699
        Height = 137
        Align = alTop
        TabOrder = 0
        object Label24: TLabel
          Left = 15
          Top = 12
          Width = 3
          Height = 13
          Alignment = taCenter
        end
        object Label25: TLabel
          Left = 18
          Top = 116
          Width = 35
          Height = 13
          Alignment = taCenter
          Caption = #1030#1089#1090#1086#1088#1110#1103
        end
        object Label26: TLabel
          Left = 283
          Top = 5
          Width = 162
          Height = 13
          Alignment = taCenter
          Caption = #1055#1088#1080#1095#1080#1085#1072' '#1089#1087#1080#1089#1072#1085#1085#1103'\'#1087#1077#1088#1077#1088#1072#1093#1091#1085#1082#1091
        end
        object Label29: TLabel
          Left = 27
          Top = 19
          Width = 144
          Height = 13
          Alignment = taCenter
          Caption = #1057#1091#1084#1072' '#1089#1087#1080#1089#1072#1085#1085#1103'\'#1087#1077#1088#1077#1088#1072#1093#1091#1085#1082#1091
        end
        object cxButton8: TcxButton
          Left = 27
          Top = 72
          Width = 198
          Height = 25
          Caption = #1047#1072#1088#1072#1093#1091#1074#1072#1090#1080'  '#1089#1087#1080#1089#1072#1085#1085#1103'\'#1087#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
          TabOrder = 0
          OnClick = cxButton8Click
          LookAndFeel.Kind = lfUltraFlat
        end
        object cxMemo2: TcxMemo
          Left = 283
          Top = 24
          Lines.Strings = (
            '')
          Properties.MaxLength = 300
          TabOrder = 1
          Height = 89
          Width = 385
        end
        object cxCalcEdit5: TcxCalcEdit
          Left = 27
          Top = 42
          EditValue = 0.000000000000000000
          Properties.ReadOnly = False
          TabOrder = 2
          Width = 129
        end
      end
      object cxGrid6: TcxGrid
        Left = 0
        Top = 137
        Width = 699
        Height = 246
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView6: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MainForm.spisSource
          DataController.DetailKeyFieldNames = 'ID'
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Options.Editing = False
            Width = 43
          end
          object cxGridDBTableView6YEARMON: TcxGridDBColumn
            Caption = #1055#1077#1088#1110#1086#1076
            DataBinding.FieldName = 'YEARMON'
            Options.Editing = False
          end
          object cxGridDBTableView6SUMMA: TcxGridDBColumn
            Caption = #1057#1091#1084#1072
            DataBinding.FieldName = 'SUMMA'
            Options.Editing = False
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1089#1087#1080#1089#1072#1085#1085#1103'\'#1087#1077#1088#1077#1088#1072#1093#1091#1085#1082#1091
            DataBinding.FieldName = 'NOTE'
            Options.Editing = False
            Width = 288
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
            DataBinding.FieldName = 'ID_USER'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'USER_NAIM'
              end>
            Properties.ListSource = MainForm.usersSource
            Options.Editing = False
            Width = 72
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'DATE_USER'
            Options.Editing = False
            Width = 86
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView6
        end
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select first 1 *  from POKAZN where schet=:sch and (del=0 or del' +
        ' is null) order by DATE_POK desc')
    Left = 512
    Top = 88
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
    Left = 544
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
  end
  object IBQuery3: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      'select id, schet, data_l, vid, vid_zn from'
      
        '(select a.id, a.schet, a.data_vip data_l, '#39'vs'#39' vid,COALESCE(vid_' +
        'zn,0) vid_zn'
      'from lich a where a.schet=:sch'
      'union all'
      
        'select b.id, b.schet, data_zn data_l, '#39'zn'#39' vid,COALESCE(vid_zn,0' +
        ') vid_zn'
      
        'from lich b where b.schet=:sch and data_zn is not null and vid_z' +
        'n<>39)'
      
        'where extract(year from data_l)=:yy and extract(month from data_' +
        'l)=:mm'
      'order by data_l,id,vid')
    Left = 576
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'yy'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mm'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select first 12 schet, yearmon, COALESCE(sch_razn,0) kub from h_' +
        'voda where yearmon>202209 and yearmon<:ym and schet=:sch order b' +
        'y yearmon desc'
      '')
    Left = 608
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ym'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
  end
  object IBQuery5: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      ''
      '')
    Left = 568
    Top = 136
  end
  object IBQuery6: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      ''
      '')
    Left = 600
    Top = 136
  end
  object IBQuery7: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      ''
      '')
    Left = 632
    Top = 136
  end
end
