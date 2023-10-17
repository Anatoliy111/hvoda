object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1050#1072#1088#1090#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
  ClientHeight = 541
  ClientWidth = 688
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
    Width = 688
    Height = 153
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
      Width = 79
      Height = 13
      Alignment = taCenter
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1088#1086#1078'.'
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
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 24
      Top = 118
      DataBinding.DataField = 'KOLI_P'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 79
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 24
      Top = 72
      DataBinding.DataField = 'UL'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 249
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 296
      Top = 72
      DataBinding.DataField = 'N_DOM'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 49
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 24
      Top = 27
      DataBinding.DataField = 'SCHET'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 201
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 375
      Top = 72
      DataBinding.DataField = 'KV'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 49
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 137
      Top = 118
      Caption = #1054#1088#1075#1072#1085#1110#1079#1072#1094#1110#1103
      DataBinding.DataField = 'ORG'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 5
      Width = 88
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 231
      Top = 118
      DataBinding.DataField = 'VID_RN'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'VID_ZN'
        end>
      Properties.ListSource = MainForm.vid_rnSource
      TabOrder = 6
      Width = 145
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 241
      Top = 26
      DataBinding.DataField = 'FIO'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 315
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 382
      Top = 118
      Caption = #1060#1110#1083#1100#1090#1088
      DataBinding.DataField = 'FILTR'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 8
      Width = 59
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 471
      Top = 118
      Caption = #1055#1086#1084#1087#1072
      DataBinding.DataField = 'POMPA'
      DataBinding.DataSource = MainForm.hvdSource
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 9
      Width = 58
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 153
    Width = 688
    Height = 388
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1TIP: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072' '
        DataBinding.FieldName = 'TIP'
      end
      object cxGrid1DBTableView1N_LICH: TcxGridDBColumn
        Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
        DataBinding.FieldName = 'N_LICH'
        Width = 115
      end
      object cxGrid1DBTableView1DATA_VIP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1089#1090#1072#1085'.'
        DataBinding.FieldName = 'DATA_VIP'
        Width = 87
      end
      object cxGrid1DBTableView1DATA_POV: TcxGridDBColumn
        Caption = #1058#1077#1088#1084#1110#1085' '#1087#1086#1074#1110#1088#1082#1080' '
        DataBinding.FieldName = 'DATA_POV'
        Width = 100
      end
      object cxGrid1DBTableView1DATA_INP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1110#1085#1076'.'#1087#1083'.'
        DataBinding.FieldName = 'DATA_INP'
      end
      object cxGrid1DBTableView1N_INPLOMB: TcxGridDBColumn
        Caption = #8470' '#1110#1085#1076#1080#1082#1072#1090#1086#1088#1085#1086#1111' '#1087#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'N_INPLOMB'
        Width = 131
      end
      object cxGrid1DBTableView1DATA_MGP: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1084#1072#1075'.'#1087#1083'.'
        DataBinding.FieldName = 'DATA_MGP'
      end
      object cxGrid1DBTableView1N_MGPLOMB: TcxGridDBColumn
        Caption = #8470' '#1072#1085#1090#1080#1084#1072#1075#1085#1110#1090#1085#1086#1111' '#1087#1083#1086#1084#1073#1080
        DataBinding.FieldName = 'N_MGPLOMB'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 153
    Width = 688
    Height = 388
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 388
    ClientRectRight = 688
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 688
        Height = 364
        ActivePage = cxTabSheet4
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 364
        ClientRectRight = 688
        ClientRectTop = 24
        object cxTabSheet4: TcxTabSheet
          Caption = #1055#1086#1090#1086#1095#1085#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1080
          ImageIndex = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 688
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
              Left = 375
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
            object cxGroupBox1: TcxGroupBox
              Left = 175
              Top = 28
              Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1077' '#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
              TabOrder = 3
              Height = 41
              Width = 266
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
                Width = 82
                Height = 13
                Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1082#1091#1073#1110#1074' :'
              end
              object cxDBLabel2: TcxDBLabel
                Left = 93
                Top = 16
                DataBinding.DataField = 'PERE_DAY'
                DataBinding.DataSource = MainForm.hvdSource
                Height = 21
                Width = 19
              end
              object cxDBLabel3: TcxDBLabel
                Left = 204
                Top = 15
                DataBinding.DataField = 'NOR_RAZN'
                DataBinding.DataSource = MainForm.hvdSource
                Height = 19
                Width = 59
              end
            end
            object cxDBLabel1: TcxDBLabel
              Left = 137
              Top = 30
              DataBinding.DataField = 'LICH_TO'
              DataBinding.DataSource = MainForm.hvdSource
              Height = 21
              Width = 19
            end
            object cxButton5: TcxButton
              Left = 479
              Top = 3
              Width = 98
              Height = 25
              Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082
              TabOrder = 5
              OnClick = cxButton5Click
              LookAndFeel.Kind = lfUltraFlat
            end
          end
          object cxGrid4: TcxGrid
            Left = 0
            Top = 73
            Width = 688
            Height = 267
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
            Width = 688
            Height = 299
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
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
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 688
            Height = 41
            Align = alTop
            TabOrder = 1
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
        Width = 688
        Height = 364
        ActivePage = cxTabSheet7
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 364
        ClientRectRight = 688
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = #1055#1086#1090#1086#1095#1085#1110' '#1087#1083#1086#1084#1073#1080
          ImageIndex = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 688
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
            Width = 688
            Height = 299
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
            Width = 688
            Height = 340
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
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 688
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 15
          Top = 12
          Width = 3
          Height = 13
          Alignment = taCenter
        end
        object Label3: TLabel
          Left = 432
          Top = 5
          Width = 124
          Height = 13
          Alignment = taCenter
          Caption = #1050#1091#1073#1080' '#1079#1072' '#1087#1086#1090#1086#1095#1085#1080#1081' '#1084#1110#1089#1103#1094#1100
        end
        object cxButton8: TcxButton
          Left = 15
          Top = 16
          Width = 106
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082
          TabOrder = 0
          OnClick = cxButton8Click
          LookAndFeel.Kind = lfUltraFlat
        end
        object cxButton9: TcxButton
          Left = 127
          Top = 16
          Width = 114
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082
          TabOrder = 1
          OnClick = cxButton9Click
          LookAndFeel.Kind = lfUltraFlat
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 432
          Top = 22
          DataBinding.DataField = 'SCH_RAZN'
          DataBinding.DataSource = MainForm.hvdSource
          TabOrder = 2
          Width = 121
        end
      end
      object cxGrid6: TcxGrid
        Left = 0
        Top = 49
        Width = 688
        Height = 315
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView3: TcxGridDBTableView
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
          object cxGridDBTableView3YEARMON: TcxGridDBColumn
            Caption = #1055#1077#1088#1110#1086#1076
            DataBinding.FieldName = 'YEARMON'
          end
          object cxGridDBTableView3DATE_POK: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
            DataBinding.FieldName = 'DATE_POK'
            SortIndex = 0
            SortOrder = soDescending
          end
          object cxGridDBTableView3POKAZN: TcxGridDBColumn
            Caption = #1055#1086#1082#1072#1079#1085#1080#1082
            DataBinding.FieldName = 'POKAZN'
          end
          object cxGridDBTableView3PKZ: TcxGridDBColumn
            Caption = #1042#1080#1076' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
            DataBinding.FieldName = 'PKZ'
            Width = 193
          end
          object cxGridDBTableView3LICH: TcxGridDBColumn
            Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
            DataBinding.FieldName = 'LICH'
            Width = 172
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    SQL.Strings = (
      
        'select first 1 *  from POKAZN where schet=:sch and date_zn is nu' +
        'll order by DATE_POK desc')
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
      
        'select first 1 *  from POKAZN where schet=:sch and date_zn is nu' +
        'll order by DATE_POK desc')
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
    Left = 640
    Top = 88
  end
end
