object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1050#1072#1088#1090#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
  ClientHeight = 767
  ClientWidth = 757
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
    Width = 757
    Height = 328
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
    object Label34: TLabel
      Left = 407
      Top = 296
      Width = 177
      Height = 16
      Caption = #1042#1089#1100#1086#1075#1086' '#1085#1072#1088#1072#1093#1086#1074#1072#1085#1086' '#1082#1091#1073#1110#1074' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
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
      Left = 338
      Top = 194
      Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1077' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
      TabOrder = 11
      Height = 58
      Width = 351
      object Label9: TLabel
        Left = 178
        Top = 18
        Width = 77
        Height = 13
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1076#1085#1110#1074' :'
      end
      object Label10: TLabel
        Left = 10
        Top = 18
        Width = 102
        Height = 13
        Caption = #1056#1086#1079#1088#1072#1093#1091#1085'. '#1089#1087#1086#1078#1080#1074'. :'
      end
      object Label30: TLabel
        Left = 10
        Top = 36
        Width = 91
        Height = 13
        Caption = #1056#1086#1079#1088#1072#1093#1091#1085'. '#1085#1086#1088#1084#1072' :'
      end
      object cxDBLabel2: TcxDBLabel
        Left = 261
        Top = 16
        DataBinding.DataField = 'PERE_DAY'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 21
        Width = 19
      end
      object cxDBLabel3: TcxDBLabel
        Left = 111
        Top = 16
        DataBinding.DataField = 'NOR_RAZN'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 19
        Width = 59
      end
      object cxDBLabel9: TcxDBLabel
        Left = 111
        Top = 34
        DataBinding.DataField = 'NORM_BLICH'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 19
        Width = 59
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 7
      Top = 194
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
      TabOrder = 12
      Height = 58
      Width = 325
      object Label12: TLabel
        Left = 11
        Top = 18
        Width = 102
        Height = 13
        Caption = #1054#1089#1090#1072#1085#1085#1110#1081' '#1087#1086#1082#1072#1079#1085#1080#1082' :'
      end
      object Label20: TLabel
        Left = 11
        Top = 37
        Width = 155
        Height = 13
        Caption = #1057#1087#1086#1078#1080#1090#1086' '#1082#1091#1073#1110#1074' '#1087#1086' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1091' :'
      end
      object Label23: TLabel
        Left = 167
        Top = 18
        Width = 86
        Height = 13
        Caption = #1044#1072#1090#1072' '#1087#1086#1082#1072#1079#1085#1080#1082#1072':'
      end
      object cxDBLabel4: TcxDBLabel
        Left = 112
        Top = 16
        DataBinding.DataField = 'SCH_CUR'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 17
        Width = 50
      end
      object cxDBLabel5: TcxDBLabel
        Left = 168
        Top = 34
        DataBinding.DataField = 'SCH_RAZN'
        DataBinding.DataSource = MainForm.DataAllSource
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 19
        Width = 37
      end
      object cxDBLabel7: TcxDBLabel
        Left = 257
        Top = 16
        DataBinding.DataField = 'DATE_POK'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 19
        Width = 65
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 7
      Top = 251
      Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
      TabOrder = 13
      Height = 63
      Width = 377
      object Label22: TLabel
        Left = 201
        Top = 15
        Width = 130
        Height = 13
        Caption = #1053#1072#1082#1086#1087#1080#1095#1077#1085#1072' '#1085#1086#1088#1084#1072' '#1082#1091#1073#1110#1074' :'
      end
      object Label21: TLabel
        Left = 7
        Top = 15
        Width = 146
        Height = 13
        Caption = #1057#1087#1080#1089#1072#1085#1085#1103' '#1088#1086#1079#1088'.'#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103' :'
      end
      object Label31: TLabel
        Left = 7
        Top = 30
        Width = 55
        Height = 13
        Caption = #1053#1077#1073#1072#1083#1072#1085#1089' :'
      end
      object Label32: TLabel
        Left = 201
        Top = 30
        Width = 110
        Height = 13
        Caption = #1055#1077#1088#1077#1088#1072#1093'. '#1085#1077#1073#1072#1083#1072#1085#1089#1091' :'
      end
      object Label33: TLabel
        Left = 7
        Top = 44
        Width = 55
        Height = 13
        Caption = #1057#1087#1080#1089#1072#1085#1085#1103' :'
      end
      object cxDBLabel6: TcxDBLabel
        Left = 331
        Top = 13
        DataBinding.DataField = 'PREV_NORM'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 20
        Width = 42
      end
      object cxDBLabel8: TcxDBLabel
        Left = 152
        Top = 13
        DataBinding.DataField = 'DEL_NORM'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 20
        Width = 42
      end
      object cxDBLabel10: TcxDBLabel
        Left = 152
        Top = 28
        DataBinding.DataField = 'KUB_NOBALANS'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 20
        Width = 42
      end
      object cxDBLabel11: TcxDBLabel
        Left = 331
        Top = 28
        DataBinding.DataField = 'PERERAH'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 20
        Width = 42
      end
      object cxDBLabel12: TcxDBLabel
        Left = 152
        Top = 42
        DataBinding.DataField = 'SPIS'
        DataBinding.DataSource = MainForm.DataAllSource
        Height = 20
        Width = 42
      end
    end
    object cxDBLabel13: TcxDBLabel
      Left = 588
      Top = 294
      DataBinding.DataField = 'KUB_ALL'
      DataBinding.DataSource = MainForm.DataAllSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = 20
      Style.Font.Name = 'System'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 19
      Width = 73
    end
    object cxDBMemo1: TcxDBMemo
      Left = 390
      Top = 257
      DataBinding.DataField = 'R_NACH'
      DataBinding.DataSource = MainForm.DataAllSource
      TabOrder = 15
      Height = 33
      Width = 299
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 328
    Width = 757
    Height = 439
    ActivePage = cxTabSheet13
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 439
    ClientRectRight = 757
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 715
      ExplicitHeight = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 757
        Height = 415
        ActivePage = cxTabSheet4
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 715
        ClientRectBottom = 415
        ClientRectRight = 757
        ClientRectTop = 24
        object cxTabSheet4: TcxTabSheet
          Caption = #1055#1086#1090#1086#1095#1085#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1080
          ImageIndex = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 757
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
            Width = 757
            Height = 318
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 715
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
                Width = 118
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
          ExplicitTop = 0
          ExplicitWidth = 715
          ExplicitHeight = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 757
            Height = 41
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 715
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
          object cxGrid5: TcxGrid
            Left = 0
            Top = 41
            Width = 757
            Height = 350
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 715
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
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1083#1086#1084#1073#1080
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 715
      ExplicitHeight = 0
      object cxPageControl3: TcxPageControl
        Left = 0
        Top = 0
        Width = 757
        Height = 415
        ActivePage = cxTabSheet7
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 715
        ClientRectBottom = 415
        ClientRectRight = 757
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = #1055#1086#1090#1086#1095#1085#1110' '#1087#1083#1086#1084#1073#1080
          ImageIndex = 0
          ExplicitTop = 0
          ExplicitWidth = 715
          ExplicitHeight = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 757
            Height = 41
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 715
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
            Width = 757
            Height = 350
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 715
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
          ExplicitTop = 0
          ExplicitWidth = 715
          ExplicitHeight = 0
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 757
            Height = 391
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 715
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
      ExplicitTop = 0
      ExplicitWidth = 715
      ExplicitHeight = 0
      object cxPageControl4: TcxPageControl
        Left = 0
        Top = 0
        Width = 757
        Height = 415
        ActivePage = cxTabSheet9
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 715
        ClientRectBottom = 415
        ClientRectRight = 757
        ClientRectTop = 24
        object cxTabSheet9: TcxTabSheet
          Caption = #1055#1086#1082#1072#1079#1085#1080#1082#1080
          ImageIndex = 0
          ExplicitTop = 0
          ExplicitWidth = 715
          ExplicitHeight = 0
          object cxGrid8: TcxGrid
            Left = 0
            Top = 49
            Width = 757
            Height = 342
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 715
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
            Width = 757
            Height = 49
            Align = alTop
            TabOrder = 1
            ExplicitWidth = 715
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
          ExplicitTop = 0
          ExplicitWidth = 715
          ExplicitHeight = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 25
            Width = 757
            Height = 366
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 715
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
            Width = 757
            Height = 25
            Align = alTop
            TabOrder = 1
            ExplicitWidth = 715
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
      ExplicitTop = 0
      ExplicitWidth = 715
      ExplicitHeight = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 137
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 715
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
          Top = 65
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
        Width = 757
        Height = 278
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 715
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
      ExplicitTop = 0
      ExplicitWidth = 715
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 137
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 715
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
          Caption = #1050#1091#1073#1080' '#1089#1087#1080#1089#1072#1085#1085#1103'\'#1087#1077#1088#1077#1088#1072#1093#1091#1085#1082#1091
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
        Width = 757
        Height = 278
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 715
        object cxGridDBTableView6: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MainForm.spisSource
          DataController.DetailKeyFieldNames = 'ID'
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
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
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
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
    object cxTabSheet12: TcxTabSheet
      Caption = #1030#1089#1090#1086#1088#1110#1103' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1100' 12 '#1084#1110#1089'.'
      ImageIndex = 5
      ExplicitTop = 0
      ExplicitWidth = 715
      ExplicitHeight = 0
      object cxGrid9: TcxGrid
        Left = 0
        Top = 41
        Width = 757
        Height = 374
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 715
        object DBGrid1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Hint = #1055#1077#1088#1096#1080#1081' '#1079#1072#1087#1080#1089
          NavigatorButtons.PriorPage.Hint = #1055#1086#1087#1077#1088#1077#1076#1085#1103' '#1089#1090#1086#1088#1110#1085#1082#1072
          NavigatorButtons.Prior.Hint = #1055#1086#1087#1077#1088#1077#1076#1085#1110#1081
          NavigatorButtons.Next.Hint = #1053#1072#1089#1090#1091#1087#1085#1080#1081
          NavigatorButtons.NextPage.Hint = #1053#1072#1089#1090#1091#1087#1085#1072' '#1089#1090#1086#1088#1110#1085#1082#1072
          NavigatorButtons.Last.Hint = #1054#1089#1090#1072#1085#1085#1110#1081' '#1079#1072#1087#1080#1089
          NavigatorButtons.Insert.Enabled = False
          NavigatorButtons.Insert.Hint = #1042#1089#1090#1072#1074#1080#1090#1080' '#1079#1072#1087#1080#1089
          NavigatorButtons.Append.Enabled = False
          NavigatorButtons.Delete.Hint = #1042#1080#1076#1072#1083#1080#1090#1080
          NavigatorButtons.Edit.Enabled = False
          NavigatorButtons.Edit.Hint = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          NavigatorButtons.Post.Hint = #1047#1073#1077#1088#1077#1075#1090#1080
          NavigatorButtons.Cancel.Hint = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          NavigatorButtons.Refresh.Hint = #1054#1073#1085#1086#1074#1080#1090#1080
          NavigatorButtons.Filter.Hint = #1060#1110#1083#1100#1090#1088
          DataController.DataSource = QHVSource
          DataController.DetailKeyFieldNames = 'KL'
          DataController.KeyFieldNames = 'KL'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #1040#1073#1086#1085#1077#1085#1090#1110#1074': ####'
              Kind = skCount
              DisplayText = #1040#1073#1086#1085#1077#1085#1090#1110#1074
            end
            item
              Format = #1053#1072#1088#1072#1093#1086#1074#1072#1085#1086': ####.###'
              Kind = skSum
              Column = DBGrid1KUB_ALL
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'NOR_RAZN'
              Column = DBGrid1NOR_RAZN
            end
            item
              Kind = skSum
              FieldName = 'SCH_RAZN'
              Column = DBGrid1SCH_RAZN
            end
            item
              Kind = skSum
              Column = DBGrid1KOLI_P
            end
            item
              Format = #1050#1074#1072#1088#1090#1080#1088' ####'
              Kind = skCount
            end
            item
              Kind = skSum
              Column = DBGrid1PREV_NORM
            end
            item
              Kind = skSum
              Column = DBGrid1DEL_NORM
            end
            item
              Kind = skSum
              Column = DBGrid1NORM_BLICH
            end
            item
              Kind = skSum
              Column = DBGrid1KUB_NOBALANS
            end
            item
              Kind = skSum
              Column = DBGrid1KUB_ALL
            end
            item
              Kind = skSum
              Column = DBGrid1PERERAH
            end
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Column = DBGrid1FILTR
            end
            item
              Kind = skCount
              Column = DBGrid1POMPA
            end
            item
              Kind = skSum
              Column = DBGrid1SPIS
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.CellHints = True
          OptionsData.CancelOnExit = False
          OptionsView.NavigatorOffset = 20
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 10
          Bands = <
            item
              Width = 360
            end
            item
              Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
              Width = 150
            end
            item
              Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1086
              Width = 150
            end
            item
              Caption = #1053#1077#1073#1072#1083#1072#1085#1089
            end
            item
              Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
            end
            item
              Caption = #1042#1089#1100#1086#1075#1086
            end
            item
              Caption = #1030#1085#1092#1086#1088#1084#1072#1094#1110#1103
            end>
          object DBGrid1ym: TcxGridDBBandedColumn
            Caption = #1055#1077#1088#1110#1086#1076
            DataBinding.FieldName = 'ym'
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1KOLI_P: TcxGridDBBandedColumn
            Caption = #1055#1088#1086#1087#1080#1089#1072#1085#1086
            DataBinding.FieldName = 'KOLI_P'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ImmediatePopup = False
            Properties.ReadOnly = True
            Options.Editing = False
            Width = 78
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1NOR_RAZN: TcxGridDBBandedColumn
            Caption = #1056#1086#1079#1088'. '#1089#1087#1086#1078'.'
            DataBinding.FieldName = 'NOR_RAZN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.ReadOnly = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1PERE_DAY: TcxGridDBBandedColumn
            Caption = #1044#1085#1110#1074' '#1087#1086#1074#1110#1088#1082#1080
            DataBinding.FieldName = 'PERE_DAY'
            Options.Editing = False
            Width = 74
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1DATE_POK: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
            DataBinding.FieldName = 'DATE_POK'
            Options.Editing = False
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object DBGrid1SCH_CUR: TcxGridDBBandedColumn
            Caption = #1055#1086#1082#1072#1079#1085#1080#1082
            DataBinding.FieldName = 'SCH_CUR'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Editing = False
            Width = 53
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1SCH_OLD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SCH_OLD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Editing = False
            Width = 60
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1SCH_RAZN: TcxGridDBBandedColumn
            Caption = #1050#1091#1073#1080' '#1079#1072' '#1084#1110#1089'.'
            DataBinding.FieldName = 'SCH_RAZN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.ReadOnly = True
            Options.Editing = False
            Width = 73
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object DBGrid1WID: TcxGridDBBandedColumn
            Caption = #1042#1080#1076' '#1085#1072#1088#1072#1093'.'
            DataBinding.FieldName = 'WID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'VID_ZN'
              end>
            Properties.ListSource = MainForm.vid_nachSource
            MinWidth = 160
            Options.Editing = False
            Options.IncSearch = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 160
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1FILTR: TcxGridDBBandedColumn
            Caption = #1060#1110#1083#1100#1090#1088
            DataBinding.FieldName = 'FILTR'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1060#1110#1083#1100#1090#1088
                Value = 1
              end>
            Options.Editing = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object DBGrid1POMPA: TcxGridDBBandedColumn
            Caption = #1055#1086#1084#1087#1072
            DataBinding.FieldName = 'POMPA'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Value = 0
              end
              item
                Description = #1055#1086#1084#1087#1072
                Value = 1
              end>
            Options.Editing = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object DBGrid1TARIF_NAME: TcxGridDBBandedColumn
            Caption = #1058#1072#1088#1080#1092
            DataBinding.FieldName = 'TARIF_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Options.Editing = False
            Width = 186
            Position.BandIndex = 6
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object DBGrid1NORMA: TcxGridDBBandedColumn
            Caption = #1053#1086#1088#1084#1072
            DataBinding.FieldName = 'NORMA'
            Options.Editing = False
            Position.BandIndex = 6
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object DBGrid1DEL_NORM: TcxGridDBBandedColumn
            Caption = #1057#1087#1080#1089#1072#1085#1085#1103' '#1088#1086#1079#1088'.'#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'DEL_NORM'
            Options.Editing = False
            Width = 105
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1SCH_RAZN2: TcxGridDBBandedColumn
            Caption = #1050#1091#1073#1080' '#1085#1072#1089#1090'. '#1084#1110#1089#1103#1094#1100
            DataBinding.FieldName = 'SCH_RAZN2'
            Visible = False
            Width = 97
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object DBGrid1PREV_NORM: TcxGridDBBandedColumn
            Caption = #1053#1072#1082#1086#1087#1080#1095#1077#1085#1077' '#1088#1086#1079#1088'. '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'PREV_NORM'
            Options.Editing = False
            Width = 127
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object DBGrid1LICH_YEARMON: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LICH_YEARMON'
            Visible = False
            Options.Editing = False
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object DBGrid1LICH_TO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LICH_TO'
            Visible = False
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object DBGrid1R_NACH: TcxGridDBBandedColumn
            Caption = #1052#1077#1090#1086#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'R_NACH'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 216
            Position.BandIndex = 6
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object DBGrid1NORM_BLICH: TcxGridDBBandedColumn
            Caption = #1056#1086#1079#1088'. '#1085#1086#1088#1084#1072
            DataBinding.FieldName = 'NORM_BLICH'
            Options.Editing = False
            Width = 86
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1KUB_NOBALANS: TcxGridDBBandedColumn
            Caption = #1053#1077#1073#1072#1083#1072#1085#1089
            DataBinding.FieldName = 'KUB_NOBALANS'
            Options.Editing = False
            Width = 96
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1KUB_ALL: TcxGridDBBandedColumn
            Caption = #1042#1089#1100#1086#1075#1086
            DataBinding.FieldName = 'KUB_ALL'
            Options.Editing = False
            Width = 110
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1PERERAH: TcxGridDBBandedColumn
            Caption = #1055#1077#1088#1077#1088#1072#1093'. '#1085#1077#1073#1072#1083#1072#1085#1089#1091
            DataBinding.FieldName = 'PERERAH'
            Options.Editing = False
            Width = 102
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1R_NOBAL: TcxGridDBBandedColumn
            Caption = #1052#1077#1090#1086#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091' '#1085#1077#1073#1072#1083#1072#1085#1089#1091
            DataBinding.FieldName = 'R_NOBAL'
            Width = 265
            Position.BandIndex = 6
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object DBGrid1SPIS: TcxGridDBBandedColumn
            Caption = #1057#1087#1080#1089#1072#1085#1085#1103
            DataBinding.FieldName = 'SPIS'
            Options.Editing = False
            Width = 73
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGridLevel7: TcxGridLevel
          Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
          GridView = DBGrid1
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 41
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 715
        object Label35: TLabel
          Left = 15
          Top = 12
          Width = 3
          Height = 13
          Alignment = taCenter
        end
        object cxButton9: TcxButton
          Left = 7
          Top = 10
          Width = 96
          Height = 25
          Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' Excel'
          TabOrder = 0
          OnClick = cxButton9Click
          LookAndFeel.Kind = lfUltraFlat
        end
      end
    end
    object cxTabSheet13: TcxTabSheet
      Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1082#1080' '#1090#1072' '#1085#1077#1073#1072#1083#1072#1085#1089
      ImageIndex = 6
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label36: TLabel
          Left = 15
          Top = 12
          Width = 3
          Height = 13
          Alignment = taCenter
        end
        object cxButton10: TcxButton
          Left = 7
          Top = 10
          Width = 96
          Height = 25
          Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' Excel'
          TabOrder = 0
          OnClick = cxButton10Click
          LookAndFeel.Kind = lfUltraFlat
        end
        object cxButton12: TcxButton
          Left = 106
          Top = 10
          Width = 96
          Height = 25
          Caption = #1055#1086#1090#1086#1095#1085#1080#1081' '#1087#1077#1088#1110#1086#1076
          TabOrder = 1
          OnClick = cxButton12Click
          LookAndFeel.Kind = lfUltraFlat
        end
        object cxButton13: TcxButton
          Left = 208
          Top = 10
          Width = 96
          Height = 25
          Caption = #1055#1077#1088#1110#1086#1076' 12 '#1084#1110#1089'.'
          TabOrder = 2
          OnClick = cxButton13Click
          LookAndFeel.Kind = lfUltraFlat
        end
      end
      object cxGrid10: TcxGrid
        Left = 0
        Top = 41
        Width = 757
        Height = 355
        Align = alTop
        TabOrder = 1
        object cxGridDBTableView7: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = hvpererahSource
          DataController.DetailKeyFieldNames = 'KL'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1KOLI_P
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1SCH_RAZN
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1NOR_RAZN
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1KUB_NOBALANS
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1PERERAH
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1SUMNACH
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1NORM_BLICH
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellMultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1KL: TcxGridDBColumn
            DataBinding.FieldName = 'KL'
          end
          object cxGridDBTableView1YEARMONP: TcxGridDBColumn
            Caption = #1055#1077#1088#1110#1086#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1100
            DataBinding.FieldName = 'YEARMONP'
            Options.Editing = False
            Width = 103
          end
          object cxGridDBTableView1YEARMON: TcxGridDBColumn
            Caption = #1055#1077#1088#1110#1086#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
            DataBinding.FieldName = 'YEARMON'
            Options.Editing = False
            Width = 121
          end
          object cxGridDBTableView1KOLI_P: TcxGridDBColumn
            Caption = #1082'-'#1090#1100' '#1083#1102#1076'.'
            DataBinding.FieldName = 'KOLI_P'
            Options.Editing = False
            Width = 56
          end
          object cxGridDBTableView1WID: TcxGridDBColumn
            Caption = #1042#1080#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1100
            DataBinding.FieldName = 'WID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'VID_ZN'
              end>
            Properties.ListSource = MainForm.vid_nachSource
            Options.Editing = False
            Width = 147
          end
          object cxGridDBTableView1SCH_RAZN: TcxGridDBColumn
            Caption = #1050#1091#1073#1080' '#1083#1110#1095#1080#1083#1100#1085#1080#1082
            DataBinding.FieldName = 'SCH_RAZN'
            Options.Editing = False
          end
          object cxGridDBTableView1NOR_RAZN: TcxGridDBColumn
            Caption = #1056#1086#1079#1088#1072#1093'.'#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NOR_RAZN'
            Options.Editing = False
          end
          object cxGridDBTableView1NORM_BLICH: TcxGridDBColumn
            Caption = #1053#1086#1088#1084#1072
            DataBinding.FieldName = 'NORM_BLICH'
            Options.Editing = False
          end
          object cxGridDBTableView1SUMNACH: TcxGridDBColumn
            Caption = #1042#1089#1100#1086#1075#1086' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'SUMNACH'
            Options.Editing = False
          end
          object cxGridDBTableView1KUB_NOBALANS: TcxGridDBColumn
            Caption = #1053#1077#1073#1072#1083#1072#1085#1089
            DataBinding.FieldName = 'KUB_NOBALANS'
            Options.Editing = False
          end
          object cxGridDBTableView1PERERAH: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082' '#1085#1077#1073#1072#1083#1072#1085#1089#1091
            DataBinding.FieldName = 'PERERAH'
            Options.Editing = False
            Width = 74
          end
          object cxGridDBTableView1NOTEWID: TcxGridDBColumn
            Caption = #1042#1080#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
            DataBinding.FieldName = 'NOTEWID'
            Options.Editing = False
            Width = 200
          end
          object cxGridDBTableView1NOTERAW: TcxGridDBColumn
            Caption = #1056#1086#1079#1096#1080#1092#1088#1086#1074#1082#1072
            DataBinding.FieldName = 'NOTERAW'
            Options.Editing = False
            Width = 381
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView7
        end
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select first 1 *  from POKAZN where schet=:sch and (del=0 or del' +
        ' is null) order by DATE_POK desc,id desc')
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
        ' is null) order by DATE_POK desc,id desc')
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
  object IBQHV: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    OnCalcFields = IBQHVCalcFields
    SQL.Strings = (
      
        'select first 12 * from h_voda where  schet=:sch order by yearmon' +
        ' desc'
      '')
    Left = 664
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sch'
        ParamType = ptUnknown
      end>
    object IBQHVKL: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQHVYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object IBQHVPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object IBQHVFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object IBQHVWID: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object IBQHVWID_PREV: TIntegerField
      FieldName = 'WID_PREV'
      Origin = '"H_VODA"."WID_PREV"'
    end
    object IBQHVDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object IBQHVKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object IBQHVSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object IBQHVN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object IBQHVSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object IBQHVSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object IBQHVSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object IBQHVSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object IBQHVKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object IBQHVKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object IBQHVKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object IBQHVNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object IBQHVGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object IBQHVPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object IBQHVPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object IBQHVID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object IBQHVUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object IBQHVN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object IBQHVKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object IBQHVNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object IBQHVKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object IBQHVRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object IBQHVRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object IBQHVPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object IBQHVRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object IBQHVDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object IBQHVVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object IBQHVKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object IBQHVLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object IBQHVORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object IBQHVVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object IBQHVFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object IBQHVPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object IBQHVZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object IBQHVZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object IBQHVDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object IBQHVLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object IBQHVKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object IBQHVTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object IBQHVNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object IBQHVOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object IBQHVDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object IBQHVPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object IBQHVSPIS: TFloatField
      FieldName = 'SPIS'
      Origin = '"H_VODA"."SPIS"'
    end
    object IBQHVLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object IBQHVEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object IBQHVKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object IBQHVR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object IBQHVNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object IBQHVKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object IBQHVKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object IBQHVPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object IBQHVPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
    object IBQHVR_NOBAL: TIBStringField
      FieldName = 'R_NOBAL'
      Origin = '"H_VODA"."R_NOBAL"'
      Size = 100
    end
    object IBQHVym: TStringField
      FieldKind = fkCalculated
      FieldName = 'ym'
      Calculated = True
    end
  end
  object QHVSource: TDataSource
    DataSet = IBQHV
    Left = 664
    Top = 168
  end
  object hvpererah: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    DeleteSQL.Strings = (
      'delete from HV_PRH'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into HV_PRH'
      
        '  (DATE_POK, DEL_NORM, FACT, FIO, GRP_RAZN, KL, KL_UL, KOLI_P, K' +
        'UB_ALL, '
      
        '   KUB_NOBALANS, KV, N_DOM, NOR_RAZN, NORM_BLICH, NOTERAW, NOTEW' +
        'ID, ORG, '
      
        '   PERE_RAZN, PERERAH, POD, SCH_RAZN, SCHET, UL, WID, WID_PREV, ' +
        'YEARMON, '
      '   YEARMONP)'
      'values'
      
        '  (:DATE_POK, :DEL_NORM, :FACT, :FIO, :GRP_RAZN, :KL, :KL_UL, :K' +
        'OLI_P, '
      
        '   :KUB_ALL, :KUB_NOBALANS, :KV, :N_DOM, :NOR_RAZN, :NORM_BLICH,' +
        ' :NOTERAW, '
      
        '   :NOTEWID, :ORG, :PERE_RAZN, :PERERAH, :POD, :SCH_RAZN, :SCHET' +
        ', :UL, '
      '   :WID, :WID_PREV, :YEARMON, :YEARMONP)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  YEARMONP,'
      '  FIO,'
      '  WID,'
      '  WID_PREV,'
      '  SCHET,'
      '  SCH_RAZN,'
      '  KOLI_P,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_RAZN,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  POD,'
      '  DATE_POK,'
      '  ORG,'
      '  DEL_NORM,'
      '  KL_UL,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PERERAH,'
      '  NOTEWID,'
      '  FACT,'
      '  NOTERAW'
      'from HV_PRH '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'select HV_PRH.*,(sch_razn+nor_razn+norm_blich) sumnach  from HV_' +
        'PRH where yearmonp>=:ym and ul=:ul and n_dom=:ndom order by year' +
        'mon,yearmonp,kl')
    ModifySQL.Strings = (
      'update HV_PRH'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DEL_NORM = :DEL_NORM,'
      '  FACT = :FACT,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KOLI_P = :KOLI_P,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  N_DOM = :N_DOM,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NOTERAW = :NOTERAW,'
      '  NOTEWID = :NOTEWID,'
      '  ORG = :ORG,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  POD = :POD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCHET = :SCHET,'
      '  UL = :UL,'
      '  WID = :WID,'
      '  WID_PREV = :WID_PREV,'
      '  YEARMON = :YEARMON,'
      '  YEARMONP = :YEARMONP'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_HV_PER_ID'
    Left = 688
    Top = 40
    object hvpererahKL: TIntegerField
      FieldName = 'KL'
      Origin = '"HV_PRH"."KL"'
      Required = True
    end
    object hvpererahYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"HV_PRH"."YEARMON"'
    end
    object hvpererahYEARMONP: TIntegerField
      FieldName = 'YEARMONP'
      Origin = '"HV_PRH"."YEARMONP"'
    end
    object hvpererahFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"HV_PRH"."FIO"'
      Size = 35
    end
    object hvpererahWID: TSmallintField
      FieldName = 'WID'
      Origin = '"HV_PRH"."WID"'
    end
    object hvpererahWID_PREV: TIntegerField
      FieldName = 'WID_PREV'
      Origin = '"HV_PRH"."WID_PREV"'
    end
    object hvpererahSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"HV_PRH"."SCHET"'
      Size = 10
    end
    object hvpererahSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"HV_PRH"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"HV_PRH"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object hvpererahNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"HV_PRH"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"HV_PRH"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"HV_PRH"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvpererahUL: TIBStringField
      FieldName = 'UL'
      Origin = '"HV_PRH"."UL"'
      Size = 70
    end
    object hvpererahN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"HV_PRH"."N_DOM"'
      Size = 10
    end
    object hvpererahKV: TIBStringField
      FieldName = 'KV'
      Origin = '"HV_PRH"."KV"'
      Size = 10
    end
    object hvpererahPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"HV_PRH"."POD"'
    end
    object hvpererahDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"HV_PRH"."DATE_POK"'
    end
    object hvpererahORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"HV_PRH"."ORG"'
    end
    object hvpererahDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"HV_PRH"."DEL_NORM"'
    end
    object hvpererahKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"HV_PRH"."KL_UL"'
    end
    object hvpererahNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"HV_PRH"."NORM_BLICH"'
    end
    object hvpererahKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"HV_PRH"."KUB_NOBALANS"'
    end
    object hvpererahKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"HV_PRH"."KUB_ALL"'
    end
    object hvpererahPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"HV_PRH"."PERERAH"'
    end
    object hvpererahNOTEWID: TIBStringField
      FieldName = 'NOTEWID'
      Origin = '"HV_PRH"."NOTEWID"'
      Size = 100
    end
    object hvpererahFACT: TIntegerField
      FieldName = 'FACT'
      Origin = '"HV_PRH"."FACT"'
    end
    object hvpererahNOTERAW: TIBStringField
      FieldName = 'NOTERAW'
      Origin = '"HV_PRH"."NOTERAW"'
      Size = 200
    end
    object hvpererahSUMNACH: TFloatField
      FieldName = 'SUMNACH'
      ProviderFlags = []
    end
  end
  object hvpererahSource: TDataSource
    DataSet = hvpererah
    Left = 688
    Top = 72
  end
end
