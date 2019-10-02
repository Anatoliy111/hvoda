object FormEdExpr: TFormEdExpr
  Left = 211
  Top = 117
  Caption = 'FormEdExpr'
  ClientHeight = 584
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  DesignSize = (
    794
    584)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 794
    Height = 87
    Align = alTop
    TabOrder = 0
    object Grid: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCanSelectRecord = GridCanSelectRecord
      DataController.DataModeController.GridMode = True
      DataController.DataSource = exprSource
      DataController.KeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object GridWID: TcxGridDBColumn
        DataBinding.FieldName = 'WID'
        Width = 100
      end
      object GridNOTES: TcxGridDBColumn
        DataBinding.FieldName = 'NOTES'
        Width = 423
      end
      object GridKL: TcxGridDBColumn
        DataBinding.FieldName = 'KL'
        Visible = False
      end
      object GridEXPR: TcxGridDBColumn
        DataBinding.FieldName = 'EXPR'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = Grid
    end
  end
  object dxDockSite1: TdxDockSite
    Left = 0
    Top = 113
    Width = 794
    Height = 419
    Align = alClient
    ExplicitTop = 87
    ExplicitHeight = 497
    DockType = 0
    OriginalWidth = 794
    OriginalHeight = 419
    object dxLayoutDockSite2: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 766
      Height = 419
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite3: TdxLayoutDockSite
        Left = 0
        Top = 33
        Width = 766
        Height = 386
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
        object dxLayoutDockSite1: TdxLayoutDockSite
          Left = 0
          Top = 0
          Width = 766
          Height = 386
          DockType = 1
          OriginalWidth = 300
          OriginalHeight = 200
        end
        object dxDockPanel1: TdxDockPanel
          Left = 0
          Top = 0
          Width = 766
          Height = 386
          AllowFloating = False
          AutoHide = False
          Caption = 'dxDockPanel1'
          CaptionButtons = [cbMaximize]
          DockType = 1
          OriginalWidth = 673
          OriginalHeight = 140
          object fsSyntaxMemo1: TfsSyntaxMemo
            Left = 0
            Top = 0
            Width = 762
            Height = 364
            Cursor = crIBeam
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            TabStop = True
            BlockColor = clHighlight
            BlockFontColor = clHighlightText
            CommentAttr.Charset = DEFAULT_CHARSET
            CommentAttr.Color = clNavy
            CommentAttr.Height = -13
            CommentAttr.Name = 'Courier New'
            CommentAttr.Style = [fsItalic]
            KeywordAttr.Charset = DEFAULT_CHARSET
            KeywordAttr.Color = clWindowText
            KeywordAttr.Height = -13
            KeywordAttr.Name = 'Courier New'
            KeywordAttr.Style = [fsBold]
            StringAttr.Charset = DEFAULT_CHARSET
            StringAttr.Color = clNavy
            StringAttr.Height = -13
            StringAttr.Name = 'Courier New'
            StringAttr.Style = []
            TextAttr.Charset = DEFAULT_CHARSET
            TextAttr.Color = clWindowText
            TextAttr.Height = -13
            TextAttr.Name = 'Courier New'
            TextAttr.Style = []
            Lines.Strings = (
              '')
            ReadOnly = False
            SyntaxType = stPascal
            ShowFooter = True
            ShowGutter = True
            OnChange = fsSyntaxMemo1Change
            ExplicitHeight = 368
          end
        end
      end
      object dxDockPanel3: TdxDockPanel
        Left = 0
        Top = 0
        Width = 766
        Height = 33
        AllowFloating = True
        AutoHide = False
        Caption = 'dxDockPanel3'
        CaptionButtons = []
        DockType = 3
        OriginalWidth = 185
        OriginalHeight = 33
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 744
          Height = 26
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
    object dxDockPanel2: TdxDockPanel
      Left = -217
      Top = 0
      Width = 217
      Height = 0
      Visible = False
      AllowFloating = True
      AutoHide = True
      Caption = #1055#1086#1084#1086#1097#1100
      CaptionButtons = [cbMaximize]
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 217
      OriginalHeight = 140
      object cxDBTreeList1: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 217
        Height = 153
        Align = alTop
        Bands = <
          item
          end>
        BufferedPaint = False
        DataController.DataSource = helpSource
        DataController.ParentField = 'OWNER'
        DataController.KeyField = 'KL'
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        RootValue = 2
        TabOrder = 0
        OnDblClick = cxDBTreeList1DblClick
        object cxDBTreeList1TITLE: TcxDBTreeListColumn
          Caption.Text = #1055#1086#1084#1086#1097#1100
          DataBinding.FieldName = 'TITLE'
          Width = 206
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          SortOrder = soAscending
        end
      end
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 153
        Align = alTop
        DataBinding.DataField = 'ADDI'
        DataBinding.DataSource = helpSource
        ParentFont = False
        Style.Color = 14741397
        Style.Edges = [bLeft, bTop, bRight]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 49
        Width = 217
      end
      object cxDBMemo2: TcxDBMemo
        Left = 0
        Top = 202
        Align = alClient
        DataBinding.DataField = 'NOTE'
        DataBinding.DataSource = helpSource
        Properties.ScrollBars = ssBoth
        Style.Edges = [bLeft, bRight, bBottom]
        TabOrder = 2
        Height = 195
        Width = 217
      end
    end
  end
  object expr: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransaction1
    AfterScroll = exprAfterScroll
    BeforePost = exprBeforePost
    BeforeScroll = exprBeforeScroll
    DeleteSQL.Strings = (
      'delete from EXPRS'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into EXPRS'
      '  (EXPR, KL, NOTES, WID, BIN)'
      'values'
      '  (:EXPR, :KL, :NOTES, :WID, :BIN)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  WID,'
      '  NOTES,'
      '  EXPR,'
      '  BIN'
      'from EXPRS '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select EXPR, KL, NOTES, WID, BIN from EXPRS')
    ModifySQL.Strings = (
      'update EXPRS'
      'set'
      '  EXPR = :EXPR,'
      '  KL = :KL,'
      '  NOTES = :NOTES,'
      '  WID = :WID,'
      '  BIN = :BIN'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_EXPRS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 312
    Top = 40
    object exprEXPR: TMemoField
      FieldName = 'EXPR'
      Origin = 'EXPRS.EXPR'
      BlobType = ftMemo
      Size = 8
    end
    object exprKL: TIntegerField
      FieldName = 'KL'
      Origin = 'EXPRS.KL'
      Required = True
    end
    object exprNOTES: TIBStringField
      FieldName = 'NOTES'
      Origin = 'EXPRS.NOTES'
      Size = 64
    end
    object exprWID: TIBStringField
      FieldName = 'WID'
      Origin = 'EXPRS.WID'
    end
    object exprBIN: TBlobField
      FieldName = 'BIN'
      Origin = 'EXPRS.BIN'
      Size = 8
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = MainForm.IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 344
    Top = 40
  end
  object exprSource: TDataSource
    DataSet = expr
    Left = 312
    Top = 72
  end
  object fsPascal1: TfsPascal
    Left = 216
    Top = 200
  end
  object fsScript1: TfsScript
    SyntaxType = 'PascalScript'
    Left = 184
    Top = 200
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = MainForm.ImageList1
    PopupMenuLinks = <>
    RegistryPath = '\Software\Kushko\GKU_HVD\'
    Style = bmsOffice11
    UseSystemFont = True
    Left = 392
    Top = 8
    DockControlHeights = (
      0
      0
      26
      52)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 152
      FloatTop = 114
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 358
      FloatTop = 428
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 639
          Visible = True
          ItemName = 'dxBarEdit1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 680
          Visible = True
          ItemName = 'dxBarEdit1'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsBottom
      FloatLeft = 145
      FloatTop = 168
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 672
          Visible = True
          ItemName = 'dxBarEdit2'
        end>
      OldName = 'Custom 3'
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 358
      FloatTop = 294
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end>
      OldName = 'Custom 4'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Compile'
      Category = 0
      Hint = 'Compile'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'exec cmd'
      Category = 0
      Hint = 'exec cmd'
      Visible = ivAlways
      OnKeyDown = dxBarEdit1KeyDown
      Width = 100
    end
    object dxBarStatic4: TdxBarStatic
      Caption = 'Exec'
      Category = 0
      Hint = 'Exec'
      Visible = ivAlways
    end
    object dxBarEdit2: TdxBarEdit
      Caption = 'res cmd'
      Category = 0
      Hint = 'res cmd'
      Visible = ivAlways
      Width = 100
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Stop'
      Category = 0
      Hint = 'Stop'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Exec'
      Category = 0
      Hint = 'Exec'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
  end
  object fsDBRTTI1: TfsDBRTTI
    Left = 248
    Top = 200
  end
  object prop: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = propBeforeOpen
    DeleteSQL.Strings = (
      'delete from PROP'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into PROP'
      '  (DD, KL, KOLI, SCHET, YEARMON)'
      'values'
      '  (:DD, :KL, :KOLI, :SCHET, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  SCHET,'
      '  DD,'
      '  KOLI'
      'from PROP '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select DD, KL, KOLI, SCHET, YEARMON '
      'from PROP'
      'where (schet=:schet or :all=1) and yearmon=:yearmon'
      'order by schet, dd')
    ModifySQL.Strings = (
      'update PROP'
      'set'
      '  DD = :DD,'
      '  KL = :KL,'
      '  KOLI = :KOLI,'
      '  SCHET = :SCHET,'
      '  YEARMON = :YEARMON'
      'where'
      '  KL = :OLD_KL')
    Left = 376
    Top = 336
  end
  object IBTransactionScript: TIBTransaction
    Active = True
    DefaultDatabase = MainForm.IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 328
    Top = 336
  end
  object hvd: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = hvdBeforeOpen
    DeleteSQL.Strings = (
      'delete from h_voda'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into h_voda'
      
        '  (GRP_RAZN, KL, KOLI_P, NOR_RAZN, PLOMB, SCH_CUR, SCH_OLD, SCHE' +
        'T, '
      'WID, '
      '   YEARMON, KOLI_P0, KOLI_P1, PERE_DAY, PERE_RAZN,NOTE)'
      'values'
      
        '  (:GRP_RAZN, :KL, :KOLI_P, :NOR_RAZN, :PLOMB, :SCH_CUR, :SCH_OL' +
        'D, '
      ':SCHET, '
      
        '   :WID, :YEARMON, :KOLI_P0, :KOLI_P1, :PERE_DAY, :PERE_RAZN,:NO' +
        'TE)')
    RefreshSQL.Strings = (
      'Select GRP_RAZN, KL, KOLI_P, NOR_RAZN, PLOMB, SCH_CUR, SCH_OLD, '
      'SCHET, '
      'WID, '
      '   YEARMON, KOLI_P0, KOLI_P1, PERE_DAY, PERE_RAZN, NOTE'
      'from h_voda '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'SELECT H_VODA.DOM, H_VODA.GRP_RAZN, H_VODA.KL, H_VODA.KOLI_P, H_' +
        'VODA.NOR_RAZN, H_VODA.SCH_CUR, H_VODA.SCH_OLD, H_VODA.SCH_RAZN, ' +
        'H_VODA.SCHET, H_VODA.KVART, H_VODA.PLOMB, h_voda.FIO, h_voda.WID' +
        ',  h_voda.yearmon, H_VODA.PERE_DAY, H_VODA.PERE_RAZN, H_VODA.n_s' +
        'ch, H_VODA.UL,H_VODA.N_DOM,H_VODA.KV,H_VODA.ID_KONTR'
      
        ', r3.srazn3,r3.snorm3,r12.srazn12, round(r12.srazn12/12,0) sred,' +
        ' r12.kol,'
      'case when (r12.kol > 0) and (r12.srazn12>0) then'
      'round(r12.srazn12/r12.kol,0)'
      'else 0'
      'end sredkol,note'
      'FROM H_VODA'
      'left join ('
      
        'select schet,sum(sch_razn) srazn3,sum(nor_razn) snorm3 from H_VO' +
        'DA'
      'where h_voda.yearmon>='
      'case'
      'when mod(:yearmon,100)-3<=0'
      'then :yearmon-91'
      'else :yearmon-3'
      'end'
      'and  h_voda.yearmon<:yearmon'
      'group by schet'
      'order by schet'
      ') r3 on (r3.schet = H_VODA.schet)'
      'left join ('
      
        'select schet,sum(sch_razn) srazn12,sum(nor_razn) snorm12,sum(kol' +
        ') kol'
      'from'
      '(select schet,sch_razn,nor_razn,'
      'case'
      'when sch_razn>0 then 1'
      'else 0'
      'end kol'
      'from H_VODA'
      
        'where h_voda.yearmon>=(:yearmon-100) and  h_voda.yearmon<:yearmo' +
        'n)'
      'group by schet'
      'order by schet'
      ') r12 on (r12.schet = H_VODA.schet)'
      
        'where (H_VODA.schet>=:sch0) and (H_VODA.schet<=:sch1) and (H_VOD' +
        'A.yearmon=:yearmon)'
      'order by H_VODA.SCHET')
    ModifySQL.Strings = (
      'update h_voda'
      'set'
      '  GRP_RAZN = :GRP_RAZN,'
      '  KL = :KL,'
      '  KOLI_P = :KOLI_P,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  PLOMB = :PLOMB,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCHET = :SCHET,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  KOLI_P0 = :KOLI_P0,'
      '  KOLI_P1 = :KOLI_P1,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  NOTE = :NOTE'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 416
    Top = 336
  end
  object grps: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = grpsBeforeOpen
    DeleteSQL.Strings = (
      'delete from HVGRP'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into HVGRP'
      '  (NORMA)'
      'values'
      '  (:NORMA)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  SCH0,'
      '  SCH1,'
      '  RAZN,'
      '  NORMA'
      'from HVGRP '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select KL, RAZN, SCH0, SCH1, YEARMON, NORMA from HVGRP'
      'where yearmon=:yearmon'
      'order by sch0')
    ModifySQL.Strings = (
      'update HVGRP'
      'set'
      '  NORMA = :NORMA'
      'where'
      '  KL = :OLD_KL')
    Left = 456
    Top = 336
  end
  object data: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = dataBeforeOpen
    SelectSQL.Strings = (
      'select NORMA_HVD, YEARMON '
      'from DATA'
      'where yearmon=:yearmon')
    Left = 496
    Top = 336
  end
  object help: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'select kl,npp,owner,title,note,addi,templ from get_helps(2)')
    Left = 32
    Top = 177
    object helpKL: TIntegerField
      FieldName = 'KL'
      Origin = 'HELP.KL'
      Required = True
    end
    object helpNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'HELP.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object helpNPP: TIntegerField
      FieldName = 'NPP'
      Origin = 'HELP.NPP'
    end
    object helpOWNER: TIntegerField
      FieldName = 'OWNER'
      Origin = 'HELP.OWNER'
    end
    object helpTITLE: TIBStringField
      FieldName = 'TITLE'
      Origin = 'HELP.TITLE'
      Size = 128
    end
    object helpADDI: TIBStringField
      FieldName = 'ADDI'
      Origin = 'HELP.ADDI'
      Size = 128
    end
    object helpTEMPL: TIBStringField
      FieldName = 'TEMPL'
      Origin = 'HELP.TEMPL'
      Size = 64
    end
  end
  object helpSource: TDataSource
    DataSet = help
    Left = 64
    Top = 177
  end
  object dxDockingManager1: TdxDockingManager
    AutoHideInterval = 100
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer]
    ViewStyle = vsStandard
    Left = 80
    Top = 281
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = dxBarEdit1
        Properties.Strings = (
          'Text')
      end>
    StorageName = '\Software\Kushko\GKU_HVD'
    StorageType = stRegistry
    Left = 304
    Top = 186
  end
  object Timer1: TTimer
    Left = 448
    Top = 88
  end
  object qry: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    Left = 160
    Top = 330
  end
  object fsScriptCalc: TfsScript
    SyntaxType = 'PascalScript'
    Left = 128
    Top = 448
  end
  object hvd_rep: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = hvd_repBeforeOpen
    DeleteSQL.Strings = (
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (GRP_RAZN, KL, KOLI_P, NOR_RAZN, SCH_CUR, SCH_OLD, SCHET, PLOM' +
        'B, '
      'FIO, '
      '   WID, YEARMON, PERE_DAY, PERE_RAZN)'
      'values'
      
        '  (:GRP_RAZN, :KL, :KOLI_P, :NOR_RAZN, :SCH_CUR, :SCH_OLD, :SCHE' +
        'T, '
      ':PLOMB, '
      '   :FIO, :WID, :YEARMON, :PERE_DAY, :PERE_RAZN)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  PLOMB,'
      '  FIO,'
      '  DOM,'
      '  KVART,'
      '  WID,'
      '  SCHET,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_RAZN,'
      '  KOLI_P,'
      '  KOLI_P0,'
      '  KOLI_P1,'
      '  NOR_RAZN,'
      '  GRP_RAZN,'
      '  PERE_DAY,'
      '  PERE_RAZN'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'SELECT H_VODA.DOM, H_VODA.GRP_RAZN, H_VODA.KL, H_VODA.KOLI_P, H_' +
        'VODA.NOR_RAZN, H_VODA.SCH_CUR, H_VODA.SCH_OLD, H_VODA.SCH_RAZN, ' +
        'H_VODA.SCHET, H_VODA.KVART, H_VODA.PLOMB, h_voda.FIO, h_voda.WID' +
        ',  h_voda.yearmon, PERE_DAY, PERE_RAZN'
      'FROM H_VODA'
      'where h_voda.yearmon=:yearmon '
      'ORDER BY H_VODA.SCHET')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  GRP_RAZN = :GRP_RAZN,'
      '  KL = :KL,'
      '  KOLI_P = :KOLI_P,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCHET = :SCHET,'
      '  PLOMB = :PLOMB,'
      '  FIO = :FIO,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_H_VODA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 536
    Top = 336
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
  end
  object dom: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = domBeforeOpen
    DeleteSQL.Strings = (
      'delete from dom'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into dom'
      '  (DOM, KL, YEARMON)'
      'values'
      '  (:DOM, :KL, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  DOM,'
      '  KL,'
      '  YEARMON'
      'from dom '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select DOM, KL, YEARMON'
      'from dom'
      'where yearmon=:yearmon')
    ModifySQL.Strings = (
      'update dom'
      'set'
      '  DOM = :DOM,'
      '  KL = :KL,'
      '  YEARMON = :YEARMON'
      'where'
      '  KL = :OLD_KL')
    Left = 576
    Top = 336
  end
end
