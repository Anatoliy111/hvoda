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
            ExplicitLeft = -1
            ExplicitTop = 6
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
      'delete from H_VODA'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into H_VODA'
      
        '  (FIO, GRP_RAZN, ID_KONTR, KL, KOLI_F, KOLI_P, KV, N_DOM, N_SCH' +
        ', '
      
        '   NOR_RAZN, NOTE, PERE_DAY, PERE_RAZN, PLOMB, POD, RASCH_KUB, S' +
        'CH_CUR, '
      '   SCH_OLD, SCHET, UL, WID, YEARMON,RASCH_NOR,RASCH_NOTE)'
      'values'
      
        '  (:FIO, :GRP_RAZN, :ID_KONTR, :KL, :KOLI_F, :KOLI_P, :KV, :N_DO' +
        'M, '
      
        '   :N_SCH, :NOR_RAZN, :NOTE, :PERE_DAY, :PERE_RAZN, :PLOMB, :POD' +
        ', :RASCH_KUB, '
      '   :SCH_CUR, :SCH_OLD, :SCHET,'
      '   :UL, :WID, :YEARMON,:RASCH_NOR,:RASCH_NOTE)')
    RefreshSQL.Strings = (
      'Select '
      '  DOM,'
      '  POD,'
      '  RASCH_KUB,'
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
      '  PERE_RAZN,'
      '  N_SCH,'
      '  UL,'
      '  N_DOM,'
      '  KV,'
      '  ID_KONTR,'
      '  NOTE,'
      '  RASCH_NOR,'
      '  RASCH_NOTE'
      'from H_VODA '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'SELECT H_VODA.DOM, H_VODA.RASCH_NOTE, H_VODA.POD, H_VODA.RASCH_K' +
        'UB,  H_VODA.RASCH_NOR, H_VODA.GRP_RAZN, H_VODA.KL, H_VODA.KOLI_P' +
        ', H_VODA.KOLI_F, H_VODA.NOR_RAZN, H_VODA.SCH_CUR, H_VODA.SCH_OLD' +
        ', H_VODA.SCH_RAZN, H_VODA.SCHET, H_VODA.KVART, H_VODA.PLOMB, h_v' +
        'oda.FIO, h_voda.WID,  h_voda.yearmon, H_VODA.PERE_DAY, H_VODA.PE' +
        'RE_RAZN, H_VODA.n_sch, H_VODA.UL,H_VODA.N_DOM,H_VODA.KV,H_VODA.I' +
        'D_KONTR, H_VODA.DATE_POK, H_VODA.VID_POK'
      
        ', r3.srazn3,r3.snorm3,r12.srazn12, round(r12.srazn12/12,2) sred,' +
        ' r12.kol,'
      'case when (r12.kol > 0) and (r12.srazn12>0) then'
      'round(r12.srazn12/r12.kol,2)'
      'else 0'
      'end sredkol,'
      'note'
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
      'when sch_razn<>0 then 1'
      'else 0'
      'end kol'
      'from H_VODA'
      
        'where h_voda.yearmon>=(:yearmon-100) and  h_voda.yearmon<:yearmo' +
        'n)'
      'group by schet'
      'order by schet'
      ') r12 on (r12.schet = H_VODA.schet)'
      
        'where h_voda.yearmon=:yearmon and ((h_voda.dom=:dom) or (:all=1)' +
        ')'
      'ORDER BY H_VODA.SCHET')
    ModifySQL.Strings = (
      'update H_VODA'
      'set'
      '  FIO = :FIO,'
      '  GRP_RAZN = :GRP_RAZN,'
      '  ID_KONTR = :ID_KONTR,'
      '  KL = :KL,'
      '  KOLI_F = :KOLI_F,'
      '  KOLI_P = :KOLI_P,'
      '  KV = :KV,'
      '  N_DOM = :N_DOM,'
      '  N_SCH = :N_SCH,'
      '  NOR_RAZN = :NOR_RAZN,'
      '  NOTE = :NOTE,'
      '  PERE_DAY = :PERE_DAY,'
      '  PERE_RAZN = :PERE_RAZN,'
      '  PLOMB = :PLOMB,'
      '  POD = :POD,'
      '  RASCH_KUB = :RASCH_KUB,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCHET = :SCHET,'
      '  UL = :UL,'
      '  WID = :WID,'
      '  YEARMON = :YEARMON,'
      '  RASCH_NOR = :RASCH_NOR,'
      '  RASCH_NOTE = :RASCH_NOTE'
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
      
        '  (DOM, KL, NORMA, NORMA_BL, NOTE, POD, RAZN, SCH_CUR, SCH_FACT,' +
        ' SCH_FOP, '
      '   SCH_OLD, SCH_RAZN, SCH0, SCH1, YEARMON)'
      'values'
      
        '  (:DOM, :KL, :NORMA, :NORMA_BL, :NOTE, :POD, :RAZN, :SCH_CUR, :' +
        'SCH_FACT, '
      '   :SCH_FOP, :SCH_OLD, :SCH_RAZN, :SCH0, :SCH1, :YEARMON)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  YEARMON,'
      '  DOM,'
      '  POD,'
      '  SCH0,'
      '  SCH1,'
      '  SCH_OLD,'
      '  SCH_CUR,'
      '  SCH_FACT,'
      '  NORMA,'
      '  RAZN,'
      '  NOTE,'
      '  SCH_KUB,'
      '  SCH_RAZN,'
      '  NORMA_BL,'
      '  SCH_FOP'
      'from HVGRP '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from HVGRP'
      'where yearmon=:yearmon'
      'order by dom')
    ModifySQL.Strings = (
      'update HVGRP'
      'set'
      '  DOM = :DOM,'
      '  KL = :KL,'
      '  NORMA = :NORMA,'
      '  NORMA_BL = :NORMA_BL,'
      '  NOTE = :NOTE,'
      '  POD = :POD,'
      '  RAZN = :RAZN,'
      '  SCH_CUR = :SCH_CUR,'
      '  SCH_FACT = :SCH_FACT,'
      '  SCH_FOP = :SCH_FOP,'
      '  SCH_OLD = :SCH_OLD,'
      '  SCH_RAZN = :SCH_RAZN,'
      '  SCH0 = :SCH0,'
      '  SCH1 = :SCH1,'
      '  YEARMON = :YEARMON'
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
    Left = 72
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
      'SELECT *'
      'FROM H_VODA'
      'where h_voda.yearmon=:yearmon and h_voda.org=0'
      'ORDER BY H_VODA.SCHET')
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
    object hvd_repN_SCH: TIBStringField
      FieldName = 'N_SCH'
      Origin = '"H_VODA"."N_SCH"'
      Size = 16
    end
    object hvd_repRASCH_KUB: TIBBCDField
      FieldName = 'RASCH_KUB'
      Origin = '"H_VODA"."RASCH_KUB"'
      Precision = 18
      Size = 4
    end
    object hvd_repKOLI_P0: TIntegerField
      FieldName = 'KOLI_P0'
      Origin = '"H_VODA"."KOLI_P0"'
    end
    object hvd_repKOLI_P1: TIntegerField
      FieldName = 'KOLI_P1'
      Origin = '"H_VODA"."KOLI_P1"'
    end
    object hvd_repRASCH_NOR: TIBBCDField
      FieldName = 'RASCH_NOR'
      Origin = '"H_VODA"."RASCH_NOR"'
      Precision = 18
      Size = 4
    end
    object hvd_repPERE_DAY: TIntegerField
      FieldName = 'PERE_DAY'
      Origin = '"H_VODA"."PERE_DAY"'
    end
    object hvd_repPERE_RAZN: TIBBCDField
      FieldName = 'PERE_RAZN'
      Origin = '"H_VODA"."PERE_RAZN"'
      Precision = 18
      Size = 4
    end
    object hvd_repID_KONTR: TSmallintField
      FieldName = 'ID_KONTR'
      Origin = '"H_VODA"."ID_KONTR"'
    end
    object hvd_repUL: TIBStringField
      FieldName = 'UL'
      Origin = '"H_VODA"."UL"'
      Size = 70
    end
    object hvd_repN_DOM: TIBStringField
      FieldName = 'N_DOM'
      Origin = '"H_VODA"."N_DOM"'
      Size = 10
    end
    object hvd_repKV: TIBStringField
      FieldName = 'KV'
      Origin = '"H_VODA"."KV"'
      Size = 10
    end
    object hvd_repNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"H_VODA"."NOTE"'
      Size = 50
    end
    object hvd_repKOLI_F: TLargeintField
      FieldName = 'KOLI_F'
      Origin = '"H_VODA"."KOLI_F"'
    end
    object hvd_repPOD: TIntegerField
      FieldName = 'POD'
      Origin = '"H_VODA"."POD"'
    end
    object hvd_repSCH_RAZN2: TIBBCDField
      FieldName = 'SCH_RAZN2'
      Origin = '"H_VODA"."SCH_RAZN2"'
      Precision = 18
      Size = 4
    end
    object hvd_repRASCH_NOTE: TIBStringField
      FieldName = 'RASCH_NOTE'
      Origin = '"H_VODA"."RASCH_NOTE"'
      Size = 50
    end
    object hvd_repDATE_POK: TDateField
      FieldName = 'DATE_POK'
      Origin = '"H_VODA"."DATE_POK"'
    end
    object hvd_repVID_POK: TIntegerField
      FieldName = 'VID_POK'
      Origin = '"H_VODA"."VID_POK"'
    end
    object hvd_repKUB_MES: TIBBCDField
      FieldName = 'KUB_MES'
      Origin = '"H_VODA"."KUB_MES"'
      Precision = 18
      Size = 4
    end
    object hvd_repLICH_POV: TDateField
      FieldName = 'LICH_POV'
      Origin = '"H_VODA"."LICH_POV"'
    end
    object hvd_repORG: TIntegerField
      FieldName = 'ORG'
      Origin = '"H_VODA"."ORG"'
    end
    object hvd_repVID_RN: TIntegerField
      FieldName = 'VID_RN'
      Origin = '"H_VODA"."VID_RN"'
    end
    object hvd_repFILTR: TIntegerField
      FieldName = 'FILTR'
      Origin = '"H_VODA"."FILTR"'
    end
    object hvd_repPOMPA: TIntegerField
      FieldName = 'POMPA'
      Origin = '"H_VODA"."POMPA"'
    end
    object hvd_repZN_LICH: TIntegerField
      FieldName = 'ZN_LICH'
      Origin = '"H_VODA"."ZN_LICH"'
    end
    object hvd_repZNOLD_LICH: TIntegerField
      FieldName = 'ZNOLD_LICH'
      Origin = '"H_VODA"."ZNOLD_LICH"'
    end
    object hvd_repDATE_ZN: TDateField
      FieldName = 'DATE_ZN'
      Origin = '"H_VODA"."DATE_ZN"'
    end
    object hvd_repLICH_TO: TIntegerField
      FieldName = 'LICH_TO'
      Origin = '"H_VODA"."LICH_TO"'
    end
    object hvd_repKLNTAR: TIntegerField
      FieldName = 'KLNTAR'
      Origin = '"H_VODA"."KLNTAR"'
    end
    object hvd_repTARIF_NAME: TIBStringField
      FieldName = 'TARIF_NAME'
      Origin = '"H_VODA"."TARIF_NAME"'
      Size = 50
    end
    object hvd_repNORMA: TFloatField
      FieldName = 'NORMA'
      Origin = '"H_VODA"."NORMA"'
    end
    object hvd_repDEL_NORM: TFloatField
      FieldName = 'DEL_NORM'
      Origin = '"H_VODA"."DEL_NORM"'
    end
    object hvd_repPREV_NORM: TFloatField
      FieldName = 'PREV_NORM'
      Origin = '"H_VODA"."PREV_NORM"'
    end
    object hvd_repOLD_NORM: TFloatField
      FieldName = 'OLD_NORM'
      Origin = '"H_VODA"."OLD_NORM"'
    end
    object hvd_repLICH_YEARMON: TIntegerField
      FieldName = 'LICH_YEARMON'
      Origin = '"H_VODA"."LICH_YEARMON"'
    end
    object hvd_repEDRPOU: TIntegerField
      FieldName = 'EDRPOU'
      Origin = '"H_VODA"."EDRPOU"'
    end
    object hvd_repKL_UL: TIntegerField
      FieldName = 'KL_UL'
      Origin = '"H_VODA"."KL_UL"'
    end
    object hvd_repR_NACH: TIBStringField
      FieldName = 'R_NACH'
      Origin = '"H_VODA"."R_NACH"'
      Size = 100
    end
    object hvd_repNORM_BLICH: TFloatField
      FieldName = 'NORM_BLICH'
      Origin = '"H_VODA"."NORM_BLICH"'
    end
    object hvd_repKUB_NOBALANS: TFloatField
      FieldName = 'KUB_NOBALANS'
      Origin = '"H_VODA"."KUB_NOBALANS"'
    end
    object hvd_repKUB_ALL: TFloatField
      FieldName = 'KUB_ALL'
      Origin = '"H_VODA"."KUB_ALL"'
    end
    object hvd_repPLOSCH_UR: TFloatField
      FieldName = 'PLOSCH_UR'
      Origin = '"H_VODA"."PLOSCH_UR"'
    end
    object hvd_repPERERAH: TFloatField
      FieldName = 'PERERAH'
      Origin = '"H_VODA"."PERERAH"'
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
  object qry2: TIBQuery
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = qry2BeforeOpen
    Left = 160
    Top = 274
  end
  object lich: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = IBTransactionScript
    BeforeOpen = propBeforeOpen
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
      '  DATA_POV,'
      '  N_INPLOMB,'
      '  N_MGPLOMB,'
      '  DATA_INP,'
      '  DATA_MGP,'
      '  DATA_ZN,'
      '  NOTE,'
      '  VID_ZN,'
      '  DATA_VIG,'
      '  DATA_STPOV'
      'from LICH '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from LICH where schet=:sch and DATA_ZN is null ')
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
    Left = 616
    Top = 336
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
end
