object MainForm: TMainForm
  Left = 197
  Top = 72
  Caption = #1042#1086#1076#1086#1087#1086#1089#1090#1072#1095#1072#1085#1085#1103
  ClientHeight = 631
  ClientWidth = 1017
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 112
    Width = 1017
    Height = 519
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    OnPageChanging = cxPageControl1PageChanging
    ExplicitTop = 41
    ExplicitHeight = 592
    ClientRectBottom = 519
    ClientRectRight = 1017
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 0
      OnShow = cxTabSheet1Show
      ExplicitHeight = 568
      object Image1: TImage
        Left = 608
        Top = 232
        Width = 105
        Height = 105
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1017
        Height = 28
        Align = dalTop
        BarManager = BarManager
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 28
        Width = 1017
        Height = 467
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 469
        object DBGrid1: TcxGridDBBandedTableView
          OnKeyDown = DBGrid1KeyDown
          NavigatorButtons.OnButtonClick = DBGrid1NavigatorButtonsButtonClick
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
          OnCustomDrawCell = DBGrid1CustomDrawCell
          OnEditing = DBGrid1Editing
          OnEditKeyDown = DBGrid1EditKeyDown
          DataController.DataSource = DataAllSource
          DataController.KeyFieldNames = 'KL'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'GRP_RAZN'
            end
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
              Column = DBGrid1FILTR
            end
            item
              Kind = skSum
              Column = DBGrid1POMPA
            end
            item
              Kind = skCount
              Column = DBGrid1SCHET
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
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.CellHints = True
          OptionsData.CancelOnExit = False
          OptionsView.NavigatorOffset = 20
          OptionsView.Footer = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 10
          Styles.ContentEven = cxStyle1
          Bands = <
            item
              Width = 924
            end
            item
              Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
              Width = 142
            end
            item
              Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1082#1086#1074#1086
              Width = 502
            end
            item
              Caption = #1044#1086#1076#1072#1090#1082#1086#1074#1086
              Width = 388
            end
            item
              Caption = #1030#1085#1092#1086#1088#1084#1072#1094#1110#1103
            end
            item
              Caption = #1060#1110#1083#1100#1090#1088
            end>
          object DBGrid1DOM: TcxGridDBBandedColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'DOM'
            Options.Editing = False
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1SCHET: TcxGridDBBandedColumn
            Caption = #1056#1072#1093#1091#1085#1086#1082
            DataBinding.FieldName = 'SCHET'
            Options.Editing = False
            Width = 61
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1FIO: TcxGridDBBandedColumn
            Caption = #1055#1030#1041
            DataBinding.FieldName = 'FIO'
            Options.Editing = False
            Options.Filtering = False
            Width = 179
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object DBGrid1KOLI_P: TcxGridDBBandedColumn
            Caption = #1055#1088#1086#1087#1080#1089#1072#1085#1086
            DataBinding.FieldName = 'KOLI_P'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ImmediatePopup = False
            Properties.ReadOnly = True
            Properties.OnCloseUp = DBGrid1KOLI_PPropertiesCloseUp
            Properties.OnPopup = DBGrid1KOLI_PPropertiesPopup
            Options.Editing = False
            Width = 78
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1NOR_RAZN: TcxGridDBBandedColumn
            Caption = #1056#1086#1079#1088'. '#1089#1087#1086#1078'.'
            DataBinding.FieldName = 'NOR_RAZN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.ReadOnly = False
            Properties.OnChange = DBGrid1NOR_RAZNPropertiesChange
            Width = 67
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1PERE_DAY: TcxGridDBBandedColumn
            Caption = #1044#1085#1110#1074' '#1087#1086#1074#1110#1088#1082#1080
            DataBinding.FieldName = 'PERE_DAY'
            Options.Editing = False
            Width = 74
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1DATE_POK: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
            DataBinding.FieldName = 'DATE_POK'
            Options.Editing = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object DBGrid1Column2: TcxGridDBBandedColumn
            Caption = '...'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = DBGrid1Column2PropertiesButtonClick
            Options.Filtering = False
            Options.ShowEditButtons = isebAlways
            Options.Grouping = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 10
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
            Properties.ListSource = vid_nachSource
            MinWidth = 160
            Options.Editing = False
            Options.IncSearch = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 160
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object DBGrid1Column1: TcxGridDBBandedColumn
            Caption = '...'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.AutoSelect = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = DBGrid1Column1PropertiesButtonClick
            Options.Filtering = False
            Options.ShowEditButtons = isebAlways
            Options.Grouping = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object DBGrid1UL: TcxGridDBBandedColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Options.Editing = False
            Width = 169
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object DBGrid1N_DOM: TcxGridDBBandedColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'N_DOM'
            Options.Editing = False
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object DBGrid1KV: TcxGridDBBandedColumn
            Caption = #1050#1074#1072#1088#1090#1080#1088#1072
            DataBinding.FieldName = 'KV'
            Options.Editing = False
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object DBGrid1NOTE: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1084#1110#1090#1082#1072
            DataBinding.FieldName = 'NOTE'
            Width = 228
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object DBGrid1LICH_POV: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1074#1110#1088#1082#1080
            DataBinding.FieldName = 'LICH_POV'
            Options.Editing = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 7
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
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1POMPA: TcxGridDBBandedColumn
            Caption = #1055#1086#1084#1087#1072
            DataBinding.FieldName = 'POMPA'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = ImageList1
            Properties.Items = <
              item
                Value = 0
              end
              item
                Description = #1055#1086#1084#1087#1072
                Value = 1
              end>
            Options.Editing = False
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1TARIF_NAME: TcxGridDBBandedColumn
            Caption = #1058#1072#1088#1080#1092
            DataBinding.FieldName = 'TARIF_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 186
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1NORMA: TcxGridDBBandedColumn
            Caption = #1053#1086#1088#1084#1072
            DataBinding.FieldName = 'NORMA'
            Options.Editing = False
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object DBGrid1DEL_NORM: TcxGridDBBandedColumn
            Caption = #1057#1087#1080#1089#1072#1085#1085#1103' '#1088#1086#1079#1088'.'#1089#1087#1086#1078#1080#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'DEL_NORM'
            Options.Editing = False
            Width = 134
            Position.BandIndex = 2
            Position.ColIndex = 2
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
            Caption = #1053#1072#1082#1086#1087#1080#1095#1077#1085#1072' '#1085#1086#1088#1084#1072
            DataBinding.FieldName = 'PREV_NORM'
            Options.Editing = False
            Width = 127
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object DBGrid1LICH_YEARMON: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LICH_YEARMON'
            Visible = False
            Options.Editing = False
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object DBGrid1LICH_TO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LICH_TO'
            Visible = False
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object DBGrid1R_NACH: TcxGridDBBandedColumn
            Caption = #1052#1077#1090#1086#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
            DataBinding.FieldName = 'R_NACH'
            Width = 202
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DBGrid1NORM_BLICH: TcxGridDBBandedColumn
            Caption = #1056#1086#1079#1088'. '#1085#1086#1088#1084#1072
            DataBinding.FieldName = 'NORM_BLICH'
            Options.Editing = False
            Width = 62
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DBGrid1KUB_NOBALANS: TcxGridDBBandedColumn
            Caption = #1053#1077#1073#1072#1083#1072#1085#1089
            DataBinding.FieldName = 'KUB_NOBALANS'
            Options.Editing = False
            Width = 76
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object DBGrid1KUB_ALL: TcxGridDBBandedColumn
            Caption = #1042#1089#1100#1086#1075#1086
            DataBinding.FieldName = 'KUB_ALL'
            Options.Editing = False
            Styles.Content = cxStyle2
            Width = 83
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object DBGrid1PERERAH: TcxGridDBBandedColumn
            Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
            DataBinding.FieldName = 'PERERAH'
            Options.Editing = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
          GridView = DBGrid1
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #1070#1088'.'#1086#1089#1086#1073#1080'/'#1060#1054#1055
      ImageIndex = 1
      OnShow = cxTabSheet4Show
      ExplicitHeight = 568
      object Image2: TImage
        Left = 608
        Top = 232
        Width = 105
        Height = 105
      end
      object dxBarDockControl4: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1017
        Height = 28
        Align = dalTop
        BarManager = BarManager
        SunkenBorder = False
        UseOwnSunkenBorder = True
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 28
        Width = 1017
        Height = 467
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 469
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          OnKeyDown = cxGridDBBandedTableView1KeyDown
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
          OnEditKeyDown = cxGridDBBandedTableView1EditKeyDown
          DataController.DataSource = DataAllSource
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'GRP_RAZN'
            end
            item
              Kind = skSum
              FieldName = 'NOR_RAZN'
            end
            item
              Kind = skSum
              FieldName = 'SCH_RAZN'
              Column = cxGridDBBandedColumn11
            end
            item
              Kind = skSum
            end
            item
              Format = #1050#1074#1072#1088#1090#1080#1088' ####'
              Kind = skCount
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
              Column = cxGridDBBandedTableView1PERERAH
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.CellHints = True
          OptionsData.CancelOnExit = False
          OptionsView.NavigatorOffset = 20
          OptionsView.Footer = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 10
          Styles.ContentEven = cxStyle1
          Bands = <
            item
              Width = 1072
            end
            item
              Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
              Width = 221
            end
            item
              Caption = #1044#1086#1076#1072#1090#1082#1086#1074#1086
            end
            item
              Caption = #1030#1085#1092#1086#1088#1084#1072#1094#1110#1103
            end>
          object cxGridDBBandedColumn2: TcxGridDBBandedColumn
            Caption = #1054#1089'.'#1088#1072#1093'/'#1028#1044#1056#1055#1054#1059'/'#1030#1055#1053
            DataBinding.FieldName = 'SCHET'
            Options.Editing = False
            Width = 176
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn3: TcxGridDBBandedColumn
            Caption = #1053#1040#1047#1042#1040
            DataBinding.FieldName = 'FIO'
            Options.Editing = False
            Options.Filtering = False
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn7: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
            DataBinding.FieldName = 'DATE_POK'
            Options.Editing = False
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn8: TcxGridDBBandedColumn
            Caption = '...'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = DBGrid1Column2PropertiesButtonClick
            Options.Filtering = False
            Options.ShowEditButtons = isebAlways
            Options.Grouping = False
            Options.Sorting = False
            Width = 22
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn9: TcxGridDBBandedColumn
            Caption = #1055#1086#1082#1072#1079#1085#1080#1082
            DataBinding.FieldName = 'SCH_CUR'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Editing = False
            Width = 55
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn10: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SCH_OLD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Editing = False
            Width = 60
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn11: TcxGridDBBandedColumn
            Caption = #1050#1091#1073#1080' '#1079#1072' '#1084#1110#1089'.'
            DataBinding.FieldName = 'SCH_RAZN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.ReadOnly = True
            Options.Editing = False
            Width = 72
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn12: TcxGridDBBandedColumn
            Caption = #1042#1080#1076' '#1085#1072#1088#1072#1093'.'
            DataBinding.FieldName = 'WID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'VID_ZN'
              end>
            Properties.ListSource = vid_nachSource
            Options.Editing = False
            Width = 154
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn13: TcxGridDBBandedColumn
            Caption = '...'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.AutoSelect = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = DBGrid1Column1PropertiesButtonClick
            Options.Filtering = False
            Options.ShowEditButtons = isebAlways
            Options.Grouping = False
            Options.Sorting = False
            Width = 21
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn14: TcxGridDBBandedColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Options.Editing = False
            Width = 115
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn15: TcxGridDBBandedColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'N_DOM'
            Options.Editing = False
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn16: TcxGridDBBandedColumn
            Caption = #1050#1074#1072#1088#1090#1080#1088#1072
            DataBinding.FieldName = 'KV'
            Options.Editing = False
            Width = 52
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn18: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1074#1110#1088#1082#1080
            DataBinding.FieldName = 'LICH_POV'
            Options.Editing = False
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1PERE_DAY: TcxGridDBBandedColumn
            Caption = #1050'-'#1090#1100' '#1076#1085#1110#1074
            DataBinding.FieldName = 'PERE_DAY'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1DEL_NORM: TcxGridDBBandedColumn
            Caption = #1057#1087#1080#1089#1072#1085#1085#1103' '#1088#1086#1079#1088'. '#1089#1087#1086#1078'.'
            DataBinding.FieldName = 'DEL_NORM'
            Width = 119
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1PREV_NORM: TcxGridDBBandedColumn
            Caption = #1053#1072#1082#1086#1087#1080#1095#1077#1085#1077' '#1088#1086#1079#1088'. '#1089#1087#1086#1078#1080#1074'.'
            DataBinding.FieldName = 'PREV_NORM'
            Width = 138
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1R_NACH: TcxGridDBBandedColumn
            Caption = #1052#1077#1090#1086#1076' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
            DataBinding.FieldName = 'R_NACH'
            Width = 257
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1NOR_RAZN: TcxGridDBBandedColumn
            Caption = #1056#1086#1079#1088'. '#1089#1087#1086#1078'.'
            DataBinding.FieldName = 'NOR_RAZN'
            Width = 72
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1NOTE: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1084#1110#1090#1082#1072
            DataBinding.FieldName = 'NOTE'
            Width = 180
            Position.BandIndex = 3
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1NORM_BLICH: TcxGridDBBandedColumn
            Caption = #1056#1086#1079#1088'.'#1085#1086#1088#1084#1072
            DataBinding.FieldName = 'NORM_BLICH'
            Width = 68
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1KUB_NOBALANS: TcxGridDBBandedColumn
            Caption = #1053#1077#1073#1072#1083#1072#1085#1089
            DataBinding.FieldName = 'KUB_NOBALANS'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1KUB_ALL: TcxGridDBBandedColumn
            Caption = #1042#1089#1100#1086#1075#1086
            DataBinding.FieldName = 'KUB_ALL'
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1KOLI_P: TcxGridDBBandedColumn
            Caption = #1050'-'#1090#1100' '#1086#1089#1110#1073' '#1087#1086' '#1087#1083#1086#1097#1110
            DataBinding.FieldName = 'KOLI_P'
            Options.Editing = False
            Width = 98
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1PLOSCH_UR: TcxGridDBBandedColumn
            Caption = #1055#1083#1086#1097#1072' '#1084'2'
            DataBinding.FieldName = 'PLOSCH_UR'
            Options.Editing = False
            Width = 67
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1NORMA: TcxGridDBBandedColumn
            Caption = #1053#1086#1088#1084#1072
            DataBinding.FieldName = 'NORMA'
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1PERERAH: TcxGridDBBandedColumn
            Caption = #1055#1077#1088#1077#1088#1072#1093#1091#1085#1086#1082
            DataBinding.FieldName = 'PERERAH'
            Options.Editing = False
            Width = 76
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080
          GridView = cxGridDBBandedTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1041#1091#1076#1080#1085#1082#1086#1074#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 3
      ExplicitHeight = 568
      object dxBarDockControl3: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1017
        Height = 28
        Align = dalTop
        BarManager = BarManager
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 28
        Width = 1017
        Height = 467
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 469
        object DBGrid3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Hint = #1055#1077#1088#1096#1080#1081' '#1079#1072#1087#1080#1089
          NavigatorButtons.PriorPage.Hint = #1055#1086#1087#1077#1088#1077#1076#1085#1103' '#1089#1090#1086#1088#1110#1085#1082#1072
          NavigatorButtons.Prior.Hint = #1055#1086#1087#1077#1088#1077#1076#1085#1110#1081
          NavigatorButtons.Next.Hint = #1053#1072#1089#1090#1091#1087#1085#1080#1081
          NavigatorButtons.NextPage.Hint = #1053#1072#1089#1090#1091#1087#1085#1072' '#1089#1090#1086#1088#1110#1085#1082#1072
          NavigatorButtons.Last.Hint = #1054#1089#1090#1072#1085#1085#1110#1081' '#1079#1072#1087#1080#1089
          NavigatorButtons.Insert.Hint = #1042#1089#1090#1072#1074#1080#1090#1080' '#1079#1072#1087#1080#1089
          NavigatorButtons.Delete.Hint = #1042#1080#1076#1072#1083#1080#1090#1080
          NavigatorButtons.Edit.Hint = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
          NavigatorButtons.Post.Hint = #1047#1073#1077#1088#1077#1075#1090#1080
          NavigatorButtons.Cancel.Hint = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          NavigatorButtons.Refresh.Hint = #1054#1073#1085#1086#1074#1080#1090#1080
          NavigatorButtons.Filter.Hint = #1060#1110#1083#1100#1090#1088
          DataController.DataSource = grpSource
          DataController.KeyFieldNames = 'KL'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = DBGrid3SCH_KUB
            end
            item
              Kind = skSum
              Column = DBGrid3SCH_UR
            end
            item
              Kind = skSum
              Column = DBGrid3SCH_NAS
            end
            item
              Kind = skSum
              Column = DBGrid3SCH_SUMABON
            end
            item
              Kind = skSum
              Column = DBGrid3SCH_RAZN
            end
            item
              Kind = skCount
              Column = DBGrid3TIP
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <>
            end>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsData.CancelOnExit = False
          OptionsView.Footer = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 10
          object DBGrid3TIP: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
            DataBinding.FieldName = 'TIP'
            Options.Editing = False
          end
          object DBGrid3N_LICH: TcxGridDBColumn
            Caption = #8470' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
            DataBinding.FieldName = 'N_LICH'
            Options.Editing = False
          end
          object DBGrid3UL: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'UL'
            Options.Editing = False
            Width = 186
          end
          object DBGrid3N_DOM: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'N_DOM'
            Options.Editing = False
          end
          object DBGrid3SCH_OLD: TcxGridDBColumn
            Caption = #1055#1086#1082#1072#1079#1085#1080#1082' '#1084#1080#1085#1091#1083#1080#1081
            DataBinding.FieldName = 'SCH_OLD'
            Options.Editing = False
            Width = 106
          end
          object DBGrid3SCH_CUR: TcxGridDBColumn
            Caption = #1055#1086#1082#1072#1079#1085#1080#1082' '#1090#1077#1087#1077#1088#1110#1096#1085#1110#1081
            DataBinding.FieldName = 'SCH_CUR'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.OnValidate = DBGrid3SCH_CURPropertiesValidate
            Width = 115
          end
          object DBGrid3SCH_KUB: TcxGridDBColumn
            Caption = #1050#1091#1073#1080' '#1087#1086' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1091
            DataBinding.FieldName = 'SCH_KUB'
            Options.Editing = False
            Width = 103
          end
          object DBGrid3SCH_UR: TcxGridDBColumn
            Caption = #1050#1091#1073#1080' '#1102#1088'.'#1086#1089#1086#1073#1080
            DataBinding.FieldName = 'SCH_UR'
            Width = 81
          end
          object DBGrid3SCH_NAS: TcxGridDBColumn
            Caption = #1050#1091#1073#1080' '#1085#1072#1089#1077#1083#1077#1085#1085#1103
            DataBinding.FieldName = 'SCH_NAS'
            Width = 87
          end
          object DBGrid3SCH_SUMABON: TcxGridDBColumn
            Caption = #1042#1089#1100#1086#1075#1086' '#1087#1086' '#1072#1073#1086#1085#1077#1085#1090#1072#1084
            DataBinding.FieldName = 'SCH_SUMABON'
            Width = 115
          end
          object DBGrid3SCH_RAZN: TcxGridDBColumn
            Caption = #1056#1110#1079#1085#1080#1094#1103
            DataBinding.FieldName = 'SCH_RAZN'
            Options.Editing = False
          end
          object DBGrid3NOTE: TcxGridDBColumn
            DataBinding.FieldName = 'NOTE'
            Width = 144
          end
        end
        object cxGridLevel9: TcxGridLevel
          Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080' '#1087#1086' '#1087#1110#1076#1111#1079#1076#1072#1084
          GridView = DBGrid3
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 106
    Width = 1017
    Height = 6
    Align = alTop
    BorderStyle = bsSingle
    Color = clCream
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 1017
    Height = 35
    Align = alTop
    TabOrder = 6
    object cxLabel1: TcxLabel
      Left = 136
      Top = 8
      Caption = #1059#1074#1072#1075#1072'!'
      Style.TextColor = clRed
    end
    object cxButton2: TcxButton
      Left = 0
      Top = 0
      Width = 113
      Height = 35
      Caption = #1054#1085#1086#1074#1080#1090#1080
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object BarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1052#1077#1085#1102
      #1057#1077#1088#1074#1110#1089)
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = ImageList1
    ImageOptions.LargeImages = ImageList1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    MenuAnimations = maRandom
    PopupMenuLinks = <>
    RegistryPath = '\Software\Kushko\GKU_HVD\'
    Style = bmsOffice11
    UseSystemFont = True
    Left = 502
    Top = 8
    DockControlHeights = (
      0
      0
      71
      0)
    object BarManagerBar1: TdxBar
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 43
      FloatTop = 96
      FloatClientWidth = 132
      FloatClientHeight = 38
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar2: TdxBar
      AllowClose = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 165
      FloatTop = 155
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 113
          Visible = True
          ItemName = 'dxBarLookupCombo2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object BarManagerBar3: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 255
      FloatTop = 272
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem2'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLookupCombo1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object BarManagerBar4: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 151
      FloatTop = 109
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OldName = 'Custom 3'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = True
    end
    object BarManagerBar5: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 151
      FloatTop = 109
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarButton39'
        end>
      OldName = 'Custom 4'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object BarManagerBar6: TdxBar
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockControl = dxBarDockControl4
      DockedDockControl = dxBarDockControl4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 778
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButtonExit: TdxBarLargeButton
      Action = ActionExit
      Category = 0
      HotImageIndex = 38
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1060#1072#1081#1083
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButtonExit'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1057#1077#1088#1074#1110#1089
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    object dxBarButton2: TdxBarButton
      Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
      Category = 0
      Hint = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarLookupCombo1: TdxBarLookupCombo
      Caption = #1041#1091#1076#1080#1085#1086#1082
      Category = 0
      Hint = #1041#1091#1076#1080#1085#1086#1082
      Visible = ivNever
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD000000000000000D0FFFF0FFFFFFFF0D0F77F0F777777F0D0CCCC0CCCCCC
        CC0D0C77C0C777777C0D0CCCC0CCCCCCCC0D0F77F0F777777F0D0FFFF0FFFFFF
        FF0D0F77F0F777777F0D0FFFF0FFFFFFFF0D000000000000000D0FFFCCCCFFF0
        DDDD0F777777FFF0DDDD0FFFCCCCFFF0DDDD000000000000DDDD}
      ShowCaption = True
      Width = 100
      ShowEditor = False
      KeyField = 'DOM'
      ListField = 'DOM'
      ListSource = domSource
      RowCount = 30
      OnKeyValueChange = dxBarLookupCombo2KeyValueChange
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = ActionExport
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Caption = #1042#1089#1110' '#1073#1091#1076#1080#1085#1082#1080'  '
      Category = 0
      Hint = #1042#1089#1110' '#1073#1091#1076#1080#1085#1082#1080'  '
      Visible = ivNever
      ButtonStyle = bsChecked
      Lowered = True
      OnClick = dxBarButton4Click
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = ActionPrint
      Category = 0
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        2000000000004006000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF0000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FF00
        FF0000000000FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1044#1088#1091#1082
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        2000000000004006000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF0000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FF00
        FF0000000000FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end>
    end
    object dxBarButton5: TdxBarButton
      Action = ActionPrintTotal
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082
      Category = 0
      Hint = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082
      Visible = ivAlways
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        2000000000004006000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        0000FF000000FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF0000000000BDBD
        BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF0000000000BDBD
        BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF0000000000BDBD
        BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD
        BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF0000000000BDBD
        BD0000000000000000000000000000000000000000000000000000000000BDBD
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00000000000000000000000000FFFF
        000000000000FFFF000000000000BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF0000000000BDBD
        BD0000000000000000000000000000000000000000000000000000000000BDBD
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF0000000000BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007B7B7B00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Lowered = True
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      Category = 0
      Hint = #1042#1080#1076#1072#1083#1080#1090#1080
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton3Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1042#1089#1100#1086#1075#1086
      Category = 0
      Hint = #1042#1089#1100#1086#1075#1086
      Visible = ivAlways
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        2000000000004006000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1044#1080#1079#1072#1081#1085#1077#1088' '#1079#1074#1110#1090#1110#1074
      Category = 0
      Hint = #1044#1080#1079#1072#1081#1085#1077#1088' '#1079#1074#1110#1090#1110#1074
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarLookupCombo2: TdxBarLookupCombo
      Caption = #1044#1072#1090#1072
      Category = 0
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD000000000000000D0FFFF0FFFFFFFF0D0F77F0F777777F0D0CCCC0CCCCCC
        CC0D0C77C0C777777C0D0CCCC0CCCCCCCC0D0F77F0F777777F0D0FFFF0FFFFFF
        FF0D0F77F0F777777F0D0FFFF0FFFFFFFF0D000000000000000D0FFFCCCCFFF0
        DDDD0F777777FFF0DDDD0FFFCCCCFFF0DDDD000000000000DDDD}
      ShowCaption = True
      Width = 100
      ShowEditor = False
      KeyField = 'YEARMON'
      ListField = 'ym'
      ListSource = DataSource
      RowCount = 10
      OnKeyValueChange = dxBarLookupCombo2KeyValueChange
    end
    object dxBarButton9: TdxBarButton
      Caption = #1053#1086#1074#1080#1081' '#1084#1110#1089#1103#1094#1100
      Category = 0
      Hint = #1053#1086#1074#1080#1081' '#1084#1110#1089#1103#1094#1100
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1077#1088#1077#1076#1072#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082#1080' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1091
      Category = 0
      Hint = #1055#1077#1088#1077#1076#1072#1090#1080' '#1087#1086#1082#1072#1079#1085#1080#1082#1080' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1091
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1054#1087#1083#1086#1084#1073#1086#1074#1072#1085#1080#1081' ...'
      Category = 0
      Hint = #1054#1087#1083#1086#1084#1073#1086#1074#1072#1085#1080#1081' '
      Visible = ivAlways
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1054#1085#1086#1074#1080#1090#1080' '#1082#1072#1088#1090#1082#1080
      Category = 0
      Hint = #1054#1085#1086#1074#1080#1090#1080' '#1082#1072#1088#1090#1082#1080
      Visible = ivAlways
      ImageIndex = 56
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton12Click
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton13: TdxBarButton
      Caption = #1042#1089#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1080
      Category = 0
      Hint = #1042#1089#1110' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1080
      Visible = ivAlways
      ButtonStyle = bsDropDown
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      Category = 0
      Hint = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103' '#1083#1110#1095#1080#1083#1100#1085#1080#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton14Click
    end
    object dxBarButton15: TdxBarButton
      Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103' '#1087#1083#1086#1084#1073#1080
      Category = 0
      Hint = #1055#1088#1080#1095#1080#1085#1072' '#1079#1085#1103#1090#1090#1103' '#1087#1083#1086#1084#1073#1080
      Visible = ivAlways
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1080#1076#1072#1083#1077#1085#1085#1103' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      Category = 0
      Hint = #1055#1088#1080#1095#1080#1085#1072' '#1074#1080#1076#1072#1083#1077#1085#1085#1103' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Caption = #1042#1080#1076' '#1085#1072#1076#1093#1086#1076#1078#1077#1085#1085#1103' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      Category = 0
      Hint = #1042#1080#1076' '#1085#1072#1076#1093#1086#1076#1078#1077#1085#1085#1103' '#1087#1086#1082#1072#1079#1085#1080#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = #1042#1080#1076' '#1087#1083#1086#1084#1073#1080
      Category = 0
      Hint = #1042#1080#1076' '#1087#1083#1086#1084#1073#1080
      Visible = ivAlways
      OnClick = dxBarButton18Click
    end
    object dxBarButton19: TdxBarButton
      Caption = 'Viber '#1087#1086#1082#1072#1079#1085#1080#1082#1080
      Category = 0
      Hint = 'Viber '#1087#1086#1082#1072#1079#1085#1080#1082#1080
      Visible = ivAlways
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Viber '#1087#1086#1074#1110#1076#1086#1084'.'
      Category = 0
      Hint = 'Viber '#1087#1086#1074#1110#1076#1086#1084'.'
      Visible = ivAlways
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = #1044#1086#1076#1072#1090#1080' '#1072#1073#1086#1085#1077#1085#1090#1072
      Category = 0
      Hint = #1044#1086#1076#1072#1090#1080' '#1072#1073#1086#1085#1077#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 16
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      Category = 0
      Hint = #1042#1080#1076#1072#1083#1080#1090#1080
      Visible = ivAlways
      ImageIndex = 17
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1056#1086#1079#1090#1072#1096#1091#1074#1072#1085#1085#1103
      Category = 0
      Hint = #1056#1086#1079#1090#1072#1096#1091#1074#1072#1085#1085#1103
      Visible = ivNever
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1047#1084#1110#1085#1080#1090#1080
      Category = 0
      Hint = #1047#1084#1110#1085#1080#1090#1080
      Visible = ivAlways
      ImageIndex = 36
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton24Click
    end
    object dxBarButton26: TdxBarButton
      Caption = #1060#1110#1083#1100#1090#1088' '#1054#1089'.'#1088#1072#1093'/'#1028#1044#1056#1055#1054#1059'/'#1030#1055#1053
      Category = 0
      Hint = #1060#1110#1083#1100#1090#1088' '#1054#1089'.'#1088#1072#1093'/'#1028#1044#1056#1055#1054#1059'/'#1030#1055#1053
      Visible = ivAlways
      ImageIndex = 33
      Lowered = True
      PaintStyle = psCaption
    end
    object dxBarButton27: TdxBarButton
      Caption = #1047#1074#1077#1076#1077#1085#1080#1081' '#1079#1074#1110#1090' '#1087#1086' '#1088#1072#1081#1086#1085#1072#1084
      Category = 0
      Hint = #1047#1074#1077#1076#1077#1085#1080#1081' '#1079#1074#1110#1090' '#1087#1086' '#1088#1072#1081#1086#1085#1072#1084
      Visible = ivAlways
      OnClick = dxBarButton27Click
    end
    object dxBarButton28: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1047#1074#1110#1090#1080
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end>
    end
    object dxBarButton30: TdxBarButton
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080' '#1079' '#1076#1072#1090#1086#1102' '#1087#1086#1074#1110#1088#1082#1080
      Category = 0
      Hint = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080' '#1079' '#1076#1072#1090#1086#1102' '#1087#1086#1074#1110#1088#1082#1080
      Visible = ivAlways
      OnClick = dxBarButton30Click
    end
    object dxBarButton31: TdxBarButton
      Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080' '#1110' '#1087#1083#1086#1084#1073#1080
      Category = 0
      Hint = #1051#1110#1095#1080#1083#1100#1085#1080#1082#1080' '#1110' '#1087#1083#1086#1084#1073#1080
      Visible = ivAlways
      OnClick = dxBarButton31Click
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnExit = cxBarEditItem1Exit
      Width = 100
      PropertiesClassName = 'TcxTextEditProperties'
      InternalEditValue = nil
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = #1060#1110#1083#1100#1090#1088' '#1088#1072#1093#1091#1085#1086#1082
      Category = 0
      Hint = #1060#1110#1083#1100#1090#1088' '#1088#1072#1093#1091#1085#1086#1082
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarButton32: TdxBarButton
      Caption = #1042#1080#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
      Category = 0
      Hint = #1042#1080#1076' '#1085#1072#1088#1072#1093#1091#1074#1072#1085#1085#1103
      Visible = ivAlways
      OnClick = dxBarButton32Click
    end
    object dxBarButton33: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivNever
      OnClick = dxBarButton33Click
    end
    object dxBarButton34: TdxBarButton
      Caption = #1054#1085#1086#1074#1080#1090#1080
      Category = 0
      Hint = #1054#1085#1086#1074#1080#1090#1080
      Visible = ivAlways
      ImageIndex = 33
      Lowered = True
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton35: TdxBarButton
      Caption = #1044#1086#1076#1072#1090#1080' '#1083#1110#1095#1080#1083#1100#1085#1080#1082
      Category = 0
      Hint = #1044#1086#1076#1072#1090#1080' '#1083#1110#1095#1080#1083#1100#1085#1080#1082
      Visible = ivAlways
      ImageIndex = 16
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton35Click
    end
    object dxBarButton36: TdxBarButton
      Caption = #1047#1084#1110#1085#1080#1090#1080
      Category = 0
      Hint = #1047#1084#1110#1085#1080#1090#1080
      Visible = ivAlways
      ImageIndex = 36
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton36Click
    end
    object dxBarButton37: TdxBarButton
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      Category = 0
      Hint = #1042#1080#1076#1072#1083#1080#1090#1080
      Visible = ivAlways
      ImageIndex = 17
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton37Click
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnExit = cxBarEditItem3Exit
      Width = 100
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxBarButton38: TdxBarButton
      Caption = #1055#1086#1074#1085#1080#1081' '#1088#1086#1079#1088#1072#1093#1091#1085#1086#1082' '
      Category = 0
      Hint = #1055#1086#1074#1085#1080#1081' '#1088#1086#1079#1088#1072#1093#1091#1085#1086#1082' '
      Visible = ivAlways
      ImageIndex = 34
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton38Click
    end
    object dxBarButton39: TdxBarButton
      Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082' '#1088#1086#1079#1087#1086#1076#1110#1083#1091
      Category = 0
      Hint = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082' '#1088#1086#1079#1087#1086#1076#1110#1083#1091
      Visible = ivAlways
      ImageIndex = 34
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton39Click
    end
    object dxBarButton25: TdxBarButton
      Caption = #1056#1086#1079#1073#1083#1086#1082#1091#1074#1072#1090#1080' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
      Category = 0
      Hint = #1056#1086#1079#1073#1083#1086#1082#1091#1074#1072#1090#1080' '#1088#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
      Visible = ivAlways
      OnClick = dxBarButton25Click
    end
    object dxBarButton1: TdxBarButton
      Action = ActionEdCalcs
      Category = 1
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 680
    Top = 256
    object ActionEdCalcs: TAction
      Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1082#1080
      ImageIndex = 40
      OnExecute = ActionEdCalcsExecute
    end
    object ActionExport: TAction
      Caption = #1074' Excel'
      ImageIndex = 44
      OnExecute = ActionExportExecute
    end
    object ActionExit: TAction
      Caption = #1042#1080#1093#1110#1076
      ImageIndex = 0
      ShortCut = 32856
      OnExecute = ActionExitExecute
    end
    object ActionCalc: TAction
      Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082
      ImageIndex = 35
    end
    object ActionPrint: TAction
      Caption = #1047#1074#1110#1090' '#1087#1086' '#1093#1086#1083#1086#1076#1085#1110#1081' '#1074#1086#1076#1110
      ImageIndex = 6
      OnExecute = ActionPrintExecute
    end
    object ActionPrintTotal: TAction
      Caption = #1047#1074#1077#1076#1077#1085#1080#1081' '#1079#1074#1110#1090
      OnExecute = ActionPrintTotalExecute
    end
  end
  object ImageList1: TImageList
    Height = 20
    Width = 20
    Left = 616
    Top = 156
    Bitmap = {
      494C01013E004000E00114001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000050000000400100000100180000000000002C
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000080000080000000808080000000
      0000000000000000800000808000000000008080800000000000000000000000
      0000000000000000000000000000000080000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0080000000000080808000000000000000000000000000000080000080000000
      0000808080000000000000000000000000000000000000000000000000800000
      0080000080008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000800000000000808080000000000000
      0000000000000000008000008000000000008080800000000000000000000000
      0000000000000000000080000000800000800000800000800080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0080000000000080808000000000000000000000000000000080000080000000
      0000808080000000000000000000000000000000000000800000008000008000
      0080000080000080000080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000800000000000808080808080000000
      0000000000008080808000008000000000008080800000000000000000000000
      0000000080000000800000800000800000FF0000800000800000800000800080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080808000
      0080000000000000000080808000000000000000000000000080000080000000
      000080808080808000000000000000000000000000800000800000800000FF00
      00000000FF000080000080000080008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000FF0000FF00000000808080808080
      80808080808000FFFF00FFFF00FFFF0000000000008080800000000000000000
      0000000000FF0000800000FF0000000000000000000000FF0000800000800000
      8000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFF00FF
      0000FF0000FF0000000000000000000000000000000000FFFF00FFFF00FFFFFF
      FFFF00000080808000000000000000000000000000000000FF00000000000000
      00000000000000000000FF000080000080000080008000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000FF0000FF0000FF0000FF0000FF00FFFFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000008080800000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      8000008000008000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF0000FF
      0000FF0000FF0000FF0080808000000000000000FFFF00FFFF00FFFF00FFFF00
      FFFF000000808080000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000080000080000080008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000FF00FF000000FF00000000808080000000
      00000000000000FFFF0000FF00FFFF00FFFF0000008080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00008000008000008000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF0000FF
      00FF000000FF0000000080808000000000000000000000FFFF0000FF00FFFF00
      FFFF000000808080000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000080000080000080
      0080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00FFFFFF000000808080000000000000
      000000000000000000FFFFFF00FFFF0000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00008000008000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFFFFFFFF000000808080000000000000000000FFFFFFFFFFFF00000080
      8080000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000080
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080008080000000808080000000
      0000000000000080800080800000008080800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008080
      0000008080800000000000000000000000000000000000000000000000000000
      0000000000000080808080808080808080808080808080808080808080808080
      8080808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080808080808080808080808080
      8080808080808080808080808080808000000000000000000000000000000000
      0000000000000000000000000000808080808080808080808080808080808080
      8080808080808080808080800000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00808000808000000080808000000000000000
      0000000000000000000000000000000000000000008080008080008080008080
      0080800080800080800080800080800080800080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000808080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000080808000000000
      000000000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF008080
      0080800080800000008080800000000000000000000000000000000000000000
      0000000000808000808000808000808000000000000000808000808000808000
      8080008080000000000000000000000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000080808000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000080808000000000000000000000000000FFFF00FFFF00FF
      FF00000000008000FFFF00FFFF00808000808000808000808000000080808000
      0000000000000000000000000000000000000000008080008080008080FFFFFF
      FFFFFF0000000080800080800080800080800080800000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFFFF00
      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808080
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000080808000000000
      000000000000000000FFFF00FFFF0000800000800000FF00FFFF00FFFF008080
      0080800080800080800080800000008080800000000000000000000000000000
      0000000000808000808000808000808000808000808000808000808000808000
      8080008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080800000000000000000000000000000
      00000000FFFFFFFFFFFF00000080808000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFF808080000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000080808000000000000000000000000000FFFF00FFFF0000
      FF00000000FFFF00808000808000000000808000808000808000808000808000
      0000808080000000000000000000000000000000008080000000000000000000
      0000000000000000000000000000000000000080800000000000000000000000
      0080808000000000000000000000000000000000000000000000008000008080
      8080808080808080808080808080808080000000FFFFFFFFFFFF000000808080
      000000000000000000000000000000000000000000000000FFFFFFFFFFFF0080
      00808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000080808000000000
      000000000000000000FFFF00FFFF00FFFF008080008080000000FFFFFFFFFFFF
      0000000080800080800080800080800080800000008080800000000000000000
      00000000000000008080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000008080000000000000000000808080000000000000000000000000
      0000000000000000800000800000800000800000800000800000800000808080
      80000000FFFFFFFFFFFF00000080808000000000000000000000000000000080
      8080808080808080808080808080008000008000808080000000FFFFFFFFFFFF
      FFFFFFFFFFFF00000080808000000000000000000000000000FFFF0080800080
      80000000FFFFFFFFFFFFFFFFFFFFFFFF80808000000000808000808000808000
      8080000000808080000000000000000000000000000000008080000000000000
      0000000000000000000000000000000000000000008080800000000000000000
      0080808000000000000000000000000000000000008000008000008000008000
      0080000080000080000080000080808080000000FFFFFFFFFFFF000000808080
      0000000000000000000000000080000080000080000080000080000080000080
      00008000008000808080000000FFFFFFFFFFFFFFFFFF00000080808000000000
      0000000000000000008080000000FFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF
      8080808080800000000080800080800080800000008080800000000000000000
      0000000000000000808000000000000080808080808080808080808080808080
      8080808080808080000000000000000000808080000000000000000000000000
      0000800000FF0000800000800000800000800000800000800000800000808080
      80000000FFFFFFFFFFFF00000080808000000000000000000000000000800000
      8000008000008000008000008000008000008000008000008000808080000000
      FFFFFFFFFFFF000000808080000000000000000000000000000000008080FFFF
      FFFFFFFF808080FFFFFFFFFFFF808080FFFFFF80808080808000000000808000
      8080000000808080000000000000000000000000000000008080008080008080
      0080800080800080800080800080800080800080800080800000000000000000
      008080800000000000000000000000000000000000800000FF00008000008000
      00FF0000FF0000FF0000FF0000FF808080FFFFFFFFFFFFFFFFFF000000808080
      0000000000000000000000000080000080000080000080000080000080000080
      0000800000800000FF00008000FFFFFFFFFFFFFFFFFF00000080808000000000
      0000000000000000000000000000008080FFFFFFFFFFFF808080FFFFFFFFFFFF
      808080FFFFFF8080808080800000000080800000000000000000000000000000
      0000000000000000808000808000808000808000000000000000000000808000
      8080008080008080000000000000000000808080000000000000000000000000
      0000000000000000800000FF000080000080000080000080000080000080FFFF
      FF00000000000000000000000080808000000000000000000000000000FF0000
      FF0000FF0000FF0000FF0000FF0000800000800000FF00008000FFFFFF000000
      0000000000000000008080800000000000000000000000000000000000000000
      00008080FFFFFFFFFFFF808080FFFFFFFFFFFF808080FFFFFF80808080808000
      0000808080000000000000000000000000000000000000008080008080008080
      008080FFFFFFFFFFFF0000000080800080800080800080800000000000000000
      008080800000000000000000000000000000000000000000000000800000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808080000000000000
      0000000000000000000000000080000080000080000080000080000080000080
      0000FF00008000FFFFFFFFFFFFFFFFFF00000080808000000000000000000000
      0000000000000000000000000000000000000000008080FFFFFFFFFFFF808080
      FFFFFFFFFFFF808080FFFFFF8080800000000000000000000000000000000000
      0000000000000000808000808000808000808000808000808000808000808000
      8080008080008080000000000000000000808080000000000000000000000000
      000000000000000000000000000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00000080808000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFF00FF00008000FFFFFFFFFFFFFFFFFF000000
      8080800000000000000000000000000000000000000000000000000000000000
      00000000000000008080FFFFFFFFFFFF808080FFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800000000000
      00808080000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000000000000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFF0080
      00FFFFFFFFFFFFFFFFFFFFFFFF80808000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808000808000808000808000808000808000
      8080008080008080008080008080000000808080000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF808080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      000000C0C0C0000000C0C0C0000000C0C0C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C080808080
      8080808080C0C0C0000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080808080800000008080800000
      0000000000000000000000000000000000FFFF008080000000FF00FF0000FF00
      008000000000FF00008000000000FF0000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808080808080808000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      000000C0C0C00000008080800000000000008080808080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080000000000000000000000000000000000000000000000000
      00FFFF008080000000FF00FF0000FF00008000000000FF00008000000000FF00
      0080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      808080000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000080808080808080
      8080808080808080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFF008080000000FF00FF0000FF00
      008000000000FF00008000000000FF0000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080808080808080808080808080808000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000C0C0C00000008080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFF008080000000FF00FF0000FF00008000000000FF00008000000000FF00
      0080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000000000000000000000000000000C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C080808080
      8080808080C0C0C0000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFF008080000000FF00FF0000FF00
      008000000000FF00008000000000FF0000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808080808080808000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000C0C0C0000000C0C0C0000000C0C0C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFF008080000000FF00FF0000FF00008000000000FF00008000000000FF00
      0080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0
      C0000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFF008080000000FF00FF0000FF00
      008000000000FF00008000000000FF0000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000C0C0C0C0C0C0C0C0C0000000000000000000000000000000
      C0C0C0C0C0C0000000C0C0C0000000000000000000C0C0C00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFF008080000000FF00FF0000FF00008000000000FF00008000000000FF00
      0080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFF008080000000FF00FF0000FF00
      0080000000000000FFFFFFFFFFFFFF0000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000C0C0C0C0C0C0000000C0C0C0000000C0C0C0000000C0C0C0
      000000C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFF008080000000000000FFFFFFFFFFFF000000000000000000FFFFFFFF00
      0080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C0C0C0C0C0C00000
      00C0C0C0000000C0C0C0000000C0C0C0000000C0C0C0000000C0C0C0C0C0C000
      0000C0C0C0C0C0C0000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFF008080000000000000000000FF
      FFFFFFFFFF000000000000000000FF0000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000C0C0C0C0C0C0000000C0C0C0000000C0C0C0000000000000
      C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0C0C0C0C0C00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF0000000000000000
      00FFFFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C0C0C0C0C0C00000
      00C0C0C0000000C0C0C0000000C0C0C0000000C0C0C0000000C0C0C0C0C0C000
      0000C0C0C0C0C0C0000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFF00000000
      0000000000000000000000000000000000000000FFFFFF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000C0C0C0C0C0C0000000000000000000C0C0C0000000C0C0C0
      000000C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFFFFFF0000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808080808080808080
      8080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080808080808080808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80808000FFFFFFFFFF00FFFFFFFFFF8080808080808080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080808080808080808080808080
      8080808000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF0000FF0000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00FFFF00008000808000808000000000
      FFFFFFFFFF808080808080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000FF0000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000080
      008080008080FFFFFF00FFFF000000000000008080FFFFFF8080808080800000
      0000000000000000000000000000000000000080808080808080808080808080
      8080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080808080808080808080808080
      8080808000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF0000FF0000FF0000FF0000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000808000808000FFFFFFFFFF00FFFFFFFFFF00
      0000000000008080FFFFFF808080000000000000000000000000000000000000
      80808000FFFF00FFFF00FFFF00FFFF00FFFF8080800000008080808080808080
      8080808080808000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000FF0000FF0000FF0000FF0000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000FFFF000080008080
      00FFFF000080FFFFFF00FFFF000080FFFFFF00000000808000FFFF8080808080
      8000000000000000000000000000000000FFFF80808080808080808080808080
      808000FFFF80808000FFFF00FFFF00FFFF00FFFF00FFFF808080000000000000
      0000000000000000000000000000000000000000008080808080808080808080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007F7F7F0000FF0000FF0000000000000000FF0000FF
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000FFFF000000008080008080008080008080FFFFFF00FFFF00000000
      FFFF00008000808000808000FFFF808080000000000000000000000000000000
      80808000FFFF00FFFF00FFFF00FFFF00FFFF80808000FFFF8080808080808080
      8080808080808000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007F7F7F0000FF0000
      000000000000000000000000000000FF0000FF00000000000000000000000000
      000000000000000000000000000000000000000000FFFF000000008080008080
      008080008080FFFFFF00FFFF00FFFF00008000808000808000808000FFFF8080
      8000000000000000000000000000000000FFFF80808080808080808080808080
      808000FFFF80808000FFFF00FFFF00FFFF00FFFF00FFFF808080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000FF0000FF0000000000000000000000000000000000000000000000000000
      0000000000FFFF00000000808000808000808000FFFFFFFFFF00FFFF00808000
      808000808000808000808000FFFF808080000000000000000000000000000000
      80808000FFFF00FFFF00FFFF00000000FFFF80808000FFFF8080808080808080
      8080808080808000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000FF00000000000000000000
      000000000000000000000000000000000000000000FFFF000000000000008080
      00FFFF000000FFFFFF00FFFF00808000808000000000808000808000FFFF0000
      0000000000000000000000000000000000FFFF00FFFF00000000000000FFFF00
      FFFF00FFFF80808000FFFF00FFFF00FFFF00FFFF00FFFF808080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000FF0000000000000000000000000000000000000000000000
      0000000000000000FFFF000000008080FFFFFF000000FFFFFF00FFFF00808000
      FFFF00008000808000FFFF808080000000000000000000000000000000000000
      00000000FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF8080808080808080
      8080808080808000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F0000FF00000000
      0000000000000000000000000000000000000000000000FFFFFF000000000000
      008080FFFFFFFFFFFF00FFFF00FFFF00008000808000808000FFFF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000080808000FFFF00FFFF00FFFF00000000FFFF808080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000007F7F7F0000FF0000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFF00008000
      808000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00FFFF0000000000
      0000FFFF00FFFF00FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000FF000000000000000000000000000000000000000000000000FFFFFF
      00FFFF00000000000000000000000000FFFF00FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFFFFFFFFFF00FFFF00FFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF0000FF00
      00FF0000FF0000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF00FFFF00FFFF0000000000000000
      00000000000000000000000000000000000000000000000000000000FF0000FF
      0000FF0000FF0000FF0000FF0000BFBFBF000000BFBFBFFF0000FF0000FF0000
      FF0000FF0000FF0000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFF0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF00FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000
      007F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FFFF0000007F7F7F7F7F7F000000FFFFFF7F7F7FFFFFFF0000007F7F7F7F7F7F
      000000FFFFFF000000000000000000000000000000000000000000FFFFFF0000
      00000000FFFFFF0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000007F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F00000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007F7F7F00
      0000FFFFFF000000000000000000FFFFFF7F7F7FFFFFFF000000000000000000
      FFFFFF0000007F7F7F000000000000000000000000000000000000FFFFFF0000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF00FFFF00FFFF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF00FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000007F
      7F7F000000FFFFFF000000000000FFFFFF7F7F7FFFFFFF000000000000FFFFFF
      0000007F7F7F000000000000000000000000000000000000000000FFFFFF0000
      00000000FFFFFF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007F7F7F000000FFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F00000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF
      000000000000000000000000000000000000000000000000000000FFFFFF0000
      00BDBDBDFFFFFF000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFF00FFFF00FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFF00FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000000000000000007B7B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFF00FFFF00FFFF00FFFF00FFFF000000000000BDBDBD0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFF000000FFFFFF000000FFFFFF
      000000FFFFFF000000FFFFFF7B7B7B0000000000000000000000000000000000
      0000000000000000000000000000000000FFFF00000000000000000000FFFF00
      0000007B7B000000BDBDBD000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF7B7B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFFF000000007B7B007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008484840000000000000000
      0000FFFF00FFFF00FFFF84848400000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFF000000FFFFFF000000FFFFFF
      000000FFFFFF000000FFFFFF7B7B7B0000000000000000000000000000000000
      0000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00000000000000
      0000007B7B007B7B000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFF00FFFF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000848484848484000000000000848484848484848484848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF7B7B7B00
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FFFF000000BDBDBD000000007B7B007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFF000000FFFFFF000000FFFFFF
      000000FFFFFF000000FFFFFF7B7B7B0000000000000000000000000000000000
      0000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF000000BDBDBD00
      0000007B7B007B7B000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFFFFFFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000848484848484848484848484000000000000848484848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF7B7B7B00
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      00FFFF00FFFF00FFFF000000000000000000007B7B007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF7B7B7B0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B7B7B00
      0000007B7B007B7B000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFFFF7B7B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFF7B7B7B7B7B7B000000007B7B007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000848400FFFF00FFFF00FFFF0000000000000000
      0000000000000000000000000000000000FFFFFFFF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FFFFFF7B7B7B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFF00FFFFFFFFFF0000000000
      0000000000000000000000000000000000000000000000000000000000000084
      8484000000000000000000000000000000000000000000000000000000FFFF00
      8484000000000000008484840000000000000000000000000000000000000000
      00FFFFFF7B00007B00007B00007B00007B00007B00007B0000FFFFFF7B7B7B00
      00000000000000000000000000000000000000000000000000000000007B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFFFFFFFF00FFFFFFFFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00848400FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF0000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF7B7B7B0000000000000000000000000000000000
      00000000000000000000000000000000000000007B7B00FFFF007B7B00FFFF00
      7B7B00FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFFFFFF00FFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000084
      8484000000000000000000000000000000000000000000000000000000FFFF00
      8484000000000000008484840000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF007B7B00FFFF007B7B00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484848400FFFF00FFFF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000848484
      0000000000000000008484840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B7B7B
      7B7B7B0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFFFFFFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000FF00007B00007B7B7B7B00000000000000000000
      00000000000000FF7B7B7B000000000000000000000000000000000000000000
      000000FFFFFFFFFFFFFFFFFF000000FF0000FF0000FF0000000000FFFFFFFFFF
      FF0000000000FF0000FF0000FF00000000000000000000000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF00007B
      00007B00007B7B7B7B0000000000000000000000FF00007B00007B7B7B7B0000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
      0000FF0000000000FFFFFFFFFFFFFFFFFF0000000000FF0000FF0000FF000000
      000000000000000000000000000000000000000000000000000000FFFFFF0000
      00000000000000FFFFFF000000FFFFFF000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000007B7B0000000000000000000000000000000000
      000000000000000000000000FF00007B00007B00007B00007B7B7B7B00000000
      00FF00007B00007B00007B00007B7B7B7B000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FF0000000000FF0000FF0000FF00000000000000000000000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000FFFFFF00FFFF00000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00007B00007B00007B00007B7B7B7B00007B00007B00007B00007B00007B7B7B
      7B000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFF0000
      00000000FFFFFF000000000000FFFFFF000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      00000000FFFFFFFFFF000000FFFFFF0000000000000000000000000000000000
      000000000000000000000000000000000000FF00007B00007B00007B00007B00
      007B00007B00007B00007B7B7B7B000000000000000000000000000000000000
      000000000000000000000000000000FFFFFF0000007B7B7B00FFFF7B7B7B0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF00FFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF00007B00007B00007B00007B00007B00007B7B7B7B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF00FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFF00FFFF
      FFFFFF000000FFFFFF00FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B00007B00007B00
      007B00007B7B7B7B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007B7B7B00FFFF7B7B7B0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      0000000000000000FFFFFF00FFFF000000000000FFFFFF000000FFFFFF000000
      FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000007B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00007B00007B00007B00007B7B7B7B0000000000000000
      00000000000000000000000000000000000000FFFF00FFFF00FFFF0000000000
      0000000000000000000000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
      000000000000000000000000000000000000000000FFFFFF00FFFF00000000FF
      FFFFFFFF000000FFFFFF00FFFF000000FFFFFF000000FFFFFF00000000000000
      0000000000000000000000000000000000FFFF0000000000FFFFFFFFFF00FFFF
      FFFFFF00FFFF000000000000007B7B0000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00007B00007B00007B00
      007B00007B7B7B7B000000000000000000000000000000000000000000000000
      000000FFFF00FFFF00FFFF00000000000000000000000000000000FFFFFFFFFF
      FF000000000000000000FFFFFFFFFFFF00000000000000000000000000000000
      0000FFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF00FFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000FFFF
      00FFFF00FFFF0000000000FFFFFFFFFF00FFFF00000000FFFF000000007B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00007B00007B00007B7B7B7B00007B00007B00007B7B7B7B0000000000
      00000000000000000000000000000000000000FFFF00FFFF00FFFF00000000FF
      FF00000000000000000000000000000000000000000000000000000000FFFFFF
      00000000000000000000000000000000000000FFFFFFFFFF00FFFFFFFFFF0000
      00FFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
      0000000000000000000000000000000000FFFF00FFFF00FFFF0000000000FFFF
      FFFFFF00FFFFFFFFFF000000007B7B0000000000000000000000000000000000
      000000000000000000000000000000FF00007B00007B00007B7B7B7B00000000
      00FF00007B00007B00007B7B7B7B000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFF00FFFF00FFFF00000000000000000000000000000000007B7B00
      00000000000000000000000000000000000000000000000000000000000000FF
      00007B00007B7B7B7B0000000000000000000000FF00007B00007B00007B7B7B
      7B000000000000000000000000000000000000000000000000FFFF00FFFF00FF
      FF00000000FFFF00000000000000000000000000000000000000FFFFFFFFFFFF
      000000000000000000000000FFFF0000000000FFFFFFFFFF00FFFFFFFFFF00FF
      FF000000000000000000FFFFFFFFFFFF000000FFFFFFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000FFFF00FFFF0000000000000000000000000000000000
      000000000000000000000000000000000000FF00007B00000000000000000000
      00000000000000FF00007B00007B00007B000000000000000000000000000000
      000000000000000000000000000000000000000000FFFF000000000000000000
      00000000000000000000FFFFFFFFFFFF000000000000000000000000FFFF00FF
      FF0000000000FFFFFFFFFF00FFFF00000000FFFFFFFFFF00FFFF000000FFFFFF
      000000FFFFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00007B0000
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFF00FFFF00000000000000000000000000000000000000FFFFFFFFFFFF
      000000000000000000000000FFFF00FFFF00FFFF0000000000FFFFFFFFFF00FF
      FFFFFFFF000000000000FFFFFFFFFFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000FF0000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFFFFF000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000000000000000007B7B7B000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBD00000000000000000000000000000000000000000000000000000000
      0000000000FF0000FF0000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBD0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000BDBDBD000000BD
      BDBD000000BDBDBD0000FF0000FF0000FFBDBDBD000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00BDBDBD000000BDBDBD000000BDBDBD0000FF0000FF0000FFBDBDBD00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFFF007B7B00FFFF0000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000007B7B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBD00000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBD0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B7B00
      FFFF000000000000000000000000000000000000000000000000000000000000
      7B7B7B0000000000007B7B7B0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000BDBDBD000000BD
      BDBD000000BDBDBD000000BDBDBD000000BDBDBD000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00BDBDBD000000BDBDBD000000BDBDBD000000BDBDBD000000BDBDBD00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF007B7B00FFFF0000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBD00000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBD0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFF007B7B00FFFF00000000
      00000000000000000000000000000000000000000000000000000000007B7B7B
      0000007B7B7B0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000BDBDBD000000BD
      BDBD000000BDBDBD000000BDBDBD000000BDBDBD000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00BDBDBD000000BDBDBD000000BDBDBD000000BDBDBD000000BDBDBD00000000
      00000000000000000000007B7B7B000000000000000000000000000000000000
      000000007B7B00FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBD000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBD0000000000000000000000007B7B7B00000000FF
      FF00FFFF00FFFF00000000000000FFFF007B7B00FFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000BDBDBD000000BD
      BDBD000000BDBDBD000000BDBDBD000000BDBDBD000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      00BDBDBD000000BDBDBD000000BDBDBD000000BDBDBD000000BDBDBD00000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF007B7B
      00FFFF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007B7B7B0000000000000000007B
      7B7B000000000000000000000000000000000000000000000000000000000000
      000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBD000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBD00000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B7B7B
      0000000000007B7B7B0000007B7B7B0000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000BDBDBD00000000
      0000000000000000000000000000000000BDBDBD000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00BDBDBD000000000000000000000000000000000000000000BDBDBD00000000
      000000000000000000000000FFFF00FFFF000000000000007B7B00FFFF00FFFF
      0000007B7B7B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000007B7B7B000000000000000000000000000000000000000000000000
      000000000000000000BDBDBD000000000000000000FFFF00000000FFFF000000
      00BDBDBD00000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000BDBDBD000000000000000000FFFF00
      000000FFFF00000000BDBDBD0000000000000000000000007B7B7B7B7B7B00FF
      FF000000000000007B7B00FFFF00FFFF00FFFF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007B7B7B0000000000000000007B7B7B0000000000000000000000000000
      00000000000000000000000000000000000000000000000000BDBDBD00000000
      0000000000000000000000000000000000BDBDBD000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00BDBDBD000000000000000000000000000000000000000000BDBDBD00000000
      000000000000000000000000000000FFFF00FFFF007B7B007B7B00FFFF00FFFF
      00FFFF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBD00000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBD0000000000000000000000000000000000000000
      007B7B7B00FFFF00FFFF00FFFF00FFFF0000007B7B7B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000BDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD000000000000000000000000
      000000000000000000000000000000000000000000FF0000FF00000000000000
      00BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD00000000
      00000000000000000000000000000000007B7B7B000000000000000000000000
      7B7B7B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000007B7B7B00000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000840000840000840000840000840000840000
      8400008400008400008400008400008400000000000000000000000000000000
      0000000000000084000084000084000084000084000084000084000084000084
      0000840000840000840000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00FFFF00FFFF000000000000000000000000000000000000000000BD
      BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBD000000000000000000000000000000000000840000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
      0000000000000000000000000000000000000000000000840000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00FFFF00FFFF000000000000000000007B7B7B7B7B7B7B7B7B000000
      000000000000000000000000000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD00000000000000
      0000000000000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000000000000000000000000000
      00000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF840000000000000000000000000000000000000000
      0000000000FF0000FF0000FF0000007B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000840000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
      0000000000000000000000000000000000000000000000840000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000
      000000000000000000000000000000000000000000FF0000FF0000FF0000FF00
      0000000000000000000000000000000000000000FFFFFF000000FFFFFF000000
      000000000000000000000000000000FFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
      BDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBD00000000000000
      0000000000000000000000840000840000840000840000840000840000840000
      8400008400008400008400008400008400000000000000000000000000000000
      00000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF840000000000000000000000000000000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFF000000FFFFFF000000000000000000000000000000000000BD
      BDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBD
      FFFFFF0000FFFFFFFF0000000000000000000000000000000000008400008400
      00840000840000840000840000840000840000840000840000840000FFFFFF84
      0000000000000000000000000000000000000000000000840000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000
      00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFF000000
      000000000000000000000000000000FFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
      BDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBD00000000000000
      0000000000000000000000840000840000840000840000840000840000840000
      8400008400008400008400008400008400000000000000000000000000000000
      00000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF840000000000000000000000000000000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFF000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000840000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
      0000000000000000000000000000000000000000000000840000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000
      00000000000000000000000000000000000000FFFFFF7B7B7B7B7B7BFFFFFF7B
      7B7B7B7B7BFFFFFF7B7B7BFFFFFFFFFFFF000000FFFFFF000000FFFFFF000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FF0000FF00FFFFFFFFFF0000FFFFFFFF00000000000000000000000000000000
      0000000000000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000000000000000000000000000
      00000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF840000000000000000000000000000000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFF000000FFFFFF00000000000000000000000000000000000000
      0000000000000000FFFFFF0000000000000000000000000000FF000000FFFFFF
      000000000000000000000000000000000000000000000000000000840000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
      0000000000000000000000000000000000000000000000840000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8400000000
      00000000000000000000000000000000000000FFFFFF7B7B7B7B7B7BFFFFFF7B
      7B7B7B7B7B7B7B7BFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFF000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFF0000
      FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      0000000000000000000000840000840000840000840000840000840000840000
      8400008400008400008400008400008400000000000000000000000000000000
      0000000000000084000084000084000084000084000084000084000084000084
      0000840000840000840000840000000000000000000000000000000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFF000000FFFFFF00000000000000000000000000000000000000
      0000000000000000FFFFFF0000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400008400
      00840000840000840000840000840000840000840000840000840000FFFFFF84
      0000000000000000000000000000000000000000000000840000840000840000
      840000840000FFFFFF840000840000840000840000840000FFFFFF8400000000
      00000000000000000000000000000000000000000000FFFFFF000000FFFFFF00
      0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000000000000000
      000000000000000000000000000000000000000000000000FFFFFF0000FF00FF
      FFFFFFFF000000FFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000000000840000840000840000840000840000840000840000
      8400008400008400008400008400008400000000000000000000000000000000
      0000000000000084000084000084000084000084000084000084000084000084
      0000840000840000840000840000000000000000000000000000000000000000
      0000000000007B7B7B0000007B7B7B0000007B7B7B0000007B7B7B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFF0000000000FFFFFFFF000000FFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000007B7B7B0000007B7B7B0000007B7B7B00
      00007B7B7B0000007B7B7B0000007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0084000084000084000084000084000084000084000084000084000000000000
      000000000000000000000000000000FFFF00FFFF00000000000000FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF84000000000000000000000000000000000000000000FF
      FF00FFFF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF00
      FFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000BDBDBD0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000FF0000000000FFFFFF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84000000000000
      000000000000000000000000000000FFFF00FFFF00FFFF00000000FFFF00FFFF
      00FFFF00FFFF00000000000000000000FFFF0000000000000000000000000000
      0000000000000000000000FFFF00000000000000FFFF00000000000000000000
      FFFF00000000000000FFFF000000000000000000000000000000000000000000
      000000000000000000000000FF0000000000000000FFFFFF000000FFFFFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF84000000000000000000000000000000000000000000FF
      FF00FFFF00FFFF00000000000000FFFF00FFFF00000000000000FFFF00FFFF00
      FFFF00000000000000000000000000000000000000000000000000000000FFFF
      00FFFF00FFFF00000000FFFF00000000FFFF00FFFF00FFFF0000000000000000
      00000000000000000000000000000000000000000000000000FF000000000000
      0000FFFFFFFFFFFFFFFFFF000000FFFFFF000000FF0000000000000000000000
      0000000000000000000000000000000000000000008400008400008400008400
      0084000084000084000084000084000084000084000084000084000000000000
      000000000000000000000000000000FFFF00FFFF00FFFF00FFFF00000000FFFF
      00000000000000FFFF00FFFF00FFFF00FFFF0000000000000000000000000000
      0000000000000000000000000000FFFF00FFFF00FFFF000000FFFFFF00000000
      FFFF00FFFF00FFFF000000000000000000000000000000000000000000000000
      000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFF000000FF000000000000000000000000000000000000000000000000
      0000000000840000FFFFFFFFFFFF840000840000840000840000840000840000
      840000840000FFFFFF84000000000000000000000000000000000000000000FF
      FF00FFFF00FFFF00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00
      FFFF00000000000000000000000000000000000000000000000000FFFF00FFFF
      00FFFF000000FFFFFF7B7B7BFFFFFF00000000FFFF00FFFF00FFFF0000000000
      00000000000000000000000000000000FF0000000000000000FFFFFF000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FF0000000000
      000000000000000000000000000000000000000000840000FFFFFFFFFFFF8400
      0084000084000084000084000084000084000084000084000084000000000000
      0000000000000000000000000000FFFF00FFFF00FFFF00FFFF00000000000000
      000000FFFF00FFFF00FFFF00FFFF00FFFF000000000000000000000000000000
      0000000000000000000000FFFF00FFFF000000FFFFFF00FFFF7B7B7B00FFFFFF
      FFFF00000000FFFF00FFFF000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFF000000FF000000000000000000000000000000000000
      0000000000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      840000000000000000000000000000000000000000000000000000000000FFFF
      00FFFF00000000FFFF00BDBDBD000000000000000000000000FFFF00FFFF00FF
      FF0000000000000000000000000000000000000000FFFF00FFFF00FFFF00FFFF
      00000000FFFFFFFFFF7B7B7BFFFFFF00FFFF00000000FFFF00FFFF00FFFF00FF
      FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000
      0000000000000000000000000000008400008400008400008400008400008400
      0084000084000084000084000084000084000000000000000000000000000000
      0000000000000000000000000000FFFF00FFFF00FFFF00000000BDBDBD000000
      000000FFFF00FFFF00FFFF00FFFF00FFFF000000000000000000000000000000
      0000000000000000000000FFFF00FFFF000000FFFFFF00FFFFFFFFFF00FFFFFF
      FFFF00000000FFFF00FFFF000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000084
      0000FFFFFF840000840000840000840000840000840000840000840000FFFFFF
      840000000000000000000000000000000000000000000000000000000000FFFF
      00FFFF00FFFF00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00FF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      00FFFF000000FFFFFF00FFFFFFFFFF00000000FFFF00FFFF00FFFF0000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000000000000000000000
      000000000000000000000000000000840000FFFFFF8400008400008400008400
      0084000084000084000084000084000084000000000000000000000000000000
      0000000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00000000
      000000FFFF00FFFF00FFFF00FFFF00FFFF000000000000000000000000000000
      0000000000000000000000000000FFFF00FFFF00FFFF00000000000000000000
      FFFF00FFFF00FFFF000000000000000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00FFFF00FFFF00FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000008400008400008400008400008400008400
      0084000084000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      000000000000FFFF00FFFF00FFFF00FFFF000000000000000000000000000000
      0000000000000000000000FFFF00000000000000FFFF00FFFF00FFFF00FFFF00
      FFFF00000000000000FFFF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000840000840000840000840000840000840000840000FFFFFF840000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008400008400008400008400008400008400
      0084000084000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FFFFFF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF7B7B7B0000
      000000000000007B7B7BFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000000000000000FF0000FF000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFF000000BDBDBDFFFFFFFFFFFFFFFFFFBDBDBD000000FFFFFF
      FFFFFF000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00000000000000000000000000000000000000000000000000000000FF0000FF
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFBDBDBD000000
      000000000000000000000000000000000000FFFFFF7B7B7BBDBDBDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBDBDBD7B7B7BFFFFFF00000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFF000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000
      000000000000000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFF
      FF0000FF000000000000FFFFFF000000FFFFFF00000000000000000000000000
      0000000000000000000000000000000000000000FFFFFF000000FFFFFF000000
      FFFFFF000000FFFFFF000000FFFFFF0000000000000000000000000000000000
      000000000000000000000000FF0000FF000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
      FFFFFF000000000000000000000000000000000000000000000000000000FFFF
      FF000000FFFFFF000000000000000000FFFFFF0000007B7B7B000000FFFFFF00
      00000000000000000000000000000000000000000000000000000000000000FF
      0000FF000000000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF0000FF0000FF0000FF0000FF
      0000000000000000000000000000000000000000FFFFFFFFFFFF000000000000
      000000000000000000000000000000000000FFFFFF7B7B7BBDBDBDFFFFFFFFFF
      FF000000FFFFFFFFFFFFBDBDBD7B7B7BFFFFFF00000000000000000000000000
      0000000000000000000000000000FFFFFF000000FFFFFF000000FFFFFF000000
      FFFFFF0000007B7B7B000000FFFFFF0000000000000000000000000000000000
      000000000000000000000000000000000000FF0000FF000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000FF0000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFF000000BDBDBDFFFFFF000000FFFFFFBDBDBD000000FFFFFF
      FFFFFF000000000000000000000000000000000000000000000000000000FFFF
      FF000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFF000000FFFFFF00
      00000000000000000000000000000000000000000000FF0000FF000000000000
      0000FF0000FF000000000000000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF7B7B7B0000
      000000000000007B7B7BFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      000000000000FF0000FF0000000000000000FF0000FF000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFF7B7B7B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00
      00000000000000000000000000000000000000000000000000FF0000FF0000FF
      0000FF000000000000000000000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000FF0000FF0000FF00000000
      000000FFFF00FFFF00FFFF000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00000000000000000000000000
      00000000000000000000000000000000FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF000000FFFFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000FF0000FF0000000000007B7B7B00FFFF7B7B7B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000FFFFFF
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000FF00000000000000000000
      000000000000000000000000000000000000000000FF0000FF0000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000007B7B
      7B0000000000000000007B7B7B0000000000000000007B7B7B00000000000000
      00000000000000000000000000000000000000FF0000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      00007B7B7B0000007B7B7B0000007B7B7B0000007B7B7B0000007B7B7B000000
      7B7B7B0000007B7B7B0000000000000000000000000000000000000000000000
      000000FF0000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFF000000FFFFFF000000000000FFFFFF000000
      0000000000000000000000007B7B7B7B7B7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF0000FF0000FF0000FF0000FF0000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000FF0000FF0000FF0000FF0000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF0000000000000000FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      FF0000FF0000FF0000FF0000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF0000FF0000FF
      0000FF0000FF0000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF0000000000FFFFFFFFFF00FFFFFF
      FFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000
      0000000000000000000000000000007B7B7B0000000000FF0000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF0000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFF
      FF000000000000FFFFFFFFFFFF00000000000000000000000000000000000000
      00000000000000000000FF0000000000FF0000FF000000FF0000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF0000000000FFFFFFFFFF00FFFFFF
      FFFF00000000000000000000000000000000FFFF000000FFFFFFFFFFFF000000
      0000000000000000000000007B7B7B7B7B7B0000007B7B7B0000FF7B7B7B0000
      FF7B7B7B0000FF7B7B7B7B7B7BFF00007B7B7B7B7B7B7B7B7B7B7B7B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
      FF000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      00000000000000000000000000FF0000000000000000FF000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF0000000000FFFFFFFFFF00000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
      0000000000000000000000000000007B7B7B000000FF00000000000000000000
      00FF00000000000000FF0000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF0000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFF00FFFF00000000000000FFFF000000FFFF
      FFFFFFFF000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000FF0000000000FF00000000000000000000FF0000000000FF
      FF00000000FF000000000000000000000000000000000000000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000000FF00
      00FF000000000000000000000000000000000000000000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000000FF0000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      0000000000000000000000007B7B7B7B7B7B0000007B7B7BFF00007B7B7BFF00
      007B7B7B7B7B7B7B7B7B0000FF7B7B7B7B7B7BFF00000000FF7B7B7B00000000
      0000000000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF00000000000000FF0000FF0000000000000000000000000000
      00000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF00000000000000FF0000FF000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000FFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF0000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF000000FFFFFFFFFFFF000000000000FFFFFF000000FFFFFFFFFFFF000000
      0000000000000000000000000000007B7B7B000000000000000000FF00000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      0000000000000000000000007B7B7B7B7B7B0000007B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BBDBDBDBDBDBDFFFFFF
      BDBDBDFFFFFFBDBDBD7B7B7BBDBDBD0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000007B00007B00007B00007B00007B00000000000000007B7B
      7B7B7B7B7B7B7BFFFFFFFFFFFFFFFFFF7B00007B00007B00007B00007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000007B00000000007B007B000000000000BDBDBDFFFFFFFFFFFFFFFFFF
      7B0000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFF
      FFFFFFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFFFF000000FFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00FF0000FF0000FF0000FF0000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000007B00007B007B0000007B00
      7B000000FFFFFFFFFFFFFFFFFFFFFFFF7B000000000000000000000000000000
      00000000000000000000000000FFFFFFFF7B7B7B0000FFFFFFFF7B7B7B0000FF
      FFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFFFFFFFF0000000000000000000000
      00000000000000000000000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      0000000000000000000000FF0000FFBDBDBDFFFFFFFFFFFFFFFFFFBDBDBD0000
      FF0000FF00000000000000000000000000000000000000000000000000000000
      00000000007B00000000007B007B000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      7B00000000000000000000000000000000000000000000000000007B7B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B000000000000000000000000000000000000FFFFFF000000FFFFFF
      000000FFFFFF000000FFFFFF000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000FF0000FFFFFFFFFF
      FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0000FF0000FF000000000000000000
      0000000000000000000000000000000000000000007B00007B007B0000007B00
      7B000000FFFFFFFFFF00FFFFFFFFFF007B000000000000000000000000000000
      0000000000000000000000FFFFFFFFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFF
      FFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFFFFFFFF0000000000000000000000
      00000000000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00FFFFFF0000FF00000000000000000000000000000000000000000000000000
      00000000007B00000000007B007B000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      7B00000000000000000000000000000000000000000000000000000000FFFFFF
      FF7B7B7B0000FFFFFFFF7B7B7B0000FFFFFFFF7B7B7B0000FFFFFFFF7B7B7B00
      00FFFFFFFF000000000000000000000000000000000000FFFFFF000000FFFFFF
      000000FFFFFF000000FFFFFF000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000FFBDBDBDFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0000FF000000000000
      0000000000000000000000000000000000000000007B00007B007B0000007B00
      7B000000FFFFFFFFFF00FFFFFFFFFF007B000000000000000000000000000000
      00000000000000000000007B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000000000000000000000
      00000000000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF0000FF00000000000000000000000000000000000000000000
      00000000007B00000000007B007B000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      7B0000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFF
      FFFFFFFFFF000000000000000000000000000000000000FFFFFF000000FFFFFF
      000000FFFFFF000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FF0000000000000000000000000000000000000000FFFFFFFFFF0000FFFFFFFF
      FFFFFFFFFF0000FF000000000000000000000000FFFFFF0000FF000000000000
      0000000000000000000000000000000000000000007B00007B007B0000007B00
      7B000000FFFFFFFFFF00FFFFFFFFFF007B000000000000000000000000000000
      00000000000000000000000000FFFFFFFF7B7B7B0000FFFFFFFF7B7B7B0000FF
      FFFFFF7B7B7B0000FFFFFFFF7B7B7B0000FFFFFFFF0000000000000000000000
      00000000000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000
      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF0000FF00000000000000000000000000000000000000000000
      00000000007B00000000007B007B000000000000FFFF00FFFFFFFFFF00FFFFFF
      7B00000000000000000000000000000000000000000000000000007B7B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B000000000000000000000000000000000000FFFFFF000000FFFFFF
      000000FFFFFF000000FFFFFF000000000000FFFFFFFFFFFF000000FFFFFF0000
      000000000000000000000000000000000000000000FFBDBDBDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0000FF000000000000
      0000000000000000000000000000000000000000007B00007B007B0000007B00
      7B000000FFFFFFFFFF00FFFFFFFFFF007B000000000000000000000000000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFFFFFF
      FFFFFF7B7B7BFFFFFFFFFFFF7B7B7BFFFFFFFFFFFF0000000000000000000000
      00000000000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00FFFFFF0000FF00000000000000000000000000000000000000000000000000
      00000000007B00000000007B007B000000000000FFFF00FFFFFFFFFF00FFFFFF
      7B0000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7B7B7B0000FFFFFFFF7B7B7B0000FFFFFFFF7B7B7B00
      00FFFFFFFF000000000000000000000000000000000000FFFFFF000000FFFFFF
      000000FFFFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000FFFFFFFFFF
      FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0000FF0000FF000000000000000000
      0000000000000000000000000000000000000000007B00007B00007B00007B00
      007B00007B00007B00007B00007B00007B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF000000FFFFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000FFBDBDBDFFFFFFFF0000FFFFFFBDBDBD0000
      FF0000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000FF0000FF00
      00FF0000FF0000FF0000BDBDBDBDBDBDBDBDBDBDBDBDFF0000FF0000FF0000FF
      0000FF0000FF0000000000000000000000000000000000FFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000FF0000FF0000FF0000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000FF0000FF0000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B00007B0000
      7B00007B00007B00007B00007B00007B00007B00007B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000007B00007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF7B0000000000000000000000000000000000000000000000000000
      0000000000007B00007B00007B00007B00007B00007B00007B00007B00007B00
      000000000000000000000000000000000000000000000000007B000000000000
      00007B00000000000000007B00007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
      0000000000000000000000000000007B7B000000007B7B0000007B0000FFFFFF
      7B00007B00007B00007B00007B00007B0000FFFFFF7B00000000000000000000
      000000000000000000000000000000000000000000007B0000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B0000000000000000000000000000000000
      0000000000000000007B00000000000000007B00000000007B00000000000000
      007B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000007B7B0000
      00007B7B000000007B7B7B0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF7B0000000000000000000000000000000000000000000000000000
      0000000000007B0000FFFFFF000000000000000000000000000000FFFFFF7B00
      000000000000000000000000000000000000000000000000007B000000000000
      00007B00000000007B00000000000000007B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFF000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000000000000000000000000000007B7B000000007B7B0000007B0000FFFFFF
      7B00007B00007B0000FFFFFF7B00007B00007B00007B00000000000000000000
      000000000000000000000000000000000000000000007B0000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B0000000000000000000000000000000000
      0000000000000000000000007B00007B00007B00000000007B00000000000000
      007B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000007B7B0000
      00007B7B000000007B7B7B0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B0000FF
      FFFF7B0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B0000FFFFFF000000000000000000000000000000FFFFFF7B00
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00000000007B00007B00007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      00FFFFFF000000BDBDBD000000000000FFFFFF000000FFFFFF00000000000000
      0000000000000000000000000000007B7B000000007B7B0000007B0000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF7B00007B00000000000000000000000000000000
      00000000000000FFFFFF0000000000000000000000007B0000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B0000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000007B7B0000
      00007B7B000000007B7B7B00007B00007B00007B00007B00007B00007B000000
      0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B0000FFFFFF000000000000FFFFFF7B00007B00007B00007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000FF0000FF0000FF0000FF0000
      00FFFFFF000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000007B7B000000007B7B000000007B7B000000
      007B7B000000007B7B000000007B7B0000000000000000000000000000000000
      00000000000000FFFFFF0000000000000000000000007B0000FFFFFFFFFFFFFF
      FFFFFFFFFF7B0000FFFFFF7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000FF0000FF0000FF0000FF0000FF000000FFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFF000000000000000000000000000000000000000000007B7B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B0000FFFFFFFFFFFFFFFFFFFFFFFF7B00007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000FF0000FF0000FF0000FF0000
      FF0000FF000000BDBDBDFFFFFF000000FFFFFF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000007B7B0000000000000000000000000000000000
      00000000000000FFFFFF000000000000FFFFFF0000007B00007B00007B00007B
      00007B00007B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000FF0000FF0000FF0000FF0000FF000000FFFFFFFFFFFFFFFFFF000000
      000000000000000000000000000000000000000000000000000000007B7B0000
      00007B7B00000000FFFF00000000000000FFFF000000000000007B7B00000000
      0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000FF0000FF0000FF0000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00007B00007B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00007B00007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000000000000000FFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF00FFFF00FFFF0000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00007B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000FFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00007B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF00FFFF00FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007B00007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000FFFF00FFFF00FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B00007B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000007B00007B00000000000000000000007B00007B00
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007B00007B000000
      00000000000000000000007B00007B0000000000000000000000000000000000
      000000000000000000000000FFFFFF000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000007B00007B00000000000000000000000000007B00007B00
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B00007B
      00000000000000000000007B00007B0000000000000000000000000000000000
      000000000000000000000000000000FFFFFF0000000000000000000000000000
      00FFFFFF000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007B00007B00007B00007B00007B00000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B0000000000000000000000007B7B7B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFFFFFF00
      0000FFFFFF0000007B7B7B7B7B7B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF00000000
      00007B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7BFFFFFF007B7BFFFFFF007B7B7B7B7B7B7B7B7B7B7B0000
      000000000000007B7B7B00000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFFFF7B7B7B7B7B7B
      7B7B7B7B7B7B7B7B7BFFFFFF0000000000007B00007B00007B00007B00007B00
      007B00000000007B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFFFFFFFFFFFFFFFFFF7B
      00007B00007B00007B0000000000000000000000000000000000FF0000FF0000
      0000007B7B7BFF0000FF0000FFFFFFBDBDBDBDBDBD000000FF0000FF00000000
      000000000000000000000000000000007B7B7B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000BDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
      BDFFFFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF00000000
      00000000000000000000000000000000007B00007B007B0000007B7B7B7B7B7B
      7B7B7BFFFFFF007B7BFFFFFFFFFFFF7B00000000000000000000000000000000
      00000000000000000000FF0000FF00000000007B7B7BFF0000FF0000FFFFFFBD
      BDBDBDBDBD000000FF0000FF0000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBD
      BD00FFFFBDBDBD00FFFF000000000000000000000000000000000000FFFFFFBD
      BDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBD000000FFFFFFBDBDBDBDBDBD
      7B7B7B7B7B7B7B7B7BFFFFFF0000000000000000000000000000000000000000
      007B00007B007B7B007B0000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B
      0000000000000000000000000000000000000000000000000000FF0000FF0000
      000000BDBDBD7B7B7B7B7B7BBDBDBDBDBDBDBDBDBD000000FF0000FF00000000
      00000000000000000000000000000000000000FFFFFF000000BDBDBD00FFFFBD
      BDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBDBD000000000000
      000000000000000000000000BDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
      BD7B00007B00007B00007B000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000
      00000000000000000000000000000000007B00007B007B7B007B7B007B000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B00000000000000000000000000000000
      00000000000000000000FF0000FF00007B7B0000000000000000000000000000
      00000000007B7B00FF0000FF0000000000000000000000000000000000000000
      00000000FFFF00000000FFFFBDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBD
      BD00FFFFBDBDBD00FFFFBDBDBD000000000000000000000000000000FFFFFFBD
      BDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFF00007B00007B0000BDBDBD
      7B7B7B7B7B7B7B7B7BFFFFFF0000000000000000000000000000000000000000
      007B00007B007B7B007B7B007B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B
      0000000000000000000000000000000000000000000000000000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000000
      00000000000000000000000000000000000000FFFFFF00FFFF00000000FFFFBD
      BDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFF000000
      000000000000000000000000BDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
      BD7B00007B0000FF00007B000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000
      000000000000000000000000000000FF000000007B007B7B007B7B007B000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B00000000000000000000000000000000
      00000000000000000000FF00007B7B0000000000000000000000000000000000
      00000000000000007B7B00FF0000000000000000000000000000000000000000
      00000000FFFFFFFFFF000000BDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBD
      BD00FFFFBDBDBD00FFFFBDBDBD00FFFF000000000000000000000000FFFFFFBD
      BDBDFFFFFFBDBDBDFFFFFFBDBDBD7B00007B00007B0000FFFFFF7B0000FFFFFF
      FFFFFFFFFFFF7B7B7B7B7B7B000000000000000000000000000000000000FFFF
      0000FF000000007B007B7B007B000000FFFFFFFFFFFFFFFFFFFFFF00FFFFFF7B
      0000000000000000000000000000000000000000000000000000FF0000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000
      00000000000000000000000000000000000000FFFFFF00FFFFFFFFFF00000000
      0000000000000000000000BDBDBD00FFFFBDBDBD00FFFFBDBDBD00FFFFBDBDBD
      000000000000000000000000BDBDBDFFFFFFBDBDBDFFFFFFBDBDBD7B00007B00
      007B000000000000FFFFFFFFFF00FFFFFFFFFF00FFFF7B7B7B00000000000000
      0000000000FFFF0000FF00FFFF0000FF00FFFF0000FF000000007B007B000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B00000000000000000000000000000000
      00000000000000000000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000FF0000000000000000000000000000000000000000
      00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF0000000000
      00000000000000000000000000000000000000000000000000000000FFFFFFBD
      BDBDFFFFFFBDBDBD7B00007B00007B0000BDBDBD000000000000000000000000
      00000000000000000000000000000000000000000000FF00FFFF0000FF00FFFF
      0000FF00FFFF0000FF00000000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFF7B
      0000000000000000000000000000000000000000000000000000FF0000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000
      00000000000000000000000000000000000000FFFFFF00FFFFFFFFFF00FFFFFF
      FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000000000000000
      000000000000000000000000BDBDBDFFFFFFBDBDBDFFFFFFBDBDBD7B0000BDBD
      BDFFFFFFBDBDBDFFFFFF00000000000000000000000000000000000000000000
      0000000000FFFF0000FF00FFFF0000FF00FFFF0000FF000000007B007B000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B00000000000000000000000000000000
      00000000000000000000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000FF0000000000000000000000000000000000000000
      00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
      FF00FFFFFFFFFF000000000000000000000000000000000000000000FFFFFFBD
      BDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBD000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FF000000007B007B7B007B000000FFFFFFFFFF00FFFFFFFFFF00FFFFFF7B
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
      00000000000000000000000000000000000000FFFFFF00FFFFFFFFFF00FFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000BDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
      BDFFFFFFBDBDBDFFFFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000007B007B7B007B7B007B000000
      FFFF00FFFFFFFFFF00FFFFFFFFFF007B00000000000000000000000000000000
      00000000000000000000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFFFFBD
      BDBD7B00007B00007B00007B00007B00007B0000FFFFFFBDBDBD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      007B00007B007B7B007B7B007B000000FFFFFFFFFF00FFFFFFFFFF00FFFFFF7B
      00000000000000000000000000000000000000000000007B7B7B000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00FF0000FF0000FF0000FF00
      007B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007B00007B007B7B007B7B007B000000
      FFFF00FFFFFFFFFF00FFFFFFFFFF007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00FF0000FF0000FF0000FF00007B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      007B00007B00007B00007B00007B00007B00007B00007B00007B00007B00007B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000400100000100010000000000000F00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFF00000000000000FFFFFFFF
      FF00000000000000FFFFFFFFFF00000000000000F0707FCFFF00000000000000
      F0F87F87FF00000000000000F0F87F03FF00000000000000F0F87E01FF000000
      00000000F0707C00FF00000000000000E0703C20FF00000000000000E0003C70
      7F00000000000000E0003EF83F00000000000000E0003FFC1F00000000000000
      E0603FFE0F00000000000000E0703FFF0700000000000000E0703FFF83000000
      00000000F0F87FFFC300000000000000F870FFFFE300000000000000F870FFFF
      F700000000000000FFFFFFFFFF00000000000000FFFFFFFFFF00000000000000
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FF1FFFFFFFFFFFFF
      FFFF0000FF0FFE007FFF003FF0030000FC07FC003FFE003FE0030000F003FC00
      1FFC003FC0030000C401FC100FFD803FC0030000C000FC0007FCFC3FC4030000
      C4407CFF03F8043FC2030000C1203E0083F0043E01030000C4103E7F83E0043C
      00830000C0083E0003C0043C00430000E0043E0003E0003C00030000F0027E00
      03F0003C00030000F8017E0003F8027C00270000FC01FE0003FC04FFC04F0000
      FE0FFF0003FC01FFC01F0000FFBFFF8003FC03FFC03F0000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF
      FFFFFFFFFFFF0000FFFFFFFFFFFF3FFFFFFF0000F7EAFE0C43C891FE10870000
      C0083FFF0BC000FFFF1F0000F7EB3E0603C0007E44070000C0083FFFDBC0007F
      FE0F0000FFEBFC0003C0007E20070000E0283FFEFBC0007FFF1F0000FFEAFC00
      03C0007F000F0000C4483FFEFBC0007F77EF0000C7CBBF8603C0007F000F0000
      C0003FFFFFC0007FFFFF0000CAA63D556FC0007F759F0000CAA93D546FC0107F
      756F0000CAC93D556FE0187F136F0000CAA93D656FF0FC7F556F0000CEA63C76
      C7F8FE7F359F0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFF0FFFFFFFF87C30000FE7FFFC03FFFFFFF03FF0000FC3FFF80
      1FFFFFFD00C30000FC3FFF000FE0FFFF03FF0000F81FFE000FC041FD00C30000
      F01FFE0007C000FF87FF0000E10FFC0007C000FD80C30000C78FFC0007C000FF
      FFFF0000FF87FC0007C200FE00070000FFC7FC000FCC00FFFFFF0000FFE3FE00
      0FE080FD55570000FFF1FE001FFF84FD55570000FFF8FF003FFF98FC44D70000
      FFFE3F807FFFC1FD55670000FFFFFFE1FFFFFFFD65770000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF
      FFFFFFFFFFFF0000FFF7FFFFFFEFFFFFFFFF0000FFF3FFFFFFEFFFFFFFFF0000
      FFF1FF001FEC127FE0FF0000C000FF9F9FE01FFC00070000C0007FCFDFEC1FFC
      00070000C0003FE7DFEE7FFC00070000C0007FF3FFEFFFFC00070000C000FFF9
      FFEC127C00070000C001FFFCFFE01FFE000F0000C003FFF9FFEC1FFE000F0000
      C007FFF3FFEE7FFE000F0000C01FFFE7DFEFFFFF041F0000C03FFFCFDFC123FF
      8E3F0000C07FFF9F9FC1FFFFFFFF0000C0FFFF001FC1FFFFFFFF0000FFFFFFFF
      FFE7FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFF007FFFFFFF
      FFFF0000F803FF003FFCFFFF001F0000F001FF801FFC7FFEFFAF0000F001FF80
      0FFE3FFC00170000F001FE000FFE1FFDB8470000F001FE001FFF0FFD98570000
      F001FE001FFC07FC001B0000F001FE001FFE1FFD862B0000F001FE001FFF0FFE
      00530000F001FE001FFF07FF7FAB0000F001FF801FF803FFBF830000F001FF00
      1FFC0FFE00030000F001FF001FFE07FE001F0000F001FF801FFE03FE00030000
      F003FFE00FFF01FFDF030000FFFFFFF00FFFFFFFE0030000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF
      FFFFFFFFFFFF0000FFFFFF9FFFE0003FC0030000E005FF0F9FE0003FC0030000
      FFFDFF070FF0003FC0030000FF98FF0207F8003FC0030000FF00FF8007FC003F
      C0030000FE00FFC00FFE003FC0030000FC00FFE01FFF003FC0030000FC00FFF0
      3FC1003F80030000F800FFF03FC1803F00030000F000FFE03FC0603E00030000
      E000FFC01FC0703E00030000C000FF820FC0003C00030000C000FF8707F0183C
      00030000C078FFCF87F0183C00070000E0F8FFFFC7FC183C000F0000F1F8FFFF
      FFFC01BC001F0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFE3FFFFFF001FF
      F0030000FFFE3FFFFFF001FF90030000FFF83FFFFFF001FF70030000FFF83FF1
      FFF001FF70030000FFE07FC3FFF001FF70030000FFC0FFC7FFF001FF70030000
      FFC1FF8FFFF001FF70030000E103FF9FFFF001FEF0030000C007FF9C1FF001FD
      F0030000C00FFF8E1FF001FEF0030000C01FFF841FF001FF70030000C00FFFC0
      1FF001FF70030000C00FFFE0DFF001FF70030000E00FFFFFFFF001FF70030000
      F00FFFFFFFF001FF90030000F81FFFFFFFF001FFF0030000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF
      FFFFFFFFFFFF0000FFFFFFFFFFFFF8FE00070000E000FE000FFF107C00030000
      E000FE000FE2003C00030000E000FE000FC0003C00030000E000FE000FC0003C
      00030000E000FE000FC0003C00030000E000FE000FC0003C00030000E000FE00
      0FC0003C00030000E000FE000FC0003F801F0000E000FE000FC0003F801F0000
      E000FE000FC0003F801F0000E000FE000FC0003F801F0000E000FE000FC0007F
      803F0000E000FE000FC0007F807F0000FFFFFFFFFFC0037F80FF0000FFFFFFFF
      FFF554FF81FF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000F000FFFBFFFFFFFF
      F0030000F000FFF1FFFF8FFFF0030000F000FFF1FFFE07FFF0030000F000FF60
      DFFD03FFF0030000F000FF803FF801FF80030000F000FF803FE000FF80030000
      F000FF001FD0007F80030000F000FF001FC0003F801F0000F000FC0007C0003E
      001F0000F000FF001FE0007E001F0000F000FF001FF000FE001F0000F000FF80
      3FF803FE007F0000F000FF803FFC1FFE007F0000F000FF60DFFE3FFE007F0000
      F000FFFBFFFFFFFE007F0000F000FFFBFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF
      FFFFFFFFFFFF0000E000FFFFFFFF9FFE000F0000E000FFFF23FF87FE000F0000
      E000FFFEE3FF01FE000F0000E000FF3EFFFF007E000F0000E000FF3EF3FE003E
      000F0000E000FFFEF3FE003E000F0000E000FF7EFFC0003E000F0000E000FF3D
      F3C0003E000F0000E000FF9BF3C0007E000F0000E000FFCDFFC00CBE000F0000
      E000FCCEF3C00FBE000F0000E000FCCEF3C00FBE000F0000E000FE1EFFC00FBE
      000F0000E001FFFEE3C0077E001F0000E003FFFF23C008FE003F0000E007FFFF
      FFC00FFE007F0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF003F
      77770000F9FE3FFFE3FF003F55570000F9FE3FFFE3C8003C00030000E07FFE07
      FFC0003F7FFF0000E07F3E07F3C0003E3F7F0000F9FF3FFFF3C0003F52BF0000
      F9FFFFFFFFC0003C00030000FFFF3FFFF3C0003F6DDF0000FFBF3FDFF3C0003E
      3ADF0000FF9FFF9FFFC0003F568F0000E004FE004FF8003C00030000E004FE00
      4FFE003F6FEF0000FF9FFF9FFFFC003E6FF70000FFBE3FDFE3F8007F7FFF0000
      FFFE3FFFE3F100FC00030000FFFFFFFFFFFB01FFFFFF0000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFF
      FFFFFFFC00010000FFFFFFF003FFFFF800010000C0003FC003FE0FFFA01F0000
      C0003F0003F803FF901F0000C0003C0003F001FFA81F0000C0003C0003E000FF
      901F0000C0003C0003E000FFA81F0000C0003C0003C0007F901F0000C0003C00
      03C0007FA81F0000C0003C0003C0007F901F0000C0003C0003C0007FA81F0000
      C0003C0007C0007F901F0000C0003C000FE000FFA81F0000C0003C001FE000FF
      801F0000C0003C007FF001FFFFFF0000C0003C01FFF803FFE07F0000C0003C07
      FFFE0FFFE07F0000FFFFFFFFFFFFFFFFE07F0000FFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
      FFFF0000FF003FFFFFFCFFFFF0030000E0003FF007FB67FFF0030000C0003FF0
      07FB5BFFF0030000C0003FF007FB5BFFF0030000C0003C0007FC5BFFB0030000
      C0007C0007FF47FF90030000C000FC0007FF1FFF80030000C000FC0007FFBFFC
      00030000C000FC000FFF1FFC00070000C000FC001FFF5FFC000F0000C3F0FC00
      3FFE4FFC001F0000C000FC03FFFEEFFC003F0000E001FC07FFFEEFFF8FFF0000
      FE1FFC0FFFFEEFFF9FFF0000FFFFFFFFFFFFFFFFBFFF0000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFF0001C0000FFFFFFFF
      FFFFFFF000100000FFFFFFFFFFFFFFF000100000FFFFFFE7FFFFFFF000010000
      F800FFE7FFF001F001C30000F800FFCF1FEFFAF003830000F800FDCF1FC00170
      03830000F800FC9FFFDF8C7007D30000F800FC1F1FDF8D7005D30000F800FC03
      1FC001B000430000F800FC079FDFFAB000430000F800FC0FCFE0053001CF0000
      F800FC18C7F002B0001F0000F800FC38E7F80070001F0000F801FC78E7F801F0
      001F0000F803FCFCC7FC01F0001F0000F807FDFE0FFC00F001BF0000FFFFFFFF
      FFFE00F0007F0000FFFFFFFFFFFFFFF0007F0000FFFFFFFFFFFFFFF001FF0000
      FFFFFFFFFFFFFFFFFFFF00000001EFFFFFFFFFFFFC01000000014FFFFFFFFFFF
      FC01000000000E0007FFFFFC0001000000001E0007C000F800010000F800FE00
      07C0007800010000F800FE0007C0007800010000F800FE0007C0003800010000
      E000FE0007C0003800010000E000FE0007C00018000100000000FE0007C00018
      000300000000FE0007C00038000700000000FE0007C000F8007F00000000FE00
      07C000F8007F00000000FE0007C001F8007F0000E000FE0007E0FFF8007F0000
      E000FE0007FFFFFC00FF0000F800FFFFFFFFFFFF03FF0000F800FFFFFFFFFFFF
      87FF0000FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object IBDatabase: TIBDatabase
    DatabaseName = 'C:\TEMP\GKU.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    BeforeConnect = IBDatabaseBeforeConnect
    Left = 592
    Top = 272
  end
  object IBTransaction1: TIBTransaction
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 624
    Top = 272
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = '\Software\Kushko\GKU_HVD'
    StorageType = stRegistry
    Left = 160
    Top = 168
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfOffice11
    Left = 520
    Top = 176
  end
  object dom: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = domBeforeOpen
    SelectSQL.Strings = (
      'select DOM, KL, YEARMON from DOM'
      'where yearmon=:yearmon'
      'order by dom')
    Left = 168
    Top = 256
    object domDOM: TIBStringField
      FieldName = 'DOM'
      Origin = 'DOM.DOM'
      Size = 5
    end
    object domKL: TIntegerField
      FieldName = 'KL'
      Origin = 'DOM.KL'
      Required = True
    end
    object domYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = 'DOM.YEARMON'
      Required = True
    end
  end
  object domSource: TDataSource
    DataSet = dom
    Left = 168
    Top = 288
  end
  object IBBackupService1: TIBBackupService
    LoginPrompt = False
    TraceFlags = []
    BlockingFactor = 0
    Options = []
    Left = 272
    Top = 288
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38464.693733657400000000
    ReportOptions.LastChange = 38477.951879375000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 264
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'hvd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 296.862308276425900000
      PaperSize = 9
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        Height = 34.000000000000000000
        Top = 17.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Align = baWidth
          Width = 777.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#1030'i'#1057#8218' '#1056#1111#1056#1109' '#1057#8230#1056#1109#1056#187#1056#1109#1056#1169#1056#1029'i'#1056#8470' '#1056#1030#1056#1109#1056#1169'i')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 68.000000000000000000
        Top = 68.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo3: TfrxDMPMemoView
          Width = 57.600000000000000000
          Height = 51.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '
            #1056#1108#1056#1030#1056#176#1057#1026#1057#8218)
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 67.200000000000000000
          Width = 67.200000000000000000
          Height = 51.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8250'i'#1057#8225#1056#1105#1056#187'., '#1056#1029#1056#1109#1057#1026#1056#1112#1056#176' ...')
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 144.000000000000000000
          Width = 96.000000000000000000
          Height = 51.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#181#1056#1111#1056#181#1057#1026'i'#1057#8364'.'
            #1056#1111#1056#1109#1056#1108#1056#176#1056#183#1056#1029'.'
            #1056#187'i'#1057#8225#1056#1105#1056#187#1057#1034#1056#1029'.')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 249.600000000000000000
          Width = 96.000000000000000000
          Height = 51.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1114#1056#1105#1056#1029#1057#1107#1056#187'i'
            #1056#1111#1056#1109#1056#1108#1056#176#1056#183#1056#1029'.'
            #1056#187'i'#1057#8225#1056#1105#1056#187#1057#1034#1056#1029'.')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 355.200000000000000000
          Top = 34.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8250'i'#1057#8225#1056#1105#1056#187'.'#1056#1112'3')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 470.400000000000000000
          Top = 34.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1111#1056#1105#1057#1027#1056#1108#1056#176)
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 576.000000000000000000
          Top = 34.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1057#1026#1056#1112#1056#176','#1056#1112'3'
            '7,015')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 681.600000000000000000
          Top = 34.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119'i'#1056#1169'"'#1057#8212#1056#183#1056#1169','#1056#1112'3')
          TruncOutboundText = False
        end
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 59.500000000000000000
          Width = 768.000000000000000000
          ShowHint = False
        end
        object DMPMemo26: TfrxDMPMemoView
          Left = 355.200000000000000000
          Width = 422.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1108#1056#176#1056#183#1056#1029#1056#1105#1056#1108#1056#1105)
          TruncOutboundText = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 51.000000000000000000
        Top = 170.000000000000000000
        Width = 777.600000000000000000
        Condition = 'hvd."DOM"'
        OutlineText = #39#1041#1091#1076' '#39'+<hvd."DOM">'
        object DMPMemo2: TfrxDMPMemoView
          Align = baWidth
          Top = 17.000000000000000000
          Width = 777.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Memo.UTF8 = (
            #1056#8216#1057#1107#1056#1169#1056#1105#1056#1029#1056#1109#1056#1108' '#1074#8222#8211' [hvd."DOM"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.000000000000000000
        Top = 238.000000000000000000
        Width = 777.600000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'hvd'
        RowCount = 0
        object DMPMemo11: TfrxDMPMemoView
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataField = 'KVART'
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Memo.UTF8 = (
            '[hvd."KVART"]')
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 67.200000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Memo.UTF8 = (
            '[iif(<hvd."PLOMB">=1,'#39#1056#1115#1056#1111#1056#187#1056#1109#1056#1112#1056#177#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#8470#39','
            'iif(<hvd."WID">=1,'#39#1056#8250'i'#1057#8225#39','
            'iif(<hvd."WID">=2,'#39' '#1056#1116#1056#1109#1057#1026#39','
            'iif(<hvd."WID">=3,'#39'  '#1056#1119'i'#1056#1169#39','#39#39'))))]')
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 153.600000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[hvd."SCH_CUR"]')
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          Left = 249.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataField = 'SCH_OLD'
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[hvd."SCH_OLD"]')
          TruncOutboundText = False
        end
        object DMPMemo15: TfrxDMPMemoView
          Left = 355.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataField = 'SCH_RAZN'
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[hvd."SCH_RAZN"]')
          TruncOutboundText = False
        end
        object DMPMemo16: TfrxDMPMemoView
          Left = 470.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[hvd."KOLI_P"]')
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Left = 576.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[hvd."NOR_RAZN"]')
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Left = 681.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[hvd."GRP_RAZN"]')
          TruncOutboundText = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 51.000000000000000000
        Top = 272.000000000000000000
        Width = 777.600000000000000000
        object DMPLine2: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 8.500000000000000000
          Width = 768.000000000000000000
          ShowHint = False
        end
        object DMPMemo19: TfrxDMPMemoView
          Left = 355.200000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_RAZN">,MasterData1)]')
          TruncOutboundText = False
        end
        object DMPMemo22: TfrxDMPMemoView
          Left = 470.400000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hvd."KOLI_P">,MasterData1)]')
          TruncOutboundText = False
        end
        object DMPMemo23: TfrxDMPMemoView
          Left = 576.000000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."NOR_RAZN">,MasterData1)]')
          TruncOutboundText = False
        end
        object DMPMemo24: TfrxDMPMemoView
          Left = 681.600000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."GRP_RAZN">,MasterData1)]')
          TruncOutboundText = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Left = 57.600000000000000000
          Top = 17.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1057#1027#1057#1034#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#177#1057#1107#1056#1169#1056#1105#1056#1029#1056#1108#1057#1107' [hvd."DOM"]')
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 34.000000000000000000
        Top = 357.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo20: TfrxDMPMemoView
          Align = baLeft
          Top = 17.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Align = baRight
          Left = 691.200000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1056#1109#1057#1026'. [Page#]')
          TruncOutboundText = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'hvd'
    CloseDataSource = True
    FieldAliases.Strings = (
      'KL=KL'
      'YEARMON=YEARMON'
      'PLOMB=PLOMB'
      'FIO=FIO'
      'WID=WID'
      'DOM=DOM'
      'KVART=KVART'
      'SCHET=SCHET'
      'N_SCH=N_SCH'
      'SCH_OLD=SCH_OLD'
      'SCH_CUR=SCH_CUR'
      'SCH_RAZN=SCH_RAZN'
      'KOLI_P=KOLI_P'
      'KOLI_P0=KOLI_P0'
      'KOLI_P1=KOLI_P1'
      'NOR_RAZN=NOR_RAZN'
      'GRP_RAZN=GRP_RAZN'
      'PERE_DAY=PERE_DAY'
      'PERE_RAZN=PERE_RAZN'
      'ID_KONTR=ID_KONTR'
      'UL=UL'
      'N_DOM=N_DOM'
      'KV=KV'
      'NOTE=NOTE'
      'KOLI_F=KOLI_F'
      'RASCH_KUB=RASCH_KUB'
      'RASCH_NOR=RASCH_NOR'
      'POD=POD'
      'RASCH_NOTE=RASCH_NOTE'
      'DATE_POK=DATE_POK'
      'VID_POK=VID_POK'
      'KUB_MES=KUB_MES'
      'LICH_POV=LICH_POV'
      'ORG=ORG'
      'VID_RN=VID_RN'
      'VID_ZN=VID_ZN')
    DataSet = IBQueryRep
    BCDToCurrency = False
    Left = 432
    Top = 264
  end
  object grp: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = grpBeforeOpen
    OnNewRecord = grpNewRecord
    DeleteSQL.Strings = (
      'delete from HVGRP'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into HVGRP'
      
        '  (DOM, KL, KL_UL, N_DOM, N_LICH, NORMA, NORMA_BL, NOTE, POD, RA' +
        'ZN, SCH_CUR, '
      
        '   SCH_KUB, SCH_NAS, SCH_OLD, SCH_RAZN, SCH_SUMABON, SCH_UR, SCH' +
        '0, SCH1, '
      '   TIP, UL, YEARMON)'
      'values'
      
        '  (:DOM, :KL, :KL_UL, :N_DOM, :N_LICH, :NORMA, :NORMA_BL, :NOTE,' +
        ' :POD, '
      
        '   :RAZN, :SCH_CUR, :SCH_KUB, :SCH_NAS, :SCH_OLD, :SCH_RAZN, :SC' +
        'H_SUMABON, '
      '   :SCH_UR, :SCH0, :SCH1, :TIP, :UL, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  SCH0,'
      '  SCH1,'
      '  RAZN,'
      '  NORMA,'
      '  NOTE,'
      '  DOM,'
      '  POD,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  NORMA_BL,'
      '  N_LICH,'
      '  TIP,'
      '  KL_UL,'
      '  UL,'
      '  N_DOM,'
      '  SCH_NAS,'
      '  SCH_UR,'
      '  SCH_SUMABON,'
      '  SCH_KUB'
      'from HVGRP '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from HVGRP'
      'where yearmon=:yearmon'
      '')
    ModifySQL.Strings = (
      'update HVGRP'
      'set'
      '  DOM = :DOM,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  N_DOM = :N_DOM,'
      '  N_LICH = :N_LICH,'
      '  NORMA = :NORMA,'
      '  NORMA_BL = :NORMA_BL,'
      '  NOTE = :NOTE,'
      '  POD = :POD,'
      '  RAZN = :RAZN,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_KUB = :SCH_KUB,'
      '  SCH_NAS = :SCH_NAS,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_SUMABON = :SCH_SUMABON,'
      '  SCH_UR = :SCH_UR,'
      '  SCH0 = :SCH0,'
      '  SCH1 = :SCH1,'
      '  TIP = :TIP,'
      '  UL = :UL,'
      '  YEARMON = :YEARMON'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_HVGRP_ID'
    Left = 224
    Top = 336
    object grpKL: TIntegerField
      FieldName = 'KL'
      Origin = '"HVGRP"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object grpYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"HVGRP"."YEARMON"'
    end
    object grpSCH0: TIBStringField
      FieldName = 'SCH0'
      Origin = '"HVGRP"."SCH0"'
      Size = 10
    end
    object grpSCH1: TIBStringField
      FieldName = 'SCH1'
      Origin = '"HVGRP"."SCH1"'
      Size = 10
    end
    object grpRAZN: TFloatField
      FieldName = 'RAZN'
      Origin = '"HVGRP"."RAZN"'
    end
    object grpNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"HVGRP"."NORMA"'
    end
    object grpNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"HVGRP"."NOTE"'
      Size = 45
    end
    object grpDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"HVGRP"."DOM"'
      Size = 5
    end
    object grpPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"HVGRP"."POD"'
    end
    object grpSCH_OLD: TFloatField
      FieldName = 'SCH_OLD'
      Origin = '"HVGRP"."SCH_OLD"'
    end
    object grpSCH_CUR: TFloatField
      FieldName = 'SCH_CUR'
      Origin = '"HVGRP"."SCH_CUR"'
      OnChange = grpSCH_CURChange
    end
    object grpSCH_NAS: TFloatField
      FieldName = 'SCH_NAS'
      Origin = '"HVGRP"."SCH_NAS"'
    end
    object grpSCH_KUB: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SCH_KUB'
      Origin = '"HVGRP"."SCH_KUB"'
      ProviderFlags = []
      ReadOnly = True
    end
    object grpSCH_RAZN: TFloatField
      FieldName = 'SCH_RAZN'
      Origin = '"HVGRP"."SCH_RAZN"'
    end
    object grpNORMA_BL: TFloatField
      FieldName = 'NORMA_BL'
      Origin = '"HVGRP"."NORMA_BL"'
    end
    object grpSCH_UR: TFloatField
      FieldName = 'SCH_UR'
      Origin = '"HVGRP"."SCH_UR"'
    end
    object grpN_LICH: TIBStringField
      FieldName = 'N_LICH'
      Origin = '"HVGRP"."N_LICH"'
    end
    object grpTIP: TIBStringField
      FieldName = 'TIP'
      Origin = '"HVGRP"."TIP"'
    end
    object grpKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"HVGRP"."KL_UL"'
    end
    object grpUL: TIBStringField
      FieldName = 'UL'
      Origin = '"HVGRP"."UL"'
      Size = 70
    end
    object grpN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"HVGRP"."N_DOM"'
      Size = 10
    end
    object grpSCH_SUMABON: TFloatField
      FieldName = 'SCH_SUMABON'
      Origin = '"HVGRP"."SCH_SUMABON"'
    end
  end
  object grpSource: TDataSource
    DataSet = grp
    Left = 224
    Top = 368
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 472
    Top = 176
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 712
    Top = 288
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 504
    Top = 264
  end
  object frxReport2: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39959.706495023100000000
    ReportOptions.LastChange = 43292.420399351900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function norm():variant;'
      'begin'
      '  result := DaysPerMonth(<data."YEARMON">)*0.2;'
      'end;'
      ''
      'function DaysPerMonth(Date: Integer): Integer;'
      'begin'
      '  Result:=DaysPerYMonth(Date div 100,Date mod 100);'
      'end;'
      ''
      'function DaysPerYMonth(AYear, AMonth: Integer): Integer;'
      'var    '
      '  DaysInMonth: array[1..12] of Integer;'
      'begin'
      
        ' // DaysInMonth:=(31,28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)' +
        ';'
      '  DaysInMonth[1]:=31;'
      '  DaysInMonth[2]:=28;'
      '  DaysInMonth[3]:=31;'
      '  DaysInMonth[4]:=30;        '
      '  DaysInMonth[5]:=31;      '
      '  DaysInMonth[6]:=30;    '
      '  DaysInMonth[7]:=31;    '
      '  DaysInMonth[8]:=31;    '
      '  DaysInMonth[9]:=30;    '
      '  DaysInMonth[10]:=31;    '
      '  DaysInMonth[11]:=30;    '
      '  DaysInMonth[12]:=31;          '
      '  Result := DaysInMonth[AMonth];'
      
        '  if (AMonth = 2) and IsLeapYear(AYear) then Inc(Result); { leap' +
        '-year Feb isspecial }'
      'end;'
      ''
      '    begin'
      ''
      'end.')
    Left = 400
    Top = 296
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'hvd'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'hvd2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 136.063080000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1056#1105#1056#8470' '#1056#183#1056#1030'i'#1057#8218' '#1056#1111#1056#1109' '#1057#8230#1056#1109#1056#187#1056#1109#1056#1169#1056#1029'i'#1056#8470' '#1056#1030#1056#1109#1056#1169'i')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'hvd'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 17.000000000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.419312533333000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
        object Memo19: TfrxMemoView
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[<Date>] [<Time>]')
        end
      end
      object Header1: TfrxHeader
        Height = 56.692950000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo3: TfrxMemoView
          Left = 34.015770000000000000
          Width = 60.472480000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8216#1057#1107#1056#1169#1056#1105#1056#1029#1056#1109#1056#1108)
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 102.047310000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1108#1056#176#1056#183#1056#1029#1056#1105#1056#1108#1056#1105)
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 325.039580000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1057#8211#1056#183#1056#1029#1056#1105#1057#8224#1057#1039)
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 400.630180000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1111)
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 495.118430000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1057#1026#1056#1112#1056#176','#1056#1112'3'
            '[norm()]')
        end
        object Memo9: TfrxMemoView
          Left = 589.606680000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119'i'#1056#1169'"'#1057#8212#1056#183#1056#1169','#1056#1112'3')
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 102.047310000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1111#1056#181#1057#1026#1056#181#1056#1169#1056#1029#1057#8221)
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 215.433210000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1108#1056#176#1056#183#1056#1029#1056#1105#1056#1108)
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 102.047310000000000000
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8250#1057#8211#1057#8225#1056#1105#1056#187#1057#1034#1056#1029#1056#1105#1056#1108#1056#1105', '#1056#1112'3')
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        Condition = 'hvd."DOM"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[hvd."DOM"]')
        end
        object Memo12: TfrxMemoView
          Left = 102.047310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_OLD">,MasterData1)]')
        end
        object Memo13: TfrxMemoView
          Left = 215.433210000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_CUR">,MasterData1)]')
        end
        object Memo14: TfrxMemoView
          Left = 325.039580000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_RAZN">,MasterData1)]')
        end
        object Memo15: TfrxMemoView
          Left = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<hvd."KOLI_P">,MasterData1)]')
        end
        object Memo16: TfrxMemoView
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."NOR_RAZN">,MasterData1)]')
        end
        object Memo17: TfrxMemoView
          Left = 589.606680000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."GRP_RAZN">,MasterData1)]')
        end
      end
      object Footer1: TfrxFooter
        Height = 79.370130000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Left = 30.236240000000000000
          Top = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            #1056#8217#1057#1027#1057#1034#1056#1109#1056#1110#1056#1109)
        end
        object Memo21: TfrxMemoView
          Left = 102.047310000000000000
          Top = 15.118120000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_OLD">,MasterData1)]')
        end
        object Memo22: TfrxMemoView
          Left = 219.212740000000000000
          Top = 15.118120000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_CUR">,MasterData1)]')
        end
        object Memo23: TfrxMemoView
          Left = 325.039580000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_RAZN">,MasterData1)]')
        end
        object Memo24: TfrxMemoView
          Left = 400.630180000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<hvd."KOLI_P">,MasterData1)]')
        end
        object Memo25: TfrxMemoView
          Left = 495.118430000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."NOR_RAZN">,MasterData1)]')
        end
        object Memo26: TfrxMemoView
          Left = 589.606680000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<hvd."GRP_RAZN">,MasterData1)]')
        end
        object Memo27: TfrxMemoView
          Left = 139.842610000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_RAZN">,MasterData1)+'
            'SUM(<hvd."NOR_RAZN">,MasterData1)+'
            'SUM(<hvd."GRP_RAZN">,MasterData1)]')
        end
        object Memo28: TfrxMemoView
          Left = 30.236240000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            #1056#160#1056#176#1056#183#1056#1109#1056#1112)
        end
        object Line1: TfrxLineView
          Left = 18.897650000000000000
          Top = 7.559060000000040000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object hvd_rep: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = hvd_repBeforeOpen
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (FIO, GRP_RAZN, KL, KOLI_F, KOLI_P, NOR_RAZN, PERE_DAY, PERE_R' +
        'AZN, PLOMB, '
      '   SCH_CUR, SCH_OLD, SCHET, WID, YEARMON)'
      'values'
      
        '  (:FIO, :GRP_RAZN, :KL, :KOLI_F, :KOLI_P, :NOR_RAZN, :PERE_DAY,' +
        ' :PERE_RAZN, '
      '   :PLOMB, :SCH_CUR, :SCH_OLD, :SCHET, :WID, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  DOM,'
      '  GRP_RAZN,'
      '  KL,'
      '  KOLI_P,'
      '  KOLI_F,'
      '  NOR_RAZN,'
      '  SCH_CUR,'
      '  SCH_OLD,'
      '  SCH_RAZN,'
      '  SCHET,'
      '  KVART,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  YEARMON,'
      '  PERE_DAY,'
      '  PERE_RAZN'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'SELECT H_VODA.DOM, H_VODA.GRP_RAZN, H_VODA.KL, H_VODA.KOLI_P, H_' +
        'VODA.KOLI_F,H_VODA.NOR_RAZN, H_VODA.SCH_CUR, H_VODA.SCH_OLD, H_V' +
        'ODA.SCH_RAZN, H_VODA.SCHET, H_VODA.KVART, H_VODA.PLOMB, h_voda.F' +
        'IO, h_voda.WID,  h_voda.yearmon, PERE_DAY, PERE_RAZN'
      'FROM H_VODA'
      'where h_voda.yearmon=:yearmon and (h_voda.org=0)'
      'ORDER BY H_VODA.SCHET')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  KL = :KL,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PLOMB = :PLOMB,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCHET = :SCHET,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 432
    Top = 296
    object hvd_repDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = 'H_VODA.DOM'
      ReadOnly = True
      Size = 10
    end
    object hvd_repGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = 'H_VODA.GRP_RAZN'
      Precision = 18
      Size = 4
    end
    object hvd_repKL: TIntegerField
      FieldName = 'KL'
      Origin = 'H_VODA.KL'
      Required = True
    end
    object hvd_repKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = 'H_VODA.KOLI_P'
      Precision = 18
      Size = 4
    end
    object hvd_repNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = 'H_VODA.NOR_RAZN'
      Precision = 18
      Size = 4
    end
    object hvd_repSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = 'H_VODA.SCH_CUR'
      Precision = 18
      Size = 4
    end
    object hvd_repSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = 'H_VODA.SCH_OLD'
      Precision = 18
      Size = 4
    end
    object hvd_repSCH_RAZN: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'SCH_RAZN'
      Origin = 'H_VODA.SCH_RAZN'
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object hvd_repSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = 'H_VODA.SCHET'
      Required = True
      Size = 10
    end
    object hvd_repKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = 'H_VODA.KVART'
      ReadOnly = True
      Size = 10
    end
    object hvd_repPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = 'H_VODA.PLOMB'
    end
    object hvd_repFIO: TIBStringField
      FieldName = 'FIO'
      Origin = 'H_VODA.FIO'
      Size = 35
    end
    object hvd_repWID: TSmallintField
      FieldName = 'WID'
      Origin = 'H_VODA.WID'
    end
    object hvd_repYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = 'H_VODA.YEARMON'
      Required = True
    end
    object hvd_repPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = 'H_VODA.PERE_DAY'
    end
    object hvd_repPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = 'H_VODA.PERE_RAZN'
      Precision = 18
      Size = 4
    end
    object hvd_repKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    Top = 8
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16448250
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
  end
  object data: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterClose = dataAfterClose
    AfterOpen = dataAfterOpen
    AfterScroll = dataAfterScroll
    OnCalcFields = dataCalcFields
    DeleteSQL.Strings = (
      'delete from DATA'
      'where'
      '  YEARMON = :OLD_YEARMON')
    InsertSQL.Strings = (
      'insert into DATA'
      '  (YEARMON, NORMA_HVD)'
      'values'
      '  (:YEARMON, :NORMA_HVD)')
    RefreshSQL.Strings = (
      'Select '
      '  YEARMON,'
      '  NORMA_HVD'
      'from DATA '
      'where'
      '  YEARMON = :YEARMON')
    SelectSQL.Strings = (
      'SELECT DATA.YEARMON, DATA.NORMA_HVD'
      'FROM DATA'
      'ORDER BY DATA.YEARMON DESC')
    ModifySQL.Strings = (
      'update DATA'
      'set'
      '  YEARMON = :YEARMON,'
      '  NORMA_HVD = :NORMA_HVD'
      'where'
      '  YEARMON = :OLD_YEARMON')
    Left = 56
    Top = 322
    object dataYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = 'DATA.YEARMON'
      Required = True
    end
    object dataNORMA_HVD: TIBBCDField
      FieldName = 'NORMA_HVD'
      Origin = 'DATA.NORMA_HVD'
      Precision = 18
      Size = 4
    end
    object dataym: TStringField
      FieldKind = fkCalculated
      FieldName = 'ym'
      Calculated = True
    end
  end
  object DataSource: TDataSource
    DataSet = data
    Left = 88
    Top = 322
  end
  object frxReport3: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38476.970047916670000000
    ReportOptions.LastChange = 38476.970047916670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 776
    Top = 250
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'#174
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 744
    Top = 258
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 744
    Top = 290
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'#174
    Subject = 'FastReport'#174' PDF export'
    Creator = 'FastReport'#174' (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 744
    Top = 322
  end
  object plombSource: TDataSource
    DataSet = plomb
    Left = 352
    Top = 384
  end
  object plomb: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from PLOMB'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into PLOMB'
      '  (KL, NAIM)'
      'values'
      '  (:KL, :NAIM)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NAIM'
      'from PLOMB '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select KL, NAIM from PLOMB'
      'order by kl')
    ModifySQL.Strings = (
      'update PLOMB'
      'set'
      '  KL = :KL,'
      '  NAIM = :NAIM'
      'where'
      '  KL = :OLD_KL')
    Left = 352
    Top = 352
    object plombKL: TIntegerField
      FieldName = 'KL'
      Origin = 'PLOMB.KL'
      Required = True
    end
    object plombNAIM: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072
      FieldName = 'NAIM'
      Origin = 'PLOMB.NAIM'
      Size = 25
    end
  end
  object hvdall: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = hvdallBeforeOpen
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (DATE_POK, DATE_ZN, DEL_NORM, EDRPOU, FILTR, FIO, GRP_RAZN, ID' +
        '_KONTR, '
      
        '   KL, KL_UL, KLNTAR, KOLI_F, KOLI_P, KOLI_P0, KOLI_P1, KUB_ALL,' +
        ' KUB_MES, '
      
        '   KUB_NOBALANS, KV, LICH_POV, LICH_TO, LICH_YEARMON, N_DOM, N_S' +
        'CH, NOR_RAZN, '
      
        '   NORM_BLICH, NORMA, NOTE, OLD_NORM, ORG, PERE_DAY, PERE_RAZN, ' +
        'PERERAH, '
      
        '   PLOMB, PLOSCH_UR, POD, POMPA, PREV_NORM, R_NACH, RASCH_KUB, R' +
        'ASCH_NOR, '
      
        '   RASCH_NOTE, SCH_CUR, SCH_OLD, SCH_RAZN, SCH_RAZN2, SCHET, TAR' +
        'IF_NAME, '
      '   UL, VID_POK, VID_RN, WID, YEARMON, ZN_LICH, ZNOLD_LICH)'
      'values'
      
        '  (:DATE_POK, :DATE_ZN, :DEL_NORM, :EDRPOU, :FILTR, :FIO, :GRP_R' +
        'AZN, :ID_KONTR, '
      
        '   :KL, :KL_UL, :KLNTAR, :KOLI_F, :KOLI_P, :KOLI_P0, :KOLI_P1, :' +
        'KUB_ALL, '
      
        '   :KUB_MES, :KUB_NOBALANS, :KV, :LICH_POV, :LICH_TO, :LICH_YEAR' +
        'MON, :N_DOM, '
      
        '   :N_SCH, :NOR_RAZN, :NORM_BLICH, :NORMA, :NOTE, :OLD_NORM, :OR' +
        'G, :PERE_DAY, '
      
        '   :PERE_RAZN, :PERERAH, :PLOMB, :PLOSCH_UR, :POD, :POMPA, :PREV' +
        '_NORM, '
      
        '   :R_NACH, :RASCH_KUB, :RASCH_NOR, :RASCH_NOTE, :SCH_CUR, :SCH_' +
        'OLD, :SCH_RAZN, '
      
        '   :SCH_RAZN2, :SCHET, :TARIF_NAME, :UL, :VID_POK, :VID_RN, :WID' +
        ', :YEARMON, '
      '   :ZN_LICH, :ZNOLD_LICH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  DOM,'
      '  KVART,'
      '  SCHET,'
      '  N_SCH,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  SCH_RAZN2,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN,'
      '  ID_KONTR,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  NOTE,'
      '  KOLI_F,'
      '  RASCH_KUB,'
      '  RASCH_NOR,'
      '  POD,'
      '  RASCH_NOTE,'
      '  DATE_POK,'
      '  VID_POK,'
      '  KUB_MES,'
      '  LICH_POV,'
      '  ORG,'
      '  VID_RN,'
      '  FILTR,'
      '  POMPA,'
      '  ZN_LICH,'
      '  ZNOLD_LICH,'
      '  DATE_ZN,'
      '  LICH_TO,'
      '  KLNTAR,'
      '  TARIF_NAME,'
      '  NORMA,'
      '  OLD_NORM,'
      '  DEL_NORM,'
      '  PREV_NORM,'
      '  LICH_YEARMON,'
      '  EDRPOU,'
      '  KL_UL,'
      '  R_NACH,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PLOSCH_UR,'
      '  PERERAH'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'select * from H_VODA where h_voda.yearmon=:yearmon order by sche' +
        't')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_ZN = :DATE_ZN,'
      '  DEL_NORM = :DEL_NORM,'
      '  EDRPOU = :EDRPOU,'
      '  FILTR = :FILTR,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KLNTAR = :KLNTAR,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_MES = :KUB_MES,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  LICH_POV = :LICH_POV,'
      '  LICH_TO = :LICH_TO,'
      '  LICH_YEARMON = :LICH_YEARMON,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NORMA = :NORMA,'
      '  NOTE = :NOTE,'
      '  OLD_NORM = :OLD_NORM,'
      '  ORG = :ORG,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  PLOMB = :PLOMB,'
      '  PLOSCH_UR = :PLOSCH_UR,'
      '  POD = :POD,'
      '  POMPA = :POMPA,'
      '  PREV_NORM = :PREV_NORM,'
      '  R_NACH = :R_NACH,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_RAZN2 = :SCH_RAZN2,'
      '  SCHET = :SCHET,'
      '  TARIF_NAME = :TARIF_NAME,'
      '  UL = :UL,'
      '  VID_POK = :VID_POK,'
      '  VID_RN = :VID_RN,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  ZN_LICH = :ZN_LICH,'
      '  ZNOLD_LICH = :ZNOLD_LICH'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 440
    Top = 352
    object hvdallKL: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object hvdallYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object hvdallPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object hvdallFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object hvdallWID: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object hvdallDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdallKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdallSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object hvdallN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object hvdallSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object hvdallSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object hvdallSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdallSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hvdallKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object hvdallKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object hvdallKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object hvdallNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdallGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdallPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object hvdallPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdallID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object hvdallUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object hvdallN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object hvdallKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object hvdallNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object hvdallKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object hvdallRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object hvdallRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object hvdallPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object hvdallRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object hvdallDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object hvdallVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object hvdallKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object hvdallLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object hvdallORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object hvdallVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object hvdallFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object hvdallPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object hvdallZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object hvdallZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object hvdallDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object hvdallLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object hvdallKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hvdallTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hvdallNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hvdallOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hvdallDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hvdallPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hvdallLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hvdallEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hvdallKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hvdallR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hvdallNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hvdallKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hvdallKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object hvdallPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object hvdallPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
  end
  object hvdallSource: TDataSource
    DataSet = hvdall
    Left = 440
    Top = 384
  end
  object hvd3: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = hvd3BeforeOpen
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  SNORM = :OLD_SNORM and'
      '  SRAZN = :OLD_SRAZN')
    InsertSQL.Strings = (
      'insert into H_VODA'
      '  (SCHET, SNORM, SRAZN)'
      'values'
      '  (:SCHET, :SNORM, :SRAZN)')
    RefreshSQL.Strings = (
      'Select '
      '  SCHET,'
      '  SRAZN,'
      '  SNORM'
      'from H_VODA '
      'where'
      '  SCHET = :SCHET and'
      '  SNORM = :SNORM and'
      '  SRAZN = :SRAZN')
    SelectSQL.Strings = (
      'select schet,sum(sch_razn) srazn,sum(nor_razn) snorm from H_VODA'
      'where h_voda.yearmon>=:yearmon1 and  h_voda.yearmon<=:yearmon2'
      'group by schet'
      'order by schet')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  SCHET = :SCHET,'
      '  SNORM = :SNORM,'
      '  SRAZN = :SRAZN'
      'where'
      '  SCHET = :OLD_SCHET and'
      '  SNORM = :OLD_SNORM and'
      '  SRAZN = :OLD_SRAZN')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 480
    Top = 352
    object hvd3SCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object hvd3SRAZN: TIBBCDField
      FieldName = 'SRAZN'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object hvd3SNORM: TIBBCDField
      FieldName = 'SNORM'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object hvd3Source: TDataSource
    DataSet = hvd3
    Left = 480
    Top = 384
  end
  object hvd12: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = hvd12BeforeOpen
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (DATE_POK, DATE_ZN, DEL_NORM, EDRPOU, FILTR, FIO, GRP_RAZN, ID' +
        '_KONTR, '
      
        '   KL, KL_UL, KLNTAR, KOLI_F, KOLI_P, KOLI_P0, KOLI_P1, KUB_ALL,' +
        ' KUB_MES, '
      
        '   KUB_NOBALANS, KV, LICH_POV, LICH_TO, LICH_YEARMON, N_DOM, N_S' +
        'CH, NOR_RAZN, '
      
        '   NORM_BLICH, NORMA, NOTE, OLD_NORM, ORG, PERE_DAY, PERE_RAZN, ' +
        'PERERAH, '
      
        '   PLOMB, PLOSCH_UR, POD, POMPA, PREV_NORM, R_NACH, RASCH_KUB, R' +
        'ASCH_NOR, '
      
        '   RASCH_NOTE, SCH_CUR, SCH_OLD, SCH_RAZN, SCH_RAZN2, SCHET, TAR' +
        'IF_NAME, '
      '   UL, VID_POK, VID_RN, WID, YEARMON, ZN_LICH, ZNOLD_LICH)'
      'values'
      
        '  (:DATE_POK, :DATE_ZN, :DEL_NORM, :EDRPOU, :FILTR, :FIO, :GRP_R' +
        'AZN, :ID_KONTR, '
      
        '   :KL, :KL_UL, :KLNTAR, :KOLI_F, :KOLI_P, :KOLI_P0, :KOLI_P1, :' +
        'KUB_ALL, '
      
        '   :KUB_MES, :KUB_NOBALANS, :KV, :LICH_POV, :LICH_TO, :LICH_YEAR' +
        'MON, :N_DOM, '
      
        '   :N_SCH, :NOR_RAZN, :NORM_BLICH, :NORMA, :NOTE, :OLD_NORM, :OR' +
        'G, :PERE_DAY, '
      
        '   :PERE_RAZN, :PERERAH, :PLOMB, :PLOSCH_UR, :POD, :POMPA, :PREV' +
        '_NORM, '
      
        '   :R_NACH, :RASCH_KUB, :RASCH_NOR, :RASCH_NOTE, :SCH_CUR, :SCH_' +
        'OLD, :SCH_RAZN, '
      
        '   :SCH_RAZN2, :SCHET, :TARIF_NAME, :UL, :VID_POK, :VID_RN, :WID' +
        ', :YEARMON, '
      '   :ZN_LICH, :ZNOLD_LICH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  DOM,'
      '  KVART,'
      '  SCHET,'
      '  N_SCH,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  SCH_RAZN2,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN,'
      '  ID_KONTR,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  NOTE,'
      '  KOLI_F,'
      '  RASCH_KUB,'
      '  RASCH_NOR,'
      '  POD,'
      '  RASCH_NOTE,'
      '  DATE_POK,'
      '  VID_POK,'
      '  KUB_MES,'
      '  LICH_POV,'
      '  ORG,'
      '  VID_RN,'
      '  FILTR,'
      '  POMPA,'
      '  ZN_LICH,'
      '  ZNOLD_LICH,'
      '  DATE_ZN,'
      '  LICH_TO,'
      '  KLNTAR,'
      '  TARIF_NAME,'
      '  NORMA,'
      '  OLD_NORM,'
      '  DEL_NORM,'
      '  PREV_NORM,'
      '  LICH_YEARMON,'
      '  EDRPOU,'
      '  KL_UL,'
      '  R_NACH,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PLOSCH_UR,'
      '  PERERAH'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from H_VODA where h_voda.yearmon=:yearmon')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_ZN = :DATE_ZN,'
      '  DEL_NORM = :DEL_NORM,'
      '  EDRPOU = :EDRPOU,'
      '  FILTR = :FILTR,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KLNTAR = :KLNTAR,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_MES = :KUB_MES,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  LICH_POV = :LICH_POV,'
      '  LICH_TO = :LICH_TO,'
      '  LICH_YEARMON = :LICH_YEARMON,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NORMA = :NORMA,'
      '  NOTE = :NOTE,'
      '  OLD_NORM = :OLD_NORM,'
      '  ORG = :ORG,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  PLOMB = :PLOMB,'
      '  PLOSCH_UR = :PLOSCH_UR,'
      '  POD = :POD,'
      '  POMPA = :POMPA,'
      '  PREV_NORM = :PREV_NORM,'
      '  R_NACH = :R_NACH,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_RAZN2 = :SCH_RAZN2,'
      '  SCHET = :SCHET,'
      '  TARIF_NAME = :TARIF_NAME,'
      '  UL = :UL,'
      '  VID_POK = :VID_POK,'
      '  VID_RN = :VID_RN,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  ZN_LICH = :ZN_LICH,'
      '  ZNOLD_LICH = :ZNOLD_LICH'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 520
    Top = 352
    object hvd12KL: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object hvd12YEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object hvd12PLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object hvd12FIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object hvd12WID: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object hvd12DOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvd12KVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvd12SCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object hvd12N_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object hvd12SCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object hvd12SCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object hvd12SCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvd12SCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hvd12KOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object hvd12KOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object hvd12KOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object hvd12NOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvd12GRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvd12PERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object hvd12PERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvd12ID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object hvd12UL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object hvd12N_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object hvd12KV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object hvd12NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object hvd12KOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object hvd12RASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object hvd12RASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object hvd12POD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object hvd12RASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object hvd12DATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object hvd12VID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object hvd12KUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object hvd12LICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object hvd12ORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object hvd12VID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object hvd12FILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object hvd12POMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object hvd12ZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object hvd12ZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object hvd12DATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object hvd12LICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object hvd12KLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hvd12TARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hvd12NORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hvd12OLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hvd12DEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hvd12PREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hvd12LICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hvd12EDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hvd12KL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hvd12R_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hvd12NORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hvd12KUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hvd12KUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object hvd12PLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object hvd12PERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
  end
  object hvd12Source: TDataSource
    DataSet = hvd12
    Left = 520
    Top = 384
  end
  object pokaznSource: TDataSource
    DataSet = pokazn
    Left = 344
    Top = 464
  end
  object pokazn: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from POKAZN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into POKAZN'
      
        '  (DATE_POK, DATE_USER, DATE_ZN, DEL, FIO, FL_BIGPOK, ID, ID_LIC' +
        'H, ID_USER, '
      '   N_DOC, NOTE, POKAZN, PPP, SCHET, USER_NAIM, VID_POK, VID_ZN, '
      '   YEARMON)'
      'values'
      
        '  (:DATE_POK, :DATE_USER, :DATE_ZN, :DEL, :FIO, :FL_BIGPOK, :ID,' +
        ' :ID_LICH, '
      '   :ID_USER, :N_DOC, :NOTE, :POKAZN, :PPP, :SCHET, :USER_NAIM, '
      '   :VID_POK, :VID_ZN, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  YEARMON,'
      '  POKAZN,'
      '  DATE_POK,'
      '  VID_POK,'
      '  N_DOC,'
      '  DATE_ZN,'
      '  VID_ZN,'
      '  SCHET,'
      '  ID_LICH,'
      '  PPP,'
      '  FIO,'
      '  FL_BIGPOK,'
      '  USER_NAIM,'
      '  ID_USER,'
      '  DATE_USER,'
      '  NOTE,'
      '  DEL'
      'from POKAZN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select POKAZN.*,sp1.vid_zn pkz, '#39#1090#1080#1087' '#39' || l1.tip || '#39' '#8470#39' || l1.n' +
        '_lich as lich from POKAZN'
      'left join lich l1 on l1.id=POKAZN.id_lich'
      'left join spr_zn sp1 on sp1.id=POKAZN.vid_pok'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update POKAZN'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_USER = :DATE_USER,'
      '  DATE_ZN = :DATE_ZN,'
      '  DEL = :DEL,'
      '  FIO = :FIO,'
      '  FL_BIGPOK = :FL_BIGPOK,'
      '  ID = :ID,'
      '  ID_LICH = :ID_LICH,'
      '  ID_USER = :ID_USER,'
      '  N_DOC = :N_DOC,'
      '  NOTE = :NOTE,'
      '  POKAZN = :POKAZN,'
      '  PPP = :PPP,'
      '  SCHET = :SCHET,'
      '  USER_NAIM = :USER_NAIM,'
      '  VID_POK = :VID_POK,'
      '  VID_ZN = :VID_ZN,'
      '  YEARMON = :YEARMON'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_POKAZN_ID'
    Left = 344
    Top = 432
    object pokaznID: TIntegerField
      FieldName = 'ID'
      Origin = '"POKAZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pokaznYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"POKAZN"."YEARMON"'
    end
    object pokaznDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"POKAZN"."DATE_POK"'
    end
    object pokaznVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"POKAZN"."VID_POK"'
    end
    object pokaznN_DOC: TIntegerField
      FieldName = 'N_DOC'
      Origin = '"POKAZN"."N_DOC"'
    end
    object pokaznDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"POKAZN"."DATE_ZN"'
    end
    object pokaznVID_ZN: TIntegerField
      FieldName = 'VID_ZN'
      Origin = '"POKAZN"."VID_ZN"'
    end
    object pokaznSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"POKAZN"."SCHET"'
      Size = 10
    end
    object pokaznID_LICH: TIntegerField
      FieldName = 'ID_LICH'
      Origin = '"POKAZN"."ID_LICH"'
    end
    object pokaznPKZ: TIBStringField
      FieldName = 'PKZ'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object pokaznLICH: TIBStringField
      FieldName = 'LICH'
      ProviderFlags = []
      Size = 46
    end
    object pokaznPOKAZN: TIBBCDField
      FieldName = 'POKAZN'
      Origin = '"POKAZN"."POKAZN"'
      Precision = 18
      Size = 4
    end
    object pokaznPPP: TIBBCDField
      FieldName = 'PPP'
      Origin = '"POKAZN"."PPP"'
      Precision = 18
      Size = 4
    end
    object pokaznFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"POKAZN"."FIO"'
      Size = 64
    end
    object pokaznFL_BIGPOK: TIntegerField
      FieldName = 'FL_BIGPOK'
      Origin = '"POKAZN"."FL_BIGPOK"'
    end
    object pokaznUSER_NAIM: TIBStringField
      FieldName = 'USER_NAIM'
      Origin = '"POKAZN"."USER_NAIM"'
      Size = 50
    end
    object pokaznID_USER: TSmallintField
      FieldName = 'ID_USER'
      Origin = '"POKAZN"."ID_USER"'
    end
    object pokaznDATE_USER: TDateTimeField
      FieldName = 'DATE_USER'
      Origin = '"POKAZN"."DATE_USER"'
    end
    object pokaznNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"POKAZN"."NOTE"'
      Size = 300
    end
    object pokaznDEL: TIntegerField
      FieldName = 'DEL'
      Origin = '"POKAZN"."DEL"'
    end
  end
  object lichznDataSource: TDataSource
    DataSet = lichzn
    Left = 312
    Top = 464
  end
  object lichzn: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    OnNewRecord = lichNewRecord
    DeleteSQL.Strings = (
      'delete from LICH'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into LICH'
      
        '  (DATA_INP, DATA_MGP, DATA_POV, DATA_STPOV, DATA_VIG, DATA_VIP,' +
        ' DATA_ZN, '
      
        '   ID, N_INPLOMB, N_LICH, N_MGPLOMB, NOTE, RASCH_DAY, SCHET, TIP' +
        ', VID_ZN)'
      'values'
      
        '  (:DATA_INP, :DATA_MGP, :DATA_POV, :DATA_STPOV, :DATA_VIG, :DAT' +
        'A_VIP, '
      
        '   :DATA_ZN, :ID, :N_INPLOMB, :N_LICH, :N_MGPLOMB, :NOTE, :RASCH' +
        '_DAY, :SCHET, '
      '   :TIP, :VID_ZN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SCHET,'
      '  TIP,'
      '  N_LICH,'
      '  DATA_VIP,'
      '  DATA_POV,'
      '  N_INPLOMB,'
      '  N_MGPLOMB,'
      '  DATA_INP,'
      '  DATA_MGP,'
      '  DATA_ZN,'
      '  NOTE,'
      '  VID_ZN,'
      '  DATA_VIG,'
      '  DATA_STPOV,'
      '  RASCH_DAY'
      'from LICH '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select LICH.*, sp.vid_zn zn  from LICH '
      'left join spr_zn sp on sp.id=lich.vid_zn'
      'where lich.data_zn is not null'
      '')
    ModifySQL.Strings = (
      'update LICH'
      'set'
      '  DATA_INP = :DATA_INP,'
      '  DATA_MGP = :DATA_MGP,'
      '  DATA_POV = :DATA_POV,'
      '  DATA_STPOV = :DATA_STPOV,'
      '  DATA_VIG = :DATA_VIG,'
      '  DATA_VIP = :DATA_VIP,'
      '  DATA_ZN = :DATA_ZN,'
      '  ID = :ID,'
      '  N_INPLOMB = :N_INPLOMB,'
      '  N_LICH = :N_LICH,'
      '  N_MGPLOMB = :N_MGPLOMB,'
      '  NOTE = :NOTE,'
      '  RASCH_DAY = :RASCH_DAY,'
      '  SCHET = :SCHET,'
      '  TIP = :TIP,'
      '  VID_ZN = :VID_ZN'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_LICH_ID'
    Left = 312
    Top = 432
    object lichznID: TIntegerField
      FieldName = 'ID'
      Origin = '"LICH"."ID"'
      Required = True
    end
    object lichznSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"LICH"."SCHET"'
      Size = 10
    end
    object lichznTIP: TIBStringField
      FieldName = 'TIP'
      Origin = '"LICH"."TIP"'
    end
    object lichznN_LICH: TIBStringField
      FieldName = 'N_LICH'
      Origin = '"LICH"."N_LICH"'
    end
    object lichznDATA_VIP: TDateField
      FieldName = 'DATA_VIP'
      Origin = '"LICH"."DATA_VIP"'
    end
    object lichznDATA_POV: TDateField
      FieldName = 'DATA_POV'
      Origin = '"LICH"."DATA_POV"'
    end
    object lichznN_INPLOMB: TIBStringField
      FieldName = 'N_INPLOMB'
      Origin = '"LICH"."N_INPLOMB"'
    end
    object lichznN_MGPLOMB: TIBStringField
      FieldName = 'N_MGPLOMB'
      Origin = '"LICH"."N_MGPLOMB"'
    end
    object lichznDATA_INP: TDateField
      FieldName = 'DATA_INP'
      Origin = '"LICH"."DATA_INP"'
    end
    object lichznDATA_MGP: TDateField
      FieldName = 'DATA_MGP'
      Origin = '"LICH"."DATA_MGP"'
    end
    object lichznDATA_ZN: TDateField
      FieldName = 'DATA_ZN'
      Origin = '"LICH"."DATA_ZN"'
    end
    object lichznNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"LICH"."NOTE"'
      Size = 50
    end
    object lichznVID_ZN: TIntegerField
      FieldName = 'VID_ZN'
      Origin = '"LICH"."VID_ZN"'
    end
    object lichznDATA_VIG: TDateField
      FieldName = 'DATA_VIG'
      Origin = '"LICH"."DATA_VIG"'
    end
    object lichznZN: TIBStringField
      FieldName = 'ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object lichznDATA_STPOV: TDateField
      FieldName = 'DATA_STPOV'
      Origin = '"LICH"."DATA_STPOV"'
    end
    object lichznRASCH_DAY: TIntegerField
      FieldName = 'RASCH_DAY'
      Origin = '"LICH"."RASCH_DAY"'
    end
  end
  object lichDataSource: TDataSource
    DataSet = lich
    Left = 280
    Top = 464
  end
  object lich: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = lichAfterPost
    BeforePost = lichBeforePost
    OnNewRecord = lichNewRecord
    DeleteSQL.Strings = (
      'delete from LICH'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into LICH'
      
        '  (DATA_INP, DATA_MGP, DATA_POV, DATA_STPOV, DATA_VIG, DATA_VIP,' +
        ' DATA_ZN, '
      '   ID, N_INPLOMB, N_LICH, N_MGPLOMB, NOTE, SCHET, TIP, VID_ZN)'
      'values'
      
        '  (:DATA_INP, :DATA_MGP, :DATA_POV, :DATA_STPOV, :DATA_VIG, :DAT' +
        'A_VIP, '
      
        '   :DATA_ZN, :ID, :N_INPLOMB, :N_LICH, :N_MGPLOMB, :NOTE, :SCHET' +
        ', :TIP, '
      '   :VID_ZN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SCHET,'
      '  TIP,'
      '  N_LICH,'
      '  DATA_VIP,'
      '  DATA_STPOV,'
      '  DATA_POV,'
      '  N_INPLOMB,'
      '  N_MGPLOMB,'
      '  DATA_INP,'
      '  DATA_MGP,'
      '  DATA_ZN,'
      '  NOTE,'
      '  VID_ZN,'
      '  DATA_VIG'
      'from LICH '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from LICH where DATA_ZN is null')
    ModifySQL.Strings = (
      'update LICH'
      'set'
      '  DATA_INP = :DATA_INP,'
      '  DATA_MGP = :DATA_MGP,'
      '  DATA_POV = :DATA_POV,'
      '  DATA_STPOV = :DATA_STPOV,'
      '  DATA_VIG = :DATA_VIG,'
      '  DATA_VIP = :DATA_VIP,'
      '  DATA_ZN = :DATA_ZN,'
      '  ID = :ID,'
      '  N_INPLOMB = :N_INPLOMB,'
      '  N_LICH = :N_LICH,'
      '  N_MGPLOMB = :N_MGPLOMB,'
      '  NOTE = :NOTE,'
      '  SCHET = :SCHET,'
      '  TIP = :TIP,'
      '  VID_ZN = :VID_ZN'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_LICH_ID'
    Left = 280
    Top = 432
    object lichID: TIntegerField
      FieldName = 'ID'
      Origin = '"LICH"."ID"'
      Required = True
    end
    object lichSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"LICH"."SCHET"'
      Size = 10
    end
    object lichTIP: TIBStringField
      FieldName = 'TIP'
      Origin = '"LICH"."TIP"'
    end
    object lichN_LICH: TIBStringField
      FieldName = 'N_LICH'
      Origin = '"LICH"."N_LICH"'
    end
    object lichDATA_VIP: TDateField
      FieldName = 'DATA_VIP'
      Origin = '"LICH"."DATA_VIP"'
    end
    object lichDATA_POV: TDateField
      FieldName = 'DATA_POV'
      Origin = '"LICH"."DATA_POV"'
    end
    object lichN_INPLOMB: TIBStringField
      FieldName = 'N_INPLOMB'
      Origin = '"LICH"."N_INPLOMB"'
    end
    object lichN_MGPLOMB: TIBStringField
      FieldName = 'N_MGPLOMB'
      Origin = '"LICH"."N_MGPLOMB"'
    end
    object lichDATA_INP: TDateField
      FieldName = 'DATA_INP'
      Origin = '"LICH"."DATA_INP"'
    end
    object lichDATA_MGP: TDateField
      FieldName = 'DATA_MGP'
      Origin = '"LICH"."DATA_MGP"'
    end
    object lichDATA_ZN: TDateField
      FieldName = 'DATA_ZN'
      Origin = '"LICH"."DATA_ZN"'
    end
    object lichNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"LICH"."NOTE"'
      Size = 50
    end
    object lichVID_ZN: TIntegerField
      FieldName = 'VID_ZN'
      Origin = '"LICH"."VID_ZN"'
    end
    object lichDATA_VIG: TDateField
      FieldName = 'DATA_VIG'
      Origin = '"LICH"."DATA_VIG"'
    end
    object lichDATA_STPOV: TDateField
      FieldName = 'DATA_STPOV'
      Origin = '"LICH"."DATA_STPOV"'
    end
  end
  object plombsznDataSource: TDataSource
    DataSet = plombszn
    Left = 240
    Top = 464
  end
  object plombszn: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from PLOMBS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PLOMBS'
      
        '  (DATE_VS, DATE_ZN, ID, N_PLOMB, NOTE, SCHET, VID_PL, VID_PLOMB' +
        ', VID_ZN)'
      'values'
      
        '  (:DATE_VS, :DATE_ZN, :ID, :N_PLOMB, :NOTE, :SCHET, :VID_PL, :V' +
        'ID_PLOMB, '
      '   :VID_ZN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SCHET,'
      '  VID_PLOMB,'
      '  DATE_VS,'
      '  DATE_ZN,'
      '  NOTE,'
      '  N_PLOMB,'
      '  VID_ZN,'
      '  VID_PL'
      'from PLOMBS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select plombs.*, sp1.vid_zn pl,sp2.vid_zn zn  from PLOMBS'
      'left join spr_zn sp1 on sp1.id=plombs.vid_pl'
      'left join spr_zn sp2 on sp2.id=plombs.vid_zn'
      'where DATE_ZN is not null')
    ModifySQL.Strings = (
      'update PLOMBS'
      'set'
      '  DATE_VS = :DATE_VS,'
      '  DATE_ZN = :DATE_ZN,'
      '  ID = :ID,'
      '  N_PLOMB = :N_PLOMB,'
      '  NOTE = :NOTE,'
      '  SCHET = :SCHET,'
      '  VID_PL = :VID_PL,'
      '  VID_PLOMB = :VID_PLOMB,'
      '  VID_ZN = :VID_ZN'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PLOMBS_ID'
    Left = 240
    Top = 432
    object IntegerField3: TIntegerField
      FieldName = 'ID'
      Origin = '"PLOMBS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField17: TIBStringField
      FieldName = 'SCHET'
      Origin = '"PLOMBS"."SCHET"'
      Size = 10
    end
    object IBStringField18: TIBStringField
      FieldName = 'VID_PLOMB'
      Origin = '"PLOMBS"."VID_PLOMB"'
    end
    object DateField7: TDateField
      FieldName = 'DATE_VS'
      Origin = '"PLOMBS"."DATE_VS"'
    end
    object DateField8: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"PLOMBS"."DATE_ZN"'
    end
    object IBStringField19: TIBStringField
      FieldName = 'NOTE'
      Origin = '"PLOMBS"."NOTE"'
      Size = 50
    end
    object IBStringField20: TIBStringField
      FieldName = 'N_PLOMB'
      Origin = '"PLOMBS"."N_PLOMB"'
    end
    object plombsznVID_ZN: TIntegerField
      FieldName = 'VID_ZN'
      Origin = '"PLOMBS"."VID_ZN"'
    end
    object plombsznVID_PL: TIntegerField
      FieldName = 'VID_PL'
      Origin = '"PLOMBS"."VID_PL"'
    end
    object plombsznPL: TIBStringField
      FieldName = 'PL'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object plombsznZN: TIBStringField
      FieldName = 'ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
  end
  object plombsDataSource: TDataSource
    DataSet = plombs
    Left = 200
    Top = 464
  end
  object plombs: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from PLOMBS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PLOMBS'
      
        '  (DATE_VS, DATE_ZN, ID, N_PLOMB, NOTE, SCHET, VID_PL, VID_PLOMB' +
        ', VID_ZN)'
      'values'
      
        '  (:DATE_VS, :DATE_ZN, :ID, :N_PLOMB, :NOTE, :SCHET, :VID_PL, :V' +
        'ID_PLOMB, '
      '   :VID_ZN)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SCHET,'
      '  VID_PLOMB,'
      '  DATE_VS,'
      '  DATE_ZN,'
      '  NOTE,'
      '  N_PLOMB,'
      '  VID_ZN,'
      '  VID_PL'
      'from PLOMBS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select plombs.*, sp1.vid_zn pl,sp2.vid_zn zn  from PLOMBS'
      'left join spr_zn sp1 on sp1.id=plombs.vid_pl'
      'left join spr_zn sp2 on sp2.id=plombs.vid_zn'
      'where DATE_ZN is null')
    ModifySQL.Strings = (
      'update PLOMBS'
      'set'
      '  DATE_VS = :DATE_VS,'
      '  DATE_ZN = :DATE_ZN,'
      '  ID = :ID,'
      '  N_PLOMB = :N_PLOMB,'
      '  NOTE = :NOTE,'
      '  SCHET = :SCHET,'
      '  VID_PL = :VID_PL,'
      '  VID_PLOMB = :VID_PLOMB,'
      '  VID_ZN = :VID_ZN'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PLOMBS_ID'
    Left = 200
    Top = 432
    object plombsID: TIntegerField
      FieldName = 'ID'
      Origin = '"PLOMBS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object plombsSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"PLOMBS"."SCHET"'
      Size = 10
    end
    object plombsVID_PLOMB: TIBStringField
      FieldName = 'VID_PLOMB'
      Origin = '"PLOMBS"."VID_PLOMB"'
    end
    object plombsDATE_VS: TDateField
      FieldName = 'DATE_VS'
      Origin = '"PLOMBS"."DATE_VS"'
    end
    object plombsDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"PLOMBS"."DATE_ZN"'
    end
    object plombsNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"PLOMBS"."NOTE"'
      Size = 50
    end
    object plombsN_PLOMB: TIBStringField
      FieldName = 'N_PLOMB'
      Origin = '"PLOMBS"."N_PLOMB"'
    end
    object plombsVID_ZN: TIntegerField
      FieldName = 'VID_ZN'
      Origin = '"PLOMBS"."VID_ZN"'
    end
    object plombsVID_PL: TIntegerField
      FieldName = 'VID_PL'
      Origin = '"PLOMBS"."VID_PL"'
    end
    object plombsPL: TIBStringField
      FieldName = 'PL'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object plombsZN2: TIBStringField
      FieldName = 'ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
  end
  object viber_task: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from VIBER_TASK'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into VIBER_TASK'
      '  (ACCESSPOKAZN, ALLPOKAZN, DATA, ERR, ID, VID, YEARMON)'
      'values'
      '  (:ACCESSPOKAZN, :ALLPOKAZN, :DATA, :ERR, :ID, :VID, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  YEARMON,'
      '  ALLPOKAZN,'
      '  ACCESSPOKAZN,'
      '  ERR,'
      '  VID'
      'from VIBER_TASK '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from VIBER_TASK where yearmon=:yearmon order by id desc')
    ModifySQL.Strings = (
      'update VIBER_TASK'
      'set'
      '  ACCESSPOKAZN = :ACCESSPOKAZN,'
      '  ALLPOKAZN = :ALLPOKAZN,'
      '  DATA = :DATA,'
      '  ERR = :ERR,'
      '  ID = :ID,'
      '  VID = :VID,'
      '  YEARMON = :YEARMON'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_VIBER_TASK_ID'
    Left = 336
    Top = 8
    object viber_taskID: TIntegerField
      FieldName = 'ID'
      Origin = '"VIBER_TASK"."ID"'
      Required = True
    end
    object viber_taskDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VIBER_TASK"."DATA"'
    end
    object viber_taskYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"VIBER_TASK"."YEARMON"'
    end
    object viber_taskALLPOKAZN: TIntegerField
      FieldName = 'ALLPOKAZN'
      Origin = '"VIBER_TASK"."ALLPOKAZN"'
    end
    object viber_taskACCESSPOKAZN: TIntegerField
      FieldName = 'ACCESSPOKAZN'
      Origin = '"VIBER_TASK"."ACCESSPOKAZN"'
    end
    object viber_taskERR: TSmallintField
      FieldName = 'ERR'
      Origin = '"VIBER_TASK"."ERR"'
    end
    object viber_taskVID: TIBStringField
      FieldName = 'VID'
      Origin = '"VIBER_TASK"."VID"'
      Size = 32
    end
  end
  object viber_taskDataSource: TDataSource
    DataSet = viber_task
    Left = 336
    Top = 40
  end
  object viber_pokazn: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from VIBER_POKAZN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into VIBER_POKAZN'
      
        '  (DATA, DATE_INS, ERR, ID, ID_TASK, ID_VIBER, POKAZN, SCHET, ST' +
        'ATUS, VIBER_NAME)'
      'values'
      
        '  (:DATA, :DATE_INS, :ERR, :ID, :ID_TASK, :ID_VIBER, :POKAZN, :S' +
        'CHET, :STATUS, '
      '   :VIBER_NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_VIBER,'
      '  DATE_INS,'
      '  DATA,'
      '  SCHET,'
      '  POKAZN,'
      '  VIBER_NAME,'
      '  STATUS,'
      '  ID_TASK,'
      '  ERR'
      'from VIBER_POKAZN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from VIBER_POKAZN where ID_TASK=:id_task')
    ModifySQL.Strings = (
      'update VIBER_POKAZN'
      'set'
      '  DATA = :DATA,'
      '  DATE_INS = :DATE_INS,'
      '  ERR = :ERR,'
      '  ID = :ID,'
      '  ID_TASK = :ID_TASK,'
      '  ID_VIBER = :ID_VIBER,'
      '  POKAZN = :POKAZN,'
      '  SCHET = :SCHET,'
      '  STATUS = :STATUS,'
      '  VIBER_NAME = :VIBER_NAME'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_VIBER_POKAZN_ID'
    Left = 384
    Top = 8
    object viber_pokaznID: TIntegerField
      FieldName = 'ID'
      Origin = '"VIBER_POKAZN"."ID"'
      Required = True
    end
    object viber_pokaznID_VIBER: TIntegerField
      FieldName = 'ID_VIBER'
      Origin = '"VIBER_POKAZN"."ID_VIBER"'
      Required = True
    end
    object viber_pokaznDATE_INS: TDateTimeField
      FieldName = 'DATE_INS'
      Origin = '"VIBER_POKAZN"."DATE_INS"'
    end
    object viber_pokaznDATA: TDateField
      FieldName = 'DATA'
      Origin = '"VIBER_POKAZN"."DATA"'
    end
    object viber_pokaznSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"VIBER_POKAZN"."SCHET"'
      Size = 10
    end
    object viber_pokaznPOKAZN: TIntegerField
      FieldName = 'POKAZN'
      Origin = '"VIBER_POKAZN"."POKAZN"'
    end
    object viber_pokaznVIBER_NAME: TIBStringField
      FieldName = 'VIBER_NAME'
      Origin = '"VIBER_POKAZN"."VIBER_NAME"'
      Size = 64
    end
    object viber_pokaznSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VIBER_POKAZN"."STATUS"'
      Size = 64
    end
    object viber_pokaznID_TASK: TIntegerField
      FieldName = 'ID_TASK'
      Origin = '"VIBER_POKAZN"."ID_TASK"'
      Required = True
    end
    object viber_pokaznERR: TIntegerField
      FieldName = 'ERR'
      Origin = '"VIBER_POKAZN"."ERR"'
    end
  end
  object viber_pokaznDataSource: TDataSource
    DataSet = viber_pokazn
    Left = 384
    Top = 40
  end
  object viber_send: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from VIBER_SEND'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into VIBER_SEND'
      '  (DATA, DATE_SEND, ID, KOLSEND, SMALLTEXT, TEXT)'
      'values'
      '  (:DATA, :DATE_SEND, :ID, :KOLSEND, :SMALLTEXT, :TEXT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  DATE_SEND,'
      '  KOLSEND,'
      '  TEXT,'
      '  SMALLTEXT'
      'from VIBER_SEND '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from VIBER_SEND order by ID desc')
    ModifySQL.Strings = (
      'update VIBER_SEND'
      'set'
      '  DATA = :DATA,'
      '  DATE_SEND = :DATE_SEND,'
      '  ID = :ID,'
      '  KOLSEND = :KOLSEND,'
      '  SMALLTEXT = :SMALLTEXT,'
      '  TEXT = :TEXT'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_VIBER_SEND_ID'
    Left = 424
    Top = 8
    object viber_sendID: TIntegerField
      FieldName = 'ID'
      Origin = '"VIBER_SEND"."ID"'
      Required = True
    end
    object viber_sendDATE_SEND: TDateTimeField
      FieldName = 'DATE_SEND'
      Origin = '"VIBER_SEND"."DATE_SEND"'
    end
    object viber_sendKOLSEND: TIntegerField
      FieldName = 'KOLSEND'
      Origin = '"VIBER_SEND"."KOLSEND"'
    end
    object viber_sendTEXT: TMemoField
      FieldName = 'TEXT'
      Origin = '"VIBER_SEND"."TEXT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object viber_sendSMALLTEXT: TIBStringField
      FieldName = 'SMALLTEXT'
      Origin = '"VIBER_SEND"."SMALLTEXT"'
      Size = 50
    end
    object viber_sendDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VIBER_SEND"."DATA"'
    end
  end
  object viber_sendDataSource: TDataSource
    DataSet = viber_send
    Left = 424
    Top = 40
  end
  object org: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = orgBeforeOpen
    BeforePost = orgBeforePost
    OnNewRecord = orgNewRecord
    DeleteSQL.Strings = (
      'delete from h_voda'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into h_voda'
      
        '  (DATE_POK, DATE_ZN, DEL_NORM, EDRPOU, FILTR, FIO, GRP_RAZN, ID' +
        '_KONTR, '
      
        '   KL, KL_UL, KLNTAR, KOLI_F, KOLI_P, KOLI_P0, KOLI_P1, KUB_ALL,' +
        ' KUB_MES, '
      
        '   KUB_NOBALANS, KV, LICH_POV, LICH_TO, LICH_YEARMON, N_DOM, N_S' +
        'CH, NOR_RAZN, '
      
        '   NORM_BLICH, NORMA, NOTE, OLD_NORM, ORG, PERE_DAY, PERE_RAZN, ' +
        'PERERAH, '
      
        '   PLOMB, PLOSCH_UR, POD, POMPA, PREV_NORM, R_NACH, RASCH_KUB, R' +
        'ASCH_NOR, '
      
        '   RASCH_NOTE, SCH_CUR, SCH_OLD, SCH_RAZN, SCH_RAZN2, SCHET, TAR' +
        'IF_NAME, '
      '   UL, VID_POK, VID_RN, WID, YEARMON, ZN_LICH, ZNOLD_LICH)'
      'values'
      
        '  (:DATE_POK, :DATE_ZN, :DEL_NORM, :EDRPOU, :FILTR, :FIO, :GRP_R' +
        'AZN, :ID_KONTR, '
      
        '   :KL, :KL_UL, :KLNTAR, :KOLI_F, :KOLI_P, :KOLI_P0, :KOLI_P1, :' +
        'KUB_ALL, '
      
        '   :KUB_MES, :KUB_NOBALANS, :KV, :LICH_POV, :LICH_TO, :LICH_YEAR' +
        'MON, :N_DOM, '
      
        '   :N_SCH, :NOR_RAZN, :NORM_BLICH, :NORMA, :NOTE, :OLD_NORM, :OR' +
        'G, :PERE_DAY, '
      
        '   :PERE_RAZN, :PERERAH, :PLOMB, :PLOSCH_UR, :POD, :POMPA, :PREV' +
        '_NORM, '
      
        '   :R_NACH, :RASCH_KUB, :RASCH_NOR, :RASCH_NOTE, :SCH_CUR, :SCH_' +
        'OLD, :SCH_RAZN, '
      
        '   :SCH_RAZN2, :SCHET, :TARIF_NAME, :UL, :VID_POK, :VID_RN, :WID' +
        ', :YEARMON, '
      '   :ZN_LICH, :ZNOLD_LICH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  DOM,'
      '  KVART,'
      '  SCHET,'
      '  N_SCH,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  SCH_RAZN2,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN,'
      '  ID_KONTR,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  NOTE,'
      '  KOLI_F,'
      '  RASCH_KUB,'
      '  RASCH_NOR,'
      '  POD,'
      '  RASCH_NOTE,'
      '  DATE_POK,'
      '  VID_POK,'
      '  KUB_MES,'
      '  LICH_POV,'
      '  ORG,'
      '  VID_RN,'
      '  FILTR,'
      '  POMPA,'
      '  ZN_LICH,'
      '  ZNOLD_LICH,'
      '  DATE_ZN,'
      '  LICH_TO,'
      '  KLNTAR,'
      '  TARIF_NAME,'
      '  NORMA,'
      '  OLD_NORM,'
      '  DEL_NORM,'
      '  PREV_NORM,'
      '  LICH_YEARMON,'
      '  EDRPOU,'
      '  KL_UL,'
      '  R_NACH,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PLOSCH_UR,'
      '  PERERAH'
      'from h_voda '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from h_voda'
      'where yearmon=:yearmon and org=1'
      'ORDER BY SCHET')
    ModifySQL.Strings = (
      'update h_voda'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_ZN = :DATE_ZN,'
      '  DEL_NORM = :DEL_NORM,'
      '  EDRPOU = :EDRPOU,'
      '  FILTR = :FILTR,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KLNTAR = :KLNTAR,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_MES = :KUB_MES,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  LICH_POV = :LICH_POV,'
      '  LICH_TO = :LICH_TO,'
      '  LICH_YEARMON = :LICH_YEARMON,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NORMA = :NORMA,'
      '  NOTE = :NOTE,'
      '  OLD_NORM = :OLD_NORM,'
      '  ORG = :ORG,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  PLOMB = :PLOMB,'
      '  PLOSCH_UR = :PLOSCH_UR,'
      '  POD = :POD,'
      '  POMPA = :POMPA,'
      '  PREV_NORM = :PREV_NORM,'
      '  R_NACH = :R_NACH,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_RAZN2 = :SCH_RAZN2,'
      '  SCHET = :SCHET,'
      '  TARIF_NAME = :TARIF_NAME,'
      '  UL = :UL,'
      '  VID_POK = :VID_POK,'
      '  VID_RN = :VID_RN,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  ZN_LICH = :ZN_LICH,'
      '  ZNOLD_LICH = :ZNOLD_LICH'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    Left = 184
    Top = 336
    object orgKL: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object orgYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object orgPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object orgFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object orgWID: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object orgDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object orgKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object orgSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object orgN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object orgSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object orgSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object orgSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object orgSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object orgKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object orgKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object orgKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object orgNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object orgGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object orgPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object orgPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object orgID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object orgUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object orgN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object orgKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object orgNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object orgKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object orgRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object orgRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object orgPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object orgRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object orgDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object orgVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object orgKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object orgLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object orgORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object orgVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object orgFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object orgPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object orgZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object orgZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object orgDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object orgLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object orgKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object orgTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object orgNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object orgOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object orgDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object orgPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object orgLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object orgEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object orgKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object orgR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object orgNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object orgKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object orgKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object orgPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object orgPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
  end
  object orgSource: TDataSource
    DataSet = org
    Left = 184
    Top = 368
  end
  object vid_rn: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
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
      'select * from SPR_ZN where vid_sp='#39'addrn'#39
      ''
      ''
      '')
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
    Left = 376
    Top = 432
    object vid_rnID: TIntegerField
      FieldName = 'ID'
      Origin = '"SPR_ZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object vid_rnVID_ZN: TIBStringField
      FieldName = 'VID_ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object vid_rnVID_OB: TIntegerField
      FieldName = 'VID_OB'
      Origin = '"SPR_ZN"."VID_OB"'
    end
    object vid_rnVID_SP: TIBStringField
      FieldName = 'VID_SP'
      Origin = '"SPR_ZN"."VID_SP"'
      Size = 10
    end
  end
  object vid_rnSource: TDataSource
    DataSet = vid_rn
    Left = 376
    Top = 464
  end
  object ul: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from h_voda'
      'where'
      '  UL = :OLD_UL')
    InsertSQL.Strings = (
      'insert into h_voda'
      '  (UL)'
      'values'
      '  (:UL)')
    RefreshSQL.Strings = (
      'Select '
      '  UL'
      'from h_voda '
      'where'
      '  UL = :UL')
    SelectSQL.Strings = (
      'select ul from h_voda where yearmon=:yearmon group by ul'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update h_voda'
      'set'
      '  UL = :UL'
      'where'
      '  UL = :OLD_UL')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    Left = 408
    Top = 432
    object ulUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
  end
  object ulSource: TDataSource
    DataSet = ul
    Left = 408
    Top = 464
  end
  object IBQueryRep: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    SQL.Strings = (
      
        'SELECT h_voda.* , sp1.vid_zn from H_VODA left join spr_zn sp1 on' +
        ' sp1.id=h_voda.vid_rn where h_voda.yearmon=:yearmon ORDER BY H_V' +
        'ODA.SCHET')
    Left = 464
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'yearmon'
        ParamType = ptUnknown
      end>
  end
  object frxReport4: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1047#1072' '#1079#1072#1084#1086#1074#1095#1091#1074#1072#1085#1085#1103#1084
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42551.533670798600000000
    ReportOptions.LastChange = 44929.372252800920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function dt2str(m:integer):string;'
      'var mm :integer;'
      '    yy,str: string;                                           '
      'begin'
      'str:=inttostr(m);'
      'yy:=inttostr(m);    '
      'deletestr(str,1,4);'
      'mm:=strtoint(str);'
      'deletestr(yy,5,2);    '
      '  '
      '  case mm of'
      '    1:result:='#39#1089#1110#1095#1077#1085#1100' '#39';'
      '    2:result:='#39#1083#1102#1090#1080#1081' '#39';'
      '    3:result:='#39#1073#1077#1088#1077#1079#1077#1085#1100' '#39';'
      '    4:result:='#39#1082#1074#1110#1090#1077#1085#1100' '#39';'
      '    5:result:='#39#1090#1088#1072#1074#1077#1085#1100' '#39';'
      '    6:result:='#39#1095#1077#1088#1074#1077#1085#1100' '#39';'
      '    7:result:='#39#1083#1080#1087#1077#1085#1100' '#39';'
      '    8:result:='#39#1089#1077#1088#1087#1077#1085#1100' '#39';'
      '    9:result:='#39#1074#1077#1088#1077#1089#1077#1085#1100' '#39';'
      '    10:result:='#39#1078#1086#1074#1090#1077#1085#1100' '#39';'
      '    11:result:='#39#1083#1080#1089#1090#1086#1087#1072#1076' '#39';'
      '    12:result:='#39#1075#1088#1091#1076#1077#1085#1100' '#39';'
      '  end;'
      '  result := result + '#39' '#39' + yy;'
      'end;  '
      ''
      'function sdolg(v:string):string;'
      'begin'
      '                     '
      '  if (v='#39'-'#39') then'
      '  begin              '
      '     result:='#39#39';'
      '  end'
      '  else'
      '  begin              '
      '    if (StrToFloat(v)>=0) then                               '
      '    begin'
      '      result:='#39#1079' '#1089#1091#1084#1086#1102' '#1073#1086#1088#1075#1091' '#1073#1110#1083#1100#1096#1077' '#39'+v;'
      '    end'
      '    else'
      
        '      result:='#39#1079' '#1089#1091#1084#1086#1102' '#1087#1077#1088#1077#1076#1087#1083#1072#1090#1080' '#1073#1110#1083#1100#1096#1077' '#39'+v;                   ' +
        '            '
      '  end;              '
      '          '
      ''
      '  result := result;    '
      '  '
      'end;                '
      ''
      '      '
      'begin'
      '  '
      'end.')
    Left = 400
    Top = 328
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'hvd'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'hvd2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 30.236240000000000000
          Width = 755.906000000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1113#1057#8211#1056#187#1057#1034#1056#1108#1057#8211#1057#1027#1057#8218#1057#1034' '#1056#1029#1056#176#1056#1169#1056#176#1056#1029#1056#1105#1057#8230' '#1056#1108#1057#1107#1056#177#1056#1109#1056#1112#1056#181#1057#8218#1057#1026#1057#8211#1056#1030' '#1056#1030#1056#1109#1056#1169#1056#1105' ' +
              #1056#1111#1056#1109' '#1057#1026#1056#176#1056#8470#1056#1109#1056#1029#1056#176#1056#1112' '#1056#1112#1057#8211#1057#1027#1057#8218#1056#176' '#1056#183#1056#176' [dt2str(<hvd."yearmon">)] '#1057#1026 +
              #1056#1109#1056#1108#1057#1107)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baWidth
          Width = 755.906000000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1119' "'#1056#8221#1056#1109#1056#187#1056#1105#1056#1029#1057#1027#1057#1034#1056#1108#1056#1105#1056#8470' '#1056#1112#1057#8211#1057#1027#1057#1034#1056#1108#1056#1108#1056#1109#1056#1112#1057#1107#1056#1029#1056#1110#1056#1109#1057#1027#1056#1111'"')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'hvd'
        RowCount = 0
        Stretched = True
      end
      object ReportSummary1: TfrxReportSummary
        Height = 56.692950000000000000
        Top = 570.709030000000000000
        Visible = False
        Width = 755.906000000000000000
        Stretched = True
        object Memo29: TfrxMemoView
          Align = baWidth
          Width = 755.906000000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          ShiftMode = smDontShift
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AllowExpressions = False
          Clipped = False
          Color = 16053492
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8217#1057#1027#1057#1034#1056#1109#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 68.031540000000000000
        Top = 158.740260000000000000
        Width = 755.906000000000000000
        Condition = 'hvd."ORG"'
        object Memo4: TfrxMemoView
          Left = 30.236240000000000000
          Top = 45.354360000000000000
          Width = 176.239186300000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#176#1056#8470#1056#1109#1056#1029' '#1056#1112#1057#8211#1057#1027#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 206.475426300000000000
          Top = 45.354360000000000000
          Width = 134.991717170000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1057#8211#1056#187#1057#1034'.'#1056#176#1056#177#1056#1109#1056#1029#1056#181#1056#1029#1057#8218#1057#8211#1056#1030)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 341.467143460000000000
          Top = 45.354360000000000000
          Width = 164.989876540000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1057#8211#1056#187#1057#1034#1056#1108#1057#8211#1057#1027#1057#8218#1057#1034' '#1056#1030#1056#1109#1056#1169#1056#1105' ('#1056#1112'3)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baWidth
          Width = 755.906000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16053492
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[iif(<hvd."org"> = 0, '#39#1056#1119#1056#1109#1056#177#1057#1107#1057#8218#1056#1109#1056#1030#1057#8211' '#1057#1027#1056#1111#1056#1109#1056#182#1056#1105#1056#1030#1056#176#1057#8225#1057#8211#39', '#39#1056#1115 +
              #1057#1026#1056#1110#1056#176#1056#1029#1057#8211#1056#183#1056#176#1057#8224#1057#8211#1057#8212#39')]  ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 45.354360000000000000
        Top = 340.157700000000000000
        Width = 755.906000000000000000
        object Memo6: TfrxMemoView
          Left = 6.299216670000000000
          Top = 1.259843330000000000
          Width = 279.685220000000000000
          Height = 17.637806670000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#160#1056#176#1056#183#1056#1109#1056#1112' '#1056#1111#1056#1109' [iif(<hvd."org"> = 0, '#39#1056#1111#1056#1109#1056#177#1057#1107#1057#8218#1056#1109#1056#1030#1056#1105#1056#1112' '#1057#1027#1056#1111#1056#1109 +
              #1056#182#1056#1105#1056#1030#1056#176#1057#8225#1056#176#1056#1112#39', '#39#1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1057#8211#1056#183#1056#176#1057#8224#1057#8211#1057#1039#1056#1112#39')]  ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 219.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 340.157700000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_RAZN">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        Condition = 'hvd."VID_ZN"'
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        object Memo47: TfrxMemoView
          Left = 340.157700000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hvd."SCH_RAZN">,MasterData1)]')
          ParentFont = False
        end
        object hvdVID_ZN: TfrxMemoView
          Left = 37.795300000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[iif(<hvd."VID_ZN"> = '#39#39', '#39#1056#8224#1056#1029#1057#8364#1057#8211#39', <hvd."VID_ZN">)]  ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 215.433210000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Top = 430.866420000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'hvd2'
        RowCount = 0
      end
      object GroupHeader3: TfrxGroupHeader
        Top = 408.189240000000000000
        Width = 755.906000000000000000
        Condition = 'hvd2."VID_ZN"'
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 56.692950000000000000
        Top = 453.543600000000000000
        Width = 755.906000000000000000
        object Memo9: TfrxMemoView
          Left = 313.700990000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hvd2."SCH_RAZN">,MasterData2)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 188.976500000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData2)]')
          ParentFont = False
        end
        object hvdVID_ZN1: TfrxMemoView
          Left = 483.779840000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'hvd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[hvd2."VID_ZN"]')
          ParentFont = False
        end
      end
    end
  end
  object IBQueryRep2: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    SQL.Strings = (
      
        'SELECT h_voda.* , sp1.vid_zn from H_VODA left join spr_zn sp1 on' +
        ' sp1.id=h_voda.vid_rn where h_voda.yearmon=:yearmon ORDER BY h_v' +
        'oda.vid_rn')
    Left = 496
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'yearmon'
        ParamType = ptUnknown
      end>
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'hvd2'
    CloseDataSource = True
    FieldAliases.Strings = (
      'KL=KL'
      'YEARMON=YEARMON'
      'PLOMB=PLOMB'
      'FIO=FIO'
      'WID=WID'
      'DOM=DOM'
      'KVART=KVART'
      'SCHET=SCHET'
      'N_SCH=N_SCH'
      'SCH_OLD=SCH_OLD'
      'SCH_CUR=SCH_CUR'
      'SCH_RAZN=SCH_RAZN'
      'KOLI_P=KOLI_P'
      'KOLI_P0=KOLI_P0'
      'KOLI_P1=KOLI_P1'
      'NOR_RAZN=NOR_RAZN'
      'GRP_RAZN=GRP_RAZN'
      'PERE_DAY=PERE_DAY'
      'PERE_RAZN=PERE_RAZN'
      'ID_KONTR=ID_KONTR'
      'UL=UL'
      'N_DOM=N_DOM'
      'KV=KV'
      'NOTE=NOTE'
      'KOLI_F=KOLI_F'
      'RASCH_KUB=RASCH_KUB'
      'RASCH_NOR=RASCH_NOR'
      'POD=POD'
      'RASCH_NOTE=RASCH_NOTE'
      'DATE_POK=DATE_POK'
      'VID_POK=VID_POK'
      'KUB_MES=KUB_MES'
      'LICH_POV=LICH_POV'
      'ORG=ORG'
      'VID_RN=VID_RN'
      'VID_ZN=VID_ZN')
    DataSet = IBQueryRep2
    BCDToCurrency = False
    Left = 464
    Top = 264
  end
  object impDataSource: TDataSource
    DataSet = imp
    Left = 152
    Top = 464
  end
  object imp: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from IMPEXP'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into IMPEXP'
      
        '  (IMPALLOW, IMPLASTDATE, IMPLASTDAY, KL, LASTEXP, LASTROZR, VPR' +
        'OG)'
      'values'
      
        '  (:IMPALLOW, :IMPLASTDATE, :IMPLASTDAY, :KL, :LASTEXP, :LASTROZ' +
        'R, :VPROG)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  IMPLASTDATE,'
      '  IMPALLOW,'
      '  IMPLASTDAY,'
      '  VPROG,'
      '  LASTEXP,'
      '  LASTROZR'
      'from IMPEXP '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from IMPEXP')
    ModifySQL.Strings = (
      'update IMPEXP'
      'set'
      '  IMPALLOW = :IMPALLOW,'
      '  IMPLASTDATE = :IMPLASTDATE,'
      '  IMPLASTDAY = :IMPLASTDAY,'
      '  KL = :KL,'
      '  LASTEXP = :LASTEXP,'
      '  LASTROZR = :LASTROZR,'
      '  VPROG = :VPROG'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_IMPEXP_ID'
    Left = 152
    Top = 432
    object impKL: TIntegerField
      FieldName = 'KL'
      Origin = '"IMPEXP"."KL"'
      Required = True
    end
    object impIMPLASTDATE: TDateField
      FieldName = 'IMPLASTDATE'
      Origin = '"IMPEXP"."IMPLASTDATE"'
    end
    object impIMPALLOW: TIntegerField
      FieldName = 'IMPALLOW'
      Origin = '"IMPEXP"."IMPALLOW"'
    end
    object impIMPLASTDAY: TIntegerField
      FieldName = 'IMPLASTDAY'
      Origin = '"IMPEXP"."IMPLASTDAY"'
    end
    object impVPROG: TIBStringField
      FieldName = 'VPROG'
      Origin = '"IMPEXP"."VPROG"'
      Size = 10
    end
    object impLASTEXP: TIntegerField
      FieldName = 'LASTEXP'
      Origin = '"IMPEXP"."LASTEXP"'
    end
    object impLASTROZR: TIntegerField
      FieldName = 'LASTROZR'
      Origin = '"IMPEXP"."LASTROZR"'
    end
  end
  object site_pokazn: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from SITE_POKAZN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SITE_POKAZN'
      
        '  (DATA, DATE_INS, ERR, ID, ID_SITE, ID_TASK, NAME, POKAZN, SCHE' +
        'T, STATUS, '
      '   VID)'
      'values'
      
        '  (:DATA, :DATE_INS, :ERR, :ID, :ID_SITE, :ID_TASK, :NAME, :POKA' +
        'ZN, :SCHET, '
      '   :STATUS, :VID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_SITE,'
      '  DATE_INS,'
      '  DATA,'
      '  SCHET,'
      '  POKAZN,'
      '  NAME,'
      '  STATUS,'
      '  ID_TASK,'
      '  ERR,'
      '  VID'
      'from SITE_POKAZN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from SITE_POKAZN where ID_TASK=:id_task')
    ModifySQL.Strings = (
      'update SITE_POKAZN'
      'set'
      '  DATA = :DATA,'
      '  DATE_INS = :DATE_INS,'
      '  ERR = :ERR,'
      '  ID = :ID,'
      '  ID_SITE = :ID_SITE,'
      '  ID_TASK = :ID_TASK,'
      '  NAME = :NAME,'
      '  POKAZN = :POKAZN,'
      '  SCHET = :SCHET,'
      '  STATUS = :STATUS,'
      '  VID = :VID'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SITE_POKAZN_ID'
    Left = 296
    Top = 8
    object site_pokaznID: TIntegerField
      FieldName = 'ID'
      Origin = '"SITE_POKAZN"."ID"'
      Required = True
    end
    object site_pokaznID_SITE: TIntegerField
      FieldName = 'ID_SITE'
      Origin = '"SITE_POKAZN"."ID_SITE"'
      Required = True
    end
    object site_pokaznDATE_INS: TDateTimeField
      FieldName = 'DATE_INS'
      Origin = '"SITE_POKAZN"."DATE_INS"'
    end
    object site_pokaznDATA: TDateField
      FieldName = 'DATA'
      Origin = '"SITE_POKAZN"."DATA"'
    end
    object site_pokaznSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"SITE_POKAZN"."SCHET"'
      Size = 10
    end
    object site_pokaznPOKAZN: TIntegerField
      FieldName = 'POKAZN'
      Origin = '"SITE_POKAZN"."POKAZN"'
    end
    object site_pokaznNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"SITE_POKAZN"."NAME"'
      Size = 64
    end
    object site_pokaznSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"SITE_POKAZN"."STATUS"'
      Size = 64
    end
    object site_pokaznID_TASK: TIntegerField
      FieldName = 'ID_TASK'
      Origin = '"SITE_POKAZN"."ID_TASK"'
      Required = True
    end
    object site_pokaznERR: TIntegerField
      FieldName = 'ERR'
      Origin = '"SITE_POKAZN"."ERR"'
    end
    object site_pokaznVID: TIBStringField
      FieldName = 'VID'
      Origin = '"SITE_POKAZN"."VID"'
      Size = 32
    end
  end
  object site_pokaznDataSource: TDataSource
    DataSet = site_pokazn
    Left = 296
    Top = 40
  end
  object hvdlichupd: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = hvdallBeforeOpen
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (DATE_POK, FILTR, FIO, GRP_RAZN, ID_KONTR, KL, KOLI_F, KOLI_P,' +
        ' KOLI_P0, '
      
        '   KOLI_P1, KUB_MES, KV, LICH_POV, N_DOM, N_SCH, NOR_RAZN, NOTE,' +
        ' ORG, PERE_DAY, '
      
        '   PERE_RAZN, PLOMB, POD, POMPA, RASCH_KUB, RASCH_NOR, RASCH_NOT' +
        'E, SCH_CUR, '
      
        '   SCH_OLD, SCH_RAZN, SCHET, UL, VID_POK, VID_RN, WID, YEARMON, ' +
        'ZN_LICH, '
      '   ZNOLD_LICH)'
      'values'
      
        '  (:DATE_POK, :FILTR, :FIO, :GRP_RAZN, :ID_KONTR, :KL, :KOLI_F, ' +
        ':KOLI_P, '
      
        '   :KOLI_P0, :KOLI_P1, :KUB_MES, :KV, :LICH_POV, :N_DOM, :N_SCH,' +
        ' :NOR_RAZN, '
      
        '   :NOTE, :ORG, :PERE_DAY, :PERE_RAZN, :PLOMB, :POD, :POMPA, :RA' +
        'SCH_KUB, '
      
        '   :RASCH_NOR, :RASCH_NOTE, :SCH_CUR, :SCH_OLD, :SCH_RAZN, :SCHE' +
        'T, :UL, '
      '   :VID_POK, :VID_RN, :WID, :YEARMON, :ZN_LICH, :ZNOLD_LICH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  DOM,'
      '  KVART,'
      '  SCHET,'
      '  N_SCH,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN,'
      '  ID_KONTR,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  NOTE,'
      '  KOLI_F,'
      '  RASCH_KUB,'
      '  RASCH_NOR,'
      '  POD,'
      '  RASCH_NOTE,'
      '  DATE_POK,'
      '  VID_POK,'
      '  KUB_MES,'
      '  LICH_POV,'
      '  ORG,'
      '  VID_RN,'
      '  FILTR,'
      '  POMPA,'
      '  ZN_LICH,'
      '  ZNOLD_LICH'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select h_voda.*,'
      '(select count(*) from'
      
        '(select schet, data_zn dt from lich where extract(year from data' +
        '_zn)=:yy and extract(month from data_zn)=:mm'
      'union all'
      
        'select schet, data_vip dt from lich where extract(year from data' +
        '_vip)=:yy and extract(month from data_vip)=:mm)'
      'where schet=h_voda.schet) lichupd'
      'from H_VODA where h_voda.yearmon=:yearmon order by schet')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  FILTR = :FILTR,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  KUB_MES = :KUB_MES,'
      '  KV = :KV,'
      '  LICH_POV = :LICH_POV,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NOTE = :NOTE,'
      '  ORG = :ORG,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PLOMB = :PLOMB,'
      '  POD = :POD,'
      '  POMPA = :POMPA,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCHET = :SCHET,'
      '  UL = :UL,'
      '  VID_POK = :VID_POK,'
      '  VID_RN = :VID_RN,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  ZN_LICH = :ZN_LICH,'
      '  ZNOLD_LICH = :ZNOLD_LICH'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 560
    Top = 352
    object IntegerField1: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object SmallintField1: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object SmallintField2: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object IBStringField2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object IBStringField3: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object IBStringField4: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object IBStringField5: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object IntegerField4: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object IntegerField11: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object SmallintField3: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object IBStringField6: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object IBStringField7: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object IBStringField8: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object IBStringField21: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object LargeintField1: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object IBBCDField15: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object IBBCDField16: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object IntegerField12: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object IBStringField22: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object DateField1: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object IntegerField13: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object IBBCDField17: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object DateField2: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object IntegerField14: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object IntegerField15: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object IntegerField16: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object IntegerField17: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object IntegerField18: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object IntegerField19: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object DateField3: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object IntegerField20: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object IntegerField21: TIntegerField
      FieldName = 'LICHUPD'
      ProviderFlags = []
    end
    object hvdlichupdSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hvdlichupdKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hvdlichupdTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hvdlichupdNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hvdlichupdOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hvdlichupdDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hvdlichupdPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hvdlichupdLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hvdlichupdEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hvdlichupdKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hvdlichupdR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hvdlichupdNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hvdlichupdKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hvdlichupdKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
  end
  object hvdlichupdSource: TDataSource
    DataSet = hvdlichupd
    Left = 560
    Top = 384
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    SQL.Strings = (
      
        'SELECT h_voda.* , sp1.vid_zn from H_VODA left join spr_zn sp1 on' +
        ' sp1.id=h_voda.vid_rn where h_voda.yearmon=:yearmon ORDER BY h_v' +
        'oda.vid_rn')
    Left = 528
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'yearmon'
        ParamType = ptUnknown
      end>
  end
  object users: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterClose = dataAfterClose
    AfterOpen = dataAfterOpen
    AfterScroll = dataAfterScroll
    OnCalcFields = dataCalcFields
    DeleteSQL.Strings = (
      'delete from USERS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into USERS'
      '  (ADDLICH, ADDPLOMB, ADDPOKAZ, DEL, ENDMES, ID, PW, USER_NAIM)'
      'values'
      
        '  (:ADDLICH, :ADDPLOMB, :ADDPOKAZ, :DEL, :ENDMES, :ID, :PW, :USE' +
        'R_NAIM)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  USER_NAIM,'
      '  PW,'
      '  ADDLICH,'
      '  ADDPOKAZ,'
      '  ADDPLOMB,'
      '  ENDMES,'
      '  DEL'
      'from USERS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * from USERS where del<>1 order by ID')
    ModifySQL.Strings = (
      'update USERS'
      'set'
      '  ADDLICH = :ADDLICH,'
      '  ADDPLOMB = :ADDPLOMB,'
      '  ADDPOKAZ = :ADDPOKAZ,'
      '  DEL = :DEL,'
      '  ENDMES = :ENDMES,'
      '  ID = :ID,'
      '  PW = :PW,'
      '  USER_NAIM = :USER_NAIM'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_USERS_ID'
    Left = 56
    Top = 362
    object usersID: TIntegerField
      FieldName = 'ID'
      Origin = '"USERS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object usersPW: TIBStringField
      FieldName = 'PW'
      Origin = '"USERS"."PW"'
      Size = 10
    end
    object usersADDLICH: TIntegerField
      FieldName = 'ADDLICH'
      Origin = '"USERS"."ADDLICH"'
    end
    object usersADDPOKAZ: TIntegerField
      FieldName = 'ADDPOKAZ'
      Origin = '"USERS"."ADDPOKAZ"'
    end
    object usersADDPLOMB: TIntegerField
      FieldName = 'ADDPLOMB'
      Origin = '"USERS"."ADDPLOMB"'
    end
    object usersENDMES: TIntegerField
      FieldName = 'ENDMES'
      Origin = '"USERS"."ENDMES"'
    end
    object usersDEL: TIntegerField
      FieldName = 'DEL'
      Origin = '"USERS"."DEL"'
    end
    object usersUSER_NAIM: TIBStringField
      FieldName = 'USER_NAIM'
      Origin = '"USERS"."USER_NAIM"'
      Size = 50
    end
  end
  object usersSource: TDataSource
    DataSet = users
    Left = 88
    Top = 362
  end
  object vid_nach: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
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
      'select * from SPR_ZN where vid_sp='#39'widnach'#39' order by id'
      ''
      ''
      '')
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
    Left = 440
    Top = 432
    object IntegerField22: TIntegerField
      FieldName = 'ID'
      Origin = '"SPR_ZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField23: TIBStringField
      FieldName = 'VID_ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object IntegerField23: TIntegerField
      FieldName = 'VID_OB'
      Origin = '"SPR_ZN"."VID_OB"'
    end
    object IBStringField24: TIBStringField
      FieldName = 'VID_SP'
      Origin = '"SPR_ZN"."VID_SP"'
      Size = 10
    end
  end
  object vid_nachSource: TDataSource
    DataSet = vid_nach
    Left = 440
    Top = 464
  end
  object vid_nach46: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
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
      
        'select * from SPR_ZN where vid_sp='#39'widnach'#39' and (id=41 or id>=46' +
        ')'
      ''
      ''
      '')
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
    Left = 472
    Top = 432
    object vid_nach46IntegerField24: TIntegerField
      FieldName = 'ID'
      Origin = '"SPR_ZN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object vid_nach46IBStringField25: TIBStringField
      FieldName = 'VID_ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
    object vid_nach46IntegerField25: TIntegerField
      FieldName = 'VID_OB'
      Origin = '"SPR_ZN"."VID_OB"'
    end
    object vid_nach46IBStringField26: TIBStringField
      FieldName = 'VID_SP'
      Origin = '"SPR_ZN"."VID_SP"'
      Size = 10
    end
  end
  object vid_nach46Source: TDataSource
    DataSet = vid_nach46
    Left = 472
    Top = 464
  end
  object hvd: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = hvdBeforeOpen
    BeforePost = hvdBeforePost
    OnNewRecord = hvdNewRecord
    DeleteSQL.Strings = (
      'delete from h_voda'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into h_voda'
      
        '  (DATE_POK, DATE_ZN, DEL_NORM, EDRPOU, FILTR, FIO, GRP_RAZN, ID' +
        '_KONTR, '
      
        '   KL, KL_UL, KLNTAR, KOLI_F, KOLI_P, KOLI_P0, KOLI_P1, KUB_ALL,' +
        ' KUB_MES, '
      
        '   KUB_NOBALANS, KV, LICH_POV, LICH_TO, LICH_YEARMON, N_DOM, N_S' +
        'CH, NOR_RAZN, '
      
        '   NORM_BLICH, NORMA, NOTE, OLD_NORM, ORG, PERE_DAY, PERE_RAZN, ' +
        'PERERAH, '
      
        '   PLOMB, PLOSCH_UR, POD, POMPA, PREV_NORM, R_NACH, RASCH_KUB, R' +
        'ASCH_NOR, '
      
        '   RASCH_NOTE, SCH_CUR, SCH_OLD, SCH_RAZN, SCH_RAZN2, SCHET, TAR' +
        'IF_NAME, '
      '   UL, VID_POK, VID_RN, WID, YEARMON, ZN_LICH, ZNOLD_LICH)'
      'values'
      
        '  (:DATE_POK, :DATE_ZN, :DEL_NORM, :EDRPOU, :FILTR, :FIO, :GRP_R' +
        'AZN, :ID_KONTR, '
      
        '   :KL, :KL_UL, :KLNTAR, :KOLI_F, :KOLI_P, :KOLI_P0, :KOLI_P1, :' +
        'KUB_ALL, '
      
        '   :KUB_MES, :KUB_NOBALANS, :KV, :LICH_POV, :LICH_TO, :LICH_YEAR' +
        'MON, :N_DOM, '
      
        '   :N_SCH, :NOR_RAZN, :NORM_BLICH, :NORMA, :NOTE, :OLD_NORM, :OR' +
        'G, :PERE_DAY, '
      
        '   :PERE_RAZN, :PERERAH, :PLOMB, :PLOSCH_UR, :POD, :POMPA, :PREV' +
        '_NORM, '
      
        '   :R_NACH, :RASCH_KUB, :RASCH_NOR, :RASCH_NOTE, :SCH_CUR, :SCH_' +
        'OLD, :SCH_RAZN, '
      
        '   :SCH_RAZN2, :SCHET, :TARIF_NAME, :UL, :VID_POK, :VID_RN, :WID' +
        ', :YEARMON, '
      '   :ZN_LICH, :ZNOLD_LICH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  DOM,'
      '  KVART,'
      '  SCHET,'
      '  N_SCH,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  SCH_RAZN2,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN,'
      '  ID_KONTR,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  NOTE,'
      '  KOLI_F,'
      '  RASCH_KUB,'
      '  RASCH_NOR,'
      '  POD,'
      '  RASCH_NOTE,'
      '  DATE_POK,'
      '  VID_POK,'
      '  KUB_MES,'
      '  LICH_POV,'
      '  ORG,'
      '  VID_RN,'
      '  FILTR,'
      '  POMPA,'
      '  ZN_LICH,'
      '  ZNOLD_LICH,'
      '  DATE_ZN,'
      '  LICH_TO,'
      '  KLNTAR,'
      '  TARIF_NAME,'
      '  NORMA,'
      '  OLD_NORM,'
      '  DEL_NORM,'
      '  PREV_NORM,'
      '  LICH_YEARMON,'
      '  EDRPOU,'
      '  KL_UL,'
      '  R_NACH,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PLOSCH_UR,'
      '  PERERAH'
      'from h_voda '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select *'
      'from h_voda'
      'where h_voda.yearmon=:yearmon and h_voda.org=0'
      'ORDER BY H_VODA.SCHET')
    ModifySQL.Strings = (
      'update h_voda'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_ZN = :DATE_ZN,'
      '  DEL_NORM = :DEL_NORM,'
      '  EDRPOU = :EDRPOU,'
      '  FILTR = :FILTR,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KLNTAR = :KLNTAR,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_MES = :KUB_MES,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  LICH_POV = :LICH_POV,'
      '  LICH_TO = :LICH_TO,'
      '  LICH_YEARMON = :LICH_YEARMON,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NORMA = :NORMA,'
      '  NOTE = :NOTE,'
      '  OLD_NORM = :OLD_NORM,'
      '  ORG = :ORG,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  PLOMB = :PLOMB,'
      '  PLOSCH_UR = :PLOSCH_UR,'
      '  POD = :POD,'
      '  POMPA = :POMPA,'
      '  PREV_NORM = :PREV_NORM,'
      '  R_NACH = :R_NACH,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_RAZN2 = :SCH_RAZN2,'
      '  SCHET = :SCHET,'
      '  TARIF_NAME = :TARIF_NAME,'
      '  UL = :UL,'
      '  VID_POK = :VID_POK,'
      '  VID_RN = :VID_RN,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  ZN_LICH = :ZN_LICH,'
      '  ZNOLD_LICH = :ZNOLD_LICH'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    Left = 144
    Top = 336
    object hvdKL: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object hvdYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object hvdPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object hvdFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object hvdWID: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object hvdDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object hvdN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object hvdSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object hvdSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object hvdSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hvdKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object hvdKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object hvdKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object hvdNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object hvdPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object hvdUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object hvdN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object hvdKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object hvdNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object hvdKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object hvdRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object hvdRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object hvdPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object hvdRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object hvdDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object hvdVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object hvdKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object hvdLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object hvdORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object hvdVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object hvdFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object hvdPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object hvdZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object hvdZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object hvdDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object hvdLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object hvdKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hvdTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hvdNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hvdOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hvdDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hvdPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hvdLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hvdEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hvdKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hvdR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hvdNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hvdKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hvdKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object hvdPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object hvdPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
  end
  object hvdSource: TDataSource
    DataSet = hvd
    Left = 144
    Top = 368
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    SQL.Strings = (
      '')
    Left = 560
    Top = 296
  end
  object why_pok: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from WHY_POK'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into WHY_POK'
      '  (DATE_USER, ID, ID_USER, NOTE, SCHET, USER_NAIM, WID)'
      'values'
      '  (:DATE_USER, :ID, :ID_USER, :NOTE, :SCHET, :USER_NAIM, :WID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  WID,'
      '  SCHET,'
      '  NOTE,'
      '  USER_NAIM,'
      '  ID_USER,'
      '  DATE_USER'
      'from WHY_POK '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select WHY_POK.*,sp.vid_zn from WHY_POK'
      'left join spr_zn sp on sp.id=why_pok.wid'
      ''
      '')
    ModifySQL.Strings = (
      'update WHY_POK'
      'set'
      '  DATE_USER = :DATE_USER,'
      '  ID = :ID,'
      '  ID_USER = :ID_USER,'
      '  NOTE = :NOTE,'
      '  SCHET = :SCHET,'
      '  USER_NAIM = :USER_NAIM,'
      '  WID = :WID'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_WHY_POK_ID'
    Left = 504
    Top = 432
    object why_pokID: TIntegerField
      FieldName = 'ID'
      Origin = '"WHY_POK"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object why_pokWID: TIntegerField
      FieldName = 'WID'
      Origin = '"WHY_POK"."WID"'
    end
    object why_pokNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"WHY_POK"."NOTE"'
      Size = 300
    end
    object why_pokUSER_NAIM: TIBStringField
      FieldName = 'USER_NAIM'
      Origin = '"WHY_POK"."USER_NAIM"'
      Size = 50
    end
    object why_pokID_USER: TSmallintField
      FieldName = 'ID_USER'
      Origin = '"WHY_POK"."ID_USER"'
    end
    object why_pokDATE_USER: TDateTimeField
      FieldName = 'DATE_USER'
      Origin = '"WHY_POK"."DATE_USER"'
    end
    object why_pokSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"WHY_POK"."SCHET"'
      Size = 10
    end
    object why_pokVID_ZN: TIBStringField
      FieldName = 'VID_ZN'
      Origin = '"SPR_ZN"."VID_ZN"'
      Size = 50
    end
  end
  object why_pokSource: TDataSource
    DataSet = why_pok
    Left = 504
    Top = 464
  end
  object hvdrozpdom: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    BeforeOpen = hvd12BeforeOpen
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (DATE_POK, DATE_ZN, DEL_NORM, EDRPOU, FILTR, FIO, GRP_RAZN, ID' +
        '_KONTR, '
      
        '   KL, KL_UL, KLNTAR, KOLI_F, KOLI_P, KOLI_P0, KOLI_P1, KUB_ALL,' +
        ' KUB_MES, '
      
        '   KUB_NOBALANS, KV, LICH_POV, LICH_TO, LICH_YEARMON, N_DOM, N_S' +
        'CH, NOR_RAZN, '
      
        '   NORM_BLICH, NORMA, NOTE, OLD_NORM, ORG, PERE_DAY, PERE_RAZN, ' +
        'PERERAH, '
      
        '   PLOMB, PLOSCH_UR, POD, POMPA, PREV_NORM, R_NACH, RASCH_KUB, R' +
        'ASCH_NOR, '
      
        '   RASCH_NOTE, SCH_CUR, SCH_OLD, SCH_RAZN, SCH_RAZN2, SCHET, TAR' +
        'IF_NAME, '
      '   UL, VID_POK, VID_RN, WID, YEARMON, ZN_LICH, ZNOLD_LICH)'
      'values'
      
        '  (:DATE_POK, :DATE_ZN, :DEL_NORM, :EDRPOU, :FILTR, :FIO, :GRP_R' +
        'AZN, :ID_KONTR, '
      
        '   :KL, :KL_UL, :KLNTAR, :KOLI_F, :KOLI_P, :KOLI_P0, :KOLI_P1, :' +
        'KUB_ALL, '
      
        '   :KUB_MES, :KUB_NOBALANS, :KV, :LICH_POV, :LICH_TO, :LICH_YEAR' +
        'MON, :N_DOM, '
      
        '   :N_SCH, :NOR_RAZN, :NORM_BLICH, :NORMA, :NOTE, :OLD_NORM, :OR' +
        'G, :PERE_DAY, '
      
        '   :PERE_RAZN, :PERERAH, :PLOMB, :PLOSCH_UR, :POD, :POMPA, :PREV' +
        '_NORM, '
      
        '   :R_NACH, :RASCH_KUB, :RASCH_NOR, :RASCH_NOTE, :SCH_CUR, :SCH_' +
        'OLD, :SCH_RAZN, '
      
        '   :SCH_RAZN2, :SCHET, :TARIF_NAME, :UL, :VID_POK, :VID_RN, :WID' +
        ', :YEARMON, '
      '   :ZN_LICH, :ZNOLD_LICH)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  WID,'
      '  DOM,'
      '  KVART,'
      '  SCHET,'
      '  N_SCH,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  SCH_RAZN2,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN,'
      '  ID_KONTR,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  NOTE,'
      '  KOLI_F,'
      '  RASCH_KUB,'
      '  RASCH_NOR,'
      '  POD,'
      '  RASCH_NOTE,'
      '  DATE_POK,'
      '  VID_POK,'
      '  KUB_MES,'
      '  LICH_POV,'
      '  ORG,'
      '  VID_RN,'
      '  FILTR,'
      '  POMPA,'
      '  ZN_LICH,'
      '  ZNOLD_LICH,'
      '  DATE_ZN,'
      '  LICH_TO,'
      '  KLNTAR,'
      '  TARIF_NAME,'
      '  NORMA,'
      '  OLD_NORM,'
      '  DEL_NORM,'
      '  PREV_NORM,'
      '  LICH_YEARMON,'
      '  EDRPOU,'
      '  KL_UL,'
      '  R_NACH,'
      '  NORM_BLICH,'
      '  KUB_NOBALANS,'
      '  KUB_ALL,'
      '  PLOSCH_UR,'
      '  PERERAH'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from H_VODA where h_voda.yearmon=:yearmon')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  DATE_POK = :DATE_POK,'
      '  DATE_ZN = :DATE_ZN,'
      '  DEL_NORM = :DEL_NORM,'
      '  EDRPOU = :EDRPOU,'
      '  FILTR = :FILTR,'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KL_UL = :KL_UL,'
      '  KLNTAR = :KLNTAR,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  KUB_ALL = :KUB_ALL,'
      '  KUB_MES = :KUB_MES,'
      '  KUB_NOBALANS = :KUB_NOBALANS,'
      '  KV = :KV,'
      '  LICH_POV = :LICH_POV,'
      '  LICH_TO = :LICH_TO,'
      '  LICH_YEARMON = :LICH_YEARMON,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NORM_BLICH = :NORM_BLICH,'
      '  NORMA = :NORMA,'
      '  NOTE = :NOTE,'
      '  OLD_NORM = :OLD_NORM,'
      '  ORG = :ORG,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PERERAH = :PERERAH,'
      '  PLOMB = :PLOMB,'
      '  PLOSCH_UR = :PLOSCH_UR,'
      '  POD = :POD,'
      '  POMPA = :POMPA,'
      '  PREV_NORM = :PREV_NORM,'
      '  R_NACH = :R_NACH,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH_RAZN2 = :SCH_RAZN2,'
      '  SCHET = :SCHET,'
      '  TARIF_NAME = :TARIF_NAME,'
      '  UL = :UL,'
      '  VID_POK = :VID_POK,'
      '  VID_RN = :VID_RN,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  ZN_LICH = :ZN_LICH,'
      '  ZNOLD_LICH = :ZNOLD_LICH'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 600
    Top = 352
    object hvdrozpdomKL: TIntegerField
      FieldName = 'KL'
      Origin = '"H_VODA"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object hvdrozpdomYEARMON: TIntegerField
      FieldName = 'YEARMON'
      Origin = '"H_VODA"."YEARMON"'
    end
    object hvdrozpdomPLOMB: TSmallintField
      FieldName = 'PLOMB'
      Origin = '"H_VODA"."PLOMB"'
    end
    object hvdrozpdomFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"H_VODA"."FIO"'
      Size = 35
    end
    object hvdrozpdomWID: TSmallintField
      FieldName = 'WID'
      Origin = '"H_VODA"."WID"'
    end
    object hvdrozpdomDOM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DOM'
      Origin = '"H_VODA"."DOM"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdrozpdomKVART: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KVART'
      Origin = '"H_VODA"."KVART"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object hvdrozpdomSCHET: TIBStringField
      FieldName = 'SCHET'
      Origin = '"H_VODA"."SCHET"'
      Required = True
      Size = 10
    end
    object hvdrozpdomN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object hvdrozpdomSCH_OLD: TIBBCDField
      FieldName = 'SCH_OLD'
      Origin = '"H_VODA"."SCH_OLD"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomSCH_CUR: TIBBCDField
      FieldName = 'SCH_CUR'
      Origin = '"H_VODA"."SCH_CUR"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomSCH_RAZN: TIBBCDField
      FieldName = 'SCH_RAZN'
      Origin = '"H_VODA"."SCH_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomKOLI_P: TIBBCDField
      FieldName = 'KOLI_P'
      Origin = '"H_VODA"."KOLI_P"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object hvdrozpdomKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object hvdrozpdomNOR_RAZN: TIBBCDField
      FieldName = 'NOR_RAZN'
      Origin = '"H_VODA"."NOR_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomGRP_RAZN: TIBBCDField
      FieldName = 'GRP_RAZN'
      Origin = '"H_VODA"."GRP_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object hvdrozpdomPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object hvdrozpdomUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object hvdrozpdomN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object hvdrozpdomKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object hvdrozpdomNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object hvdrozpdomKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object hvdrozpdomRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object hvdrozpdomRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object hvdrozpdomDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object hvdrozpdomVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object hvdrozpdomKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object hvdrozpdomLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object hvdrozpdomORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object hvdrozpdomVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object hvdrozpdomFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object hvdrozpdomPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object hvdrozpdomZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object hvdrozpdomZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object hvdrozpdomDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object hvdrozpdomLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object hvdrozpdomKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hvdrozpdomTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hvdrozpdomNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hvdrozpdomOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hvdrozpdomDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hvdrozpdomPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hvdrozpdomLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hvdrozpdomEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hvdrozpdomKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hvdrozpdomR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hvdrozpdomNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hvdrozpdomKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hvdrozpdomKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object hvdrozpdomPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object hvdrozpdomPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
    end
  end
  object hvdrozpdomSource: TDataSource
    DataSet = hvdrozpdom
    Left = 600
    Top = 384
  end
  object DataAllSource: TDataSource
    DataSet = hvd
    Left = 544
    Top = 8
  end
end
