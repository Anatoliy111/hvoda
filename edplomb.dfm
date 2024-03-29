inherited FormEdPlomb: TFormEdPlomb
  Left = 384
  Top = 225
  BorderStyle = bsDialog
  Caption = 'FormEdPlomb'
  ClientHeight = 184
  ClientWidth = 288
  Position = poDesktopCenter
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 288
    Height = 158
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
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
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1KL: TcxGridDBColumn
        DataBinding.FieldName = 'KL'
        Visible = False
      end
      object cxGrid1DBTableView1NAIM: TcxGridDBColumn
        DataBinding.FieldName = 'NAIM'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object IBDataSet1: TIBDataSet
    Database = MainForm.IBDatabase
    Transaction = MainForm.IBTransaction1
    BeforeDelete = IBDataSet1BeforeDelete
    BufferChunks = 1000
    CachedUpdates = False
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
      'select KL, NAIM from PLOMB')
    ModifySQL.Strings = (
      'update PLOMB'
      'set'
      '  KL = :KL,'
      '  NAIM = :NAIM'
      'where'
      '  KL = :OLD_KL')
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_PLOMB_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 200
    Top = 72
    object IBDataSet1KL: TIntegerField
      FieldName = 'KL'
      Origin = 'PLOMB.KL'
      Required = True
    end
    object IBDataSet1NAIM: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072
      FieldName = 'NAIM'
      Origin = 'PLOMB.NAIM'
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Left = 240
    Top = 72
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        Caption = 'Custom 1'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 278
        FloatTop = 299
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarButton1
            Visible = True
          end
          item
            Item = dxBarButton3
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton2
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.Kind = lfOffice11
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 232
    Top = 16
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarButton1: TdxBarButton
      Caption = #1042' Excel'
      Category = 0
      Hint = #1042' Excel'
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
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FF000000FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000000000000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF000000000000000000FFFFFF00000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000000000FF000000FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Category = 0
      Hint = #1047#1072#1082#1088#1080#1090#1080
      Visible = ivAlways
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        2000000000004006000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B007B7B7B007B7B
        7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD00FFFF
        FF00BDBDBD00FFFFFF00BDBDBD007B7B7B00BDBDBD00FF00FF00FF00FF007B00
        00007B0000007B0000007B0000007B00000000000000000000007B7B7B007B7B
        7B007B7B7B00FFFFFF00FFFFFF00FFFFFF007B0000007B0000007B0000007B00
        00007B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B00
        0000FF00FF007B007B000000000000000000BDBDBD00FFFFFF00FFFFFF00FFFF
        FF007B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B0000007B007B00FF00FF007B007B000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B00
        0000FF00FF007B007B00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF007B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B0000007B007B00FF00FF007B007B000000
        0000FFFFFF00FFFF0000FFFFFF00FFFF00007B000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B00
        0000FF00FF007B007B00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF007B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B0000007B007B00FF00FF007B007B000000
        0000FFFFFF00FFFF0000FFFFFF00FFFF00007B000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B00
        0000FF00FF007B007B00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF007B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B0000007B007B00FF00FF007B007B000000
        0000FFFFFF00FFFF0000FFFFFF00FFFF00007B000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B00
        0000FF00FF007B007B00FF00FF0000000000FFFF0000FFFFFF00FFFF0000FFFF
        FF007B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B0000007B007B00FF00FF007B007B000000
        0000FFFFFF00FFFF0000FFFFFF00FFFF00007B000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B00
        0000FF00FF007B007B00FF00FF0000000000FFFF0000FFFFFF00FFFF0000FFFF
        FF007B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B0000007B0000007B0000007B0000007B00
        00007B0000007B0000007B0000007B0000007B000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000FF000000FF000000FF000000FF000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = '                      '
      Category = 0
      Hint = '                      '
      Visible = ivAlways
    end
  end
end
