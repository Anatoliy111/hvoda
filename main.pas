unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBCustomDataSet, IBDatabase,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPropertiesStore, ActnList, StdActns, ImgList, dxBar, dxBarExtItems,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCheckComboBox,
  cxDropDownEdit, cxCheckBox, cxCurrencyEdit, cxLookAndFeels, cxSpinEdit,
  cxImageComboBox, dxBarExtDBItems, inifiles, IBServices,cxGridExportLink,
  cxCalc, frxClass, frxDBSet, IBQuery, ExtCtrls, frxDMPExport, frxDesgn,cxNavigator,
  cxPC, frxExportPDF, frxExportRTF, frxExportXML, cxSplitter,
  cxLookAndFeelPainters, dxSkinsCore, cxButtonEdit, cxDBLookupComboBox;

type
  TMainForm = class(TForm)
    BarManager: TdxBarManager;
    dxBarButtonExit: TdxBarLargeButton;
    ActionList1: TActionList;
    ImageList1: TImageList;
    IBDatabase: TIBDatabase;
    IBTransaction1: TIBTransaction;
    hvd: TIBDataSet;
    hvdSource: TDataSource;
    hvdDOM: TIBStringField;
    hvdKL: TIntegerField;
    hvdKOLI_P: TIBBCDField;
    hvdNOR_RAZN: TIBBCDField;
    hvdSCH_CUR: TIBBCDField;
    hvdSCH_OLD: TIBBCDField;
    hvdSCH_RAZN: TIBBCDField;
    hvdSCHET: TIBStringField;
    hvdKVART: TIBStringField;
    hvdPLOMB: TSmallintField;
    hvdFIO: TIBStringField;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    ActionEdCalcs: TAction;
    dxBarButton2: TdxBarButton;
    hvdWID: TSmallintField;
    dom: TIBDataSet;
    domSource: TDataSource;
    IBBackupService1: TIBBackupService;
    dxBarLookupCombo1: TdxBarLookupCombo;
    domDOM: TIBStringField;
    domKL: TIntegerField;
    ActionExport: TAction;
    ActionExit: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    prop: TIBDataSet;
    propSource: TDataSource;
    propDD: TSmallintField;
    propKL: TIntegerField;
    propKOLI: TSmallintField;
    propSCHET: TIBStringField;
    propYEARMON: TIntegerField;
    ActionCalc: TAction;
    domYEARMON: TIntegerField;
    hvdYEARMON: TIntegerField;
    frxDBDataset1: TfrxDBDataset;
    grp: TIBDataSet;
    grpSource: TDataSource;
    Timer1: TTimer;
    dxBarLargeButton3: TdxBarLargeButton;
    ActionPrint: TAction;
    frxDesigner1: TfrxDesigner;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    hvd_rep: TIBDataSet;
    ActionPrintTotal: TAction;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxBarDockControl1: TdxBarDockControl;
    cxTabSheet2: TcxTabSheet;
    dxBarDockControl2: TdxBarDockControl;
    cxTabSheet3: TcxTabSheet;
    dxBarDockControl3: TdxBarDockControl;
    cxGrid2: TcxGrid;
    DBGrid1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    DBGrid2: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxGrid4: TcxGrid;
    DBGrid3: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    DBGrid1DOM: TcxGridDBBandedColumn;
    DBGrid1GRP_RAZN: TcxGridDBBandedColumn;
    DBGrid1KL: TcxGridDBBandedColumn;
    DBGrid1KOLI_P: TcxGridDBBandedColumn;
    DBGrid1NOR_RAZN: TcxGridDBBandedColumn;
    DBGrid1SCH_CUR: TcxGridDBBandedColumn;
    DBGrid1SCH_OLD: TcxGridDBBandedColumn;
    DBGrid1SCH_RAZN: TcxGridDBBandedColumn;
    DBGrid1SCHET: TcxGridDBBandedColumn;
    DBGrid1KVART: TcxGridDBBandedColumn;
    DBGrid1PLOMB: TcxGridDBBandedColumn;
    DBGrid1FIO: TcxGridDBBandedColumn;
    DBGrid1WID: TcxGridDBBandedColumn;
    DBGrid1YEARMON: TcxGridDBBandedColumn;
    dxBarButton6: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    DBGrid3NOTE: TcxGridDBColumn;
    propNOTE: TIBStringField;
    DBGrid2DD: TcxGridDBColumn;
    DBGrid2KL: TcxGridDBColumn;
    DBGrid2KOLI: TcxGridDBColumn;
    DBGrid2SCHET: TcxGridDBColumn;
    DBGrid2YEARMON: TcxGridDBColumn;
    DBGrid2NOTE: TcxGridDBColumn;
    data: TIBDataSet;
    dataYEARMON: TIntegerField;
    dataNORMA_HVD: TIBBCDField;
    dataym: TStringField;
    DataSource: TDataSource;
    dxBarButton8: TdxBarButton;
    frxReport3: TfrxReport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    dxBarLookupCombo2: TdxBarLookupCombo;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    hvd_repDOM: TIBStringField;
    hvd_repGRP_RAZN: TIBBCDField;
    hvd_repKL: TIntegerField;
    hvd_repKOLI_P: TIBBCDField;
    hvd_repNOR_RAZN: TIBBCDField;
    hvd_repSCH_CUR: TIBBCDField;
    hvd_repSCH_OLD: TIBBCDField;
    hvd_repSCH_RAZN: TIBBCDField;
    hvd_repSCHET: TIBStringField;
    hvd_repKVART: TIBStringField;
    hvd_repPLOMB: TSmallintField;
    hvd_repFIO: TIBStringField;
    hvd_repWID: TSmallintField;
    hvd_repYEARMON: TIntegerField;
    Panel1: TPanel;
    hvdGRP_RAZN: TIBBCDField;
    plombSource: TDataSource;
    plomb: TIBDataSet;
    plombKL: TIntegerField;
    plombNAIM: TIBStringField;
    hvdnplomb: TStringField;
    DBGrid1NPLOMB: TcxGridDBBandedColumn;
    dxBarButton11: TdxBarButton;
    frxReport2: TfrxReport;
    hvdPERE_DAY: TIntegerField;
    hvdPERE_RAZN: TIBBCDField;
    DBGrid1PERE_DAY: TcxGridDBBandedColumn;
    DBGrid1PERE_RAZN: TcxGridDBBandedColumn;
    frxReport1: TfrxReport;
    hvd_repPERE_DAY: TIntegerField;
    hvd_repPERE_RAZN: TIBBCDField;
    hvdN_SCH: TIBStringField;
    DBGrid1n_sch: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    DBGrid1Column1: TcxGridDBBandedColumn;
    hvdUL: TIBStringField;
    hvdN_DOM: TIBStringField;
    hvdKV: TIBStringField;
    hvdID_KONTR: TSmallintField;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    hvdall: TIBDataSet;
    hvdallSource: TDataSource;
    hvdallKL: TIntegerField;
    hvdallYEARMON: TIntegerField;
    hvdallPLOMB: TSmallintField;
    hvdallFIO: TIBStringField;
    hvdallWID: TSmallintField;
    hvdallDOM: TIBStringField;
    hvdallKVART: TIBStringField;
    hvdallSCHET: TIBStringField;
    hvdallN_SCH: TIBStringField;
    hvdallSCH_OLD: TIBBCDField;
    hvdallSCH_CUR: TIBBCDField;
    hvdallSCH_RAZN: TIBBCDField;
    hvdallKOLI_P: TIBBCDField;
    hvdallKOLI_P0: TIntegerField;
    hvdallKOLI_P1: TIntegerField;
    hvdallNOR_RAZN: TIBBCDField;
    hvdallGRP_RAZN: TIBBCDField;
    hvdallPERE_DAY: TIntegerField;
    hvdallPERE_RAZN: TIBBCDField;
    hvdallID_KONTR: TSmallintField;
    hvdallUL: TIBStringField;
    hvdallN_DOM: TIBStringField;
    hvdallKV: TIBStringField;
    DBGrid1UL: TcxGridDBBandedColumn;
    DBGrid1N_DOM: TcxGridDBBandedColumn;
    DBGrid1KV: TcxGridDBBandedColumn;
    frxDBDataset2: TfrxDBDataset;
    hvd3: TIBDataSet;
    hvd3Source: TDataSource;
    hvd12: TIBDataSet;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    SmallintField4: TSmallintField;
    IBStringField9: TIBStringField;
    SmallintField5: TSmallintField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    IBBCDField11: TIBBCDField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IBBCDField12: TIBBCDField;
    IBBCDField13: TIBBCDField;
    IntegerField10: TIntegerField;
    IBBCDField14: TIBBCDField;
    SmallintField6: TSmallintField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    hvd12Source: TDataSource;
    hvd3SCHET: TIBStringField;
    hvd3SRAZN: TIBBCDField;
    hvd3SNORM: TIBBCDField;
    hvdSRAZN3: TIBBCDField;
    hvdSNORM3: TIBBCDField;
    hvdSRAZN12: TIBBCDField;
    hvdSRED: TIBBCDField;
    hvdKOL: TLargeintField;
    hvdSREDKOL: TIBBCDField;
    DBGrid1SRAZN3: TcxGridDBBandedColumn;
    DBGrid1SRAZN12: TcxGridDBBandedColumn;
    DBGrid1SREDKOL: TcxGridDBBandedColumn;
    hvdNOTE: TIBStringField;
    DBGrid1NOTE: TcxGridDBBandedColumn;
    hvdallNOTE: TIBStringField;
    hvdallKOLI_F: TLargeintField;
    DBGrid1KOLI_F: TcxGridDBBandedColumn;
    hvdKOLI_F: TLargeintField;
    hvd_repKOLI_F: TLargeintField;
    DBGrid3DOM: TcxGridDBColumn;
    DBGrid3POD: TcxGridDBColumn;
    DBGrid3SCH_OLD: TcxGridDBColumn;
    DBGrid3SCH_CUR: TcxGridDBColumn;
    DBGrid3SCH_RAZN: TcxGridDBColumn;
    hvdPOD: TIntegerField;
    hvdRASCH_KUB: TIBBCDField;
    DBGrid1POD: TcxGridDBBandedColumn;
    DBGrid1RASCH_KUB: TcxGridDBBandedColumn;
    DBGrid3NORMA: TcxGridDBColumn;
    hvdRASCH_NOR: TIBBCDField;
    DBGrid1RASCH_NOR: TcxGridDBBandedColumn;
    hvdallRASCH_KUB: TIBBCDField;
    hvdallRASCH_NOR: TIBBCDField;
    hvdallPOD: TIntegerField;
    DBGrid3SCH_KUB: TcxGridDBColumn;
    DBGrid3SCH_FACT: TcxGridDBColumn;
    grpKL: TIntegerField;
    grpYEARMON: TIntegerField;
    grpDOM: TIBStringField;
    grpPOD: TIntegerField;
    grpSCH0: TIBStringField;
    grpSCH1: TIBStringField;
    grpSCH_OLD: TIBBCDField;
    grpSCH_CUR: TIBBCDField;
    grpSCH_FACT: TIBBCDField;
    grpNORMA: TIBBCDField;
    grpRAZN: TIBBCDField;
    grpNOTE: TIBStringField;
    grpSCH_KUB: TIBBCDField;
    grpSCH_RAZN: TIBBCDField;
    grpNORMA_BL: TIBBCDField;
    DBGrid3NORMA_BL: TcxGridDBColumn;
    hvdRASCH_NOTE: TIBStringField;
    hvdallRASCH_NOTE: TIBStringField;
    DBGrid1RASCH_NOTE: TcxGridDBBandedColumn;
    DBGrid1SRED: TcxGridDBBandedColumn;
    grpSCH_FOP: TIBBCDField;
    DBGrid3SCH_FOP: TcxGridDBColumn;
    pokaznSource: TDataSource;
    pokazn: TIBDataSet;
    pokaznID: TIntegerField;
    pokaznYEARMON: TIntegerField;
    pokaznPOKAZN: TIBBCDField;
    pokaznDATE_POK: TDateField;
    pokaznVID_POK: TIntegerField;
    pokaznN_DOC: TIntegerField;
    pokaznDATE_ZN: TDateField;
    pokaznVID_ZN: TIntegerField;
    pokaznSCHET: TIBStringField;
    lichznDataSource: TDataSource;
    lichzn: TIBDataSet;
    lichDataSource: TDataSource;
    lich: TIBDataSet;
    plombsznDataSource: TDataSource;
    plombszn: TIBDataSet;
    IntegerField3: TIntegerField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    DateField7: TDateField;
    DateField8: TDateField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    plombsDataSource: TDataSource;
    plombs: TIBDataSet;
    plombsID: TIntegerField;
    plombsSCHET: TIBStringField;
    plombsVID_PLOMB: TIBStringField;
    plombsDATE_VS: TDateField;
    plombsDATE_ZN: TDateField;
    plombsNOTE: TIBStringField;
    plombsN_PLOMB: TIBStringField;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    lichID: TIntegerField;
    lichSCHET: TIBStringField;
    lichTIP: TIBStringField;
    lichN_LICH: TIBStringField;
    lichDATA_VIP: TDateField;
    lichDATA_POV: TDateField;
    lichN_INPLOMB: TIBStringField;
    lichN_MGPLOMB: TIBStringField;
    lichDATA_INP: TDateField;
    lichDATA_MGP: TDateField;
    lichDATA_ZN: TDateField;
    lichNOTE: TIBStringField;
    lichVID_ZN: TIntegerField;
    lichDATA_VIG: TDateField;
    hvdDATE_POK: TDateField;
    hvdVID_POK: TIntegerField;
    pokaznID_LICH: TIntegerField;
    plombsVID_ZN: TIntegerField;
    plombsVID_PL: TIntegerField;
    plombsPL: TIBStringField;
    plombsZN2: TIBStringField;
    plombsznVID_ZN: TIntegerField;
    plombsznVID_PL: TIntegerField;
    plombsznPL: TIBStringField;
    plombsznZN: TIBStringField;
    pokaznPK: TIBStringField;
    pokaznZN: TIBStringField;
    lichznID: TIntegerField;
    lichznSCHET: TIBStringField;
    lichznTIP: TIBStringField;
    lichznN_LICH: TIBStringField;
    lichznDATA_VIP: TDateField;
    lichznDATA_POV: TDateField;
    lichznN_INPLOMB: TIBStringField;
    lichznN_MGPLOMB: TIBStringField;
    lichznDATA_INP: TDateField;
    lichznDATA_MGP: TDateField;
    lichznDATA_ZN: TDateField;
    lichznNOTE: TIBStringField;
    lichznVID_ZN: TIntegerField;
    lichznDATA_VIG: TDateField;
    lichznZN: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KOLI_PPropertiesPopup(Sender: TObject);
    procedure DBGrid1KOLI_PPropertiesCloseUp(Sender: TObject);
    procedure ActionEdCalcsExecute(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure DBGrid1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure DBGrid1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure dxBarLookupCombo2KeyValueChange(Sender: TObject);
    procedure hvdBeforeOpen(DataSet: TDataSet);
    procedure IBDatabaseBeforeConnect(Sender: TObject);
    procedure ActionExportExecute(Sender: TObject);
    procedure ActionExitExecute(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure propDDSetText(Sender: TField; const Text: String);
    procedure propKOLISetText(Sender: TField; const Text: String);
    procedure domBeforeOpen(DataSet: TDataSet);
    procedure hvdNewRecord(DataSet: TDataSet);
    procedure hvdBeforePost(DataSet: TDataSet);
    procedure grpBeforeOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure grpNewRecord(DataSet: TDataSet);
    procedure ActionPrintExecute(Sender: TObject);
    procedure hvdSCH_CURValidate(Sender: TField);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure ActionPrintTotalExecute(Sender: TObject);
    procedure hvd_repBeforeOpen(DataSet: TDataSet);
    procedure hvdAfterPost(DataSet: TDataSet);
    procedure cxPageControl1PageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dataCalcFields(DataSet: TDataSet);
    procedure dataAfterOpen(DataSet: TDataSet);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure hvdPERE_DAYValidate(Sender: TField);
    procedure DBGrid1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lichNewRecord(DataSet: TDataSet);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure hvdallBeforeOpen(DataSet: TDataSet);
    procedure hvdSCH_RAZNValidate(Sender: TField);
    procedure hvdWIDChange(Sender: TField);
    procedure hvdSCH_CURChange(Sender: TField);
    procedure hvdWIDValidate(Sender: TField);
    procedure hvd3BeforeOpen(DataSet: TDataSet);
    procedure hvd12BeforeOpen(DataSet: TDataSet);
    procedure DBGrid1WIDPropertiesChange(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
  private
    { Private declarations }
    schet:string;
    procedure execSql(s:string);
  public
    { Public declarations }
    lchSQL,lchznSQL,plSQL,plznSQL,pokSQL:string;
    PathKvart:string;
    iniFile:TIniFile;
    period:integer;
    function curYM:integer;
    function isArchive:boolean;
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');

  end;

var
  MainForm: TMainForm;


implementation

uses inpedpro, edexpr, import, mytools, itoghvd,ComObj,dbf,dbf_lang,
  edplomb, kart, lichall, iimport, sprzn;

{$R *.dfm}

function TMainForm.isArchive:boolean;
begin
  result := data.RecNo<>1;  
end;

procedure TMainForm.lichNewRecord(DataSet: TDataSet);
begin
 lich.edit;
 lichSCHET.Value:=hvdSCHET.Value;
 lich.post;
end;

function TMainForm.curYM:integer;
begin
  result:=dataYEARMON.Value;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var kk:Currency;
begin

  IBdatabase.Connected:=true;
  IBTransaction1.Active:=true;
  data.Open;
  lich.Open;
  lchSQL:=lich.SelectSQL.Text;
  lichzn.Open;
  lchznSQL:=lichzn.SelectSQL.Text;
  dom.Open;
  dxBarLookupCombo1.KeyValue:=domDOM.AsString;

  hvd.Open;
  prop.Open;
  grp.Open;
  plombs.Open;
  pokazn.Open;
//  dbgrid1.DataController.Groups.FullExpand;

  plSQL:=plombs.SelectSQL.Text;
  pokSQL:=pokazn.SelectSQL.Text;
  plombszn.Open;
  plznSQL:=plombszn.SelectSQL.Text;
  period:=dataYEARMON.Value;

  cxPageControl1.ActivePage:=cxTabSheet1;
  ActiveControl:=cxGrid2;
end;

procedure TMainForm.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
begin
  sd:=TSaveDialog.Create(application);
  try
    if FileName='Table.xls' then
    begin
      DateTimeToString(Filename,'mmddhhmm',now);
      Filename:='TBL_'+Filename+'.xls'
    end;
    sd.FileName := Filename;
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;

  ExportGridToExcel(filename, AGrid,true,true,true);

  try
    Excel := CreateOLEObject('Excel.Application');
    Excel.Visible := True;
    Excel.WorkBooks.Open(FileName);
  except
  end;


end;

procedure TMainForm.DBGrid1EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
    if not DBGrid1.DataController.DataSet.Eof then Key:=VK_DOWN;
end;

procedure TMainForm.DBGrid1KOLI_PPropertiesPopup(Sender: TObject);
begin
  formInplaces.onPopupProp;
end;

procedure TMainForm.DBGrid1KOLI_PPropertiesCloseUp(Sender: TObject);
begin
  formInplaces.onCloseupProp;
end;

procedure TMainForm.ActionEdCalcsExecute(Sender: TObject);
begin
  if InputBox('пароль', '', '')=IniFile.ReadString('Security', 'EdCalcs', #0) then FormEdExpr.ShowModal;
end;

procedure TMainForm.dxBarButton2Click(Sender: TObject);
begin
    if InputBox('пароль', '', '')=IniFile.ReadString('Security', 'Import', #0) then Form1.showmodal;
end;

procedure TMainForm.DBGrid1Column1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     Form2.Find();
     Form2.Show;
end;

procedure TMainForm.DBGrid1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var i:integer;
begin
//  if AViewInfo.Selected then exit;

//  if vartype(AViewInfo.GridRecord.Values[DBGrid1PLOMB.Index])=varNull then i:=0
//  else i:=AViewInfo.GridRecord.Values[DBGrid1PLOMB.Index];

//  if i<>0 then
//  begin
//    ACanvas.Canvas.Brush.Style := bsSolid;
//    ACanvas.Canvas.Brush.Color := clSilver;//  $00F7EAD9;
//  end;

{  if AViewInfo.Selected then exit;

  if AViewInfo.GridRecord.Values[DBGrid1WID.Index]=1 then
  if //(AViewInfo.Item.Index = DBGrid1KOLI_P.Index) or
     (AViewInfo.Item.Index = DBGrid1GRP_RAZN.Index) or
     (AViewInfo.Item.Index = DBGrid1NOR_RAZN.Index)then
  begin
    ACanvas.Canvas.Brush.Style := bsSolid;
    ACanvas.Canvas.Brush.Color := clGray;//  $00F7EAD9;
  end;

  if AViewInfo.GridRecord.Values[DBGrid1WID.Index]=2 then
  if (AViewInfo.Item.Index = DBGrid1SCH_CUR.Index) or
     (AViewInfo.Item.Index = DBGrid1SCH_OLD.Index) or
     (AViewInfo.Item.Index = DBGrid1GRP_RAZN.Index) or
     (AViewInfo.Item.Index = DBGrid1SCH_RAZN.Index)then
  begin
    ACanvas.Canvas.Brush.Style := bsSolid;
    ACanvas.Canvas.Brush.Color := clGray;//  $00F7EAD9;
  end;

  if AViewInfo.GridRecord.Values[DBGrid1WID.Index]=3 then
  if (AViewInfo.Item.Index = DBGrid1SCH_CUR.Index) or
     (AViewInfo.Item.Index = DBGrid1SCH_OLD.Index) or
     (AViewInfo.Item.Index = DBGrid1SCH_RAZN.Index) or
//     (AViewInfo.Item.Index = DBGrid1KOLI_P.Index) or
     (AViewInfo.Item.Index = DBGrid1NOR_RAZN.Index)then
  begin
    ACanvas.Canvas.Brush.Style := bsSolid;
    ACanvas.Canvas.Brush.Color := clGray;//  $00F7EAD9;
  end;}
end;

procedure TMainForm.DBGrid1Editing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
var AViewInfo: TcxCustomGridTableViewInfo;
var i:integer;

begin
 // if vartype(Sender.Items[DBGrid1PLOMB.Index].EditValue)=varNull then i:=0
 // else i:=Sender.Items[DBGrid1PLOMB.Index].EditValue;

 // if i<>0 then
 // if (AItem.Index = DBGrid1SCH_CUR.Index) or
  //   (AItem.Index = DBGrid1SCH_OLD.Index) or
    // (AItem.Index = DBGrid1KOLI_P.Index) or
   //  (AItem.Index = DBGrid1GRP_RAZN.Index) or
   //  (AItem.Index = DBGrid1SCH_RAZN.Index) or
   //  (AItem.Index = DBGrid1NOR_RAZN.Index) then AAllow:=false;

//  Sender.Items[DBGrid1WID.Index].EditValue=1

//  AItem.Index

{  if Sender.Items[DBGrid1WID.Index].EditValue=1 then
  if //(AItem.Index = DBGrid1KOLI_P.Index) or
     (AItem.Index = DBGrid1GRP_RAZN.Index) or
     (AItem.Index = DBGrid1NOR_RAZN.Index)then
  begin
    AAllow:=false;
  end;

  if Sender.Items[DBGrid1WID.Index].EditValue=2 then
  if (AItem.Index = DBGrid1SCH_CUR.Index) or
     (AItem.Index = DBGrid1SCH_OLD.Index) or
     (AItem.Index = DBGrid1GRP_RAZN.Index) or
     (AItem.Index = DBGrid1SCH_RAZN.Index)then
  begin
    AAllow:=false;
  end;

  if Sender.Items[DBGrid1WID.Index].EditValue=3 then
  if (AItem.Index = DBGrid1SCH_CUR.Index) or
     (AItem.Index = DBGrid1SCH_OLD.Index) or
     (AItem.Index = DBGrid1SCH_RAZN.Index) or
//     (AItem.Index = DBGrid1KOLI_P.Index) or
     (AItem.Index = DBGrid1NOR_RAZN.Index)then
  begin
    AAllow:=false;
  end;
}
end;

procedure TMainForm.dxBarLookupCombo2KeyValueChange(Sender: TObject);
begin
  if hvd.State in [dsInsert,dsEdit] then hvd.Post;
  if cxPageControl1.ActivePage=cxTabSheet1 then hvd.Close
  else if cxPageControl1.ActivePage=cxTabSheet2 then prop.close
  else if cxPageControl1.ActivePage=cxTabSheet3 then grp.close;


  if cxPageControl1.ActivePage=cxTabSheet1 then hvd.open
  else if cxPageControl1.ActivePage=cxTabSheet2 then prop.open
  else if cxPageControl1.ActivePage=cxTabSheet3 then grp.open;

  if isArchive then
  begin
    dxBarButton6.Enabled:=false;
    DBGrid1.OptionsData.Deleting:=false;
    DBGrid1.OptionsData.Editing:=false;
    DBGrid1.OptionsData.Inserting:=false;

    DBGrid2.OptionsData.Deleting:=false;
    DBGrid2.OptionsData.Editing:=false;
    DBGrid2.OptionsData.Inserting:=false;

    DBGrid3.OptionsData.Deleting:=false;
    DBGrid3.OptionsData.Editing:=false;
    DBGrid3.OptionsData.Inserting:=false;
  end
  else
  begin
    dxBarButton6.Enabled:=true;
    DBGrid1.OptionsData.Deleting:=true;
    DBGrid1.OptionsData.Editing:=true;
    DBGrid1.OptionsData.Inserting:=true;

    DBGrid2.OptionsData.Deleting:=true;
    DBGrid2.OptionsData.Editing:=true;
    DBGrid2.OptionsData.Inserting:=true;

    DBGrid3.OptionsData.Deleting:=true;
    DBGrid3.OptionsData.Editing:=true;
    DBGrid3.OptionsData.Inserting:=true;
  end;
end;

procedure TMainForm.hvdBeforeOpen(DataSet: TDataSet);
begin
  hvd.ParamByName('yearmon').AsInteger:=CurYM;
  hvd.ParamByName('dom').AsString:=dxBarLookupCombo1.Text;

  if dxBarLookupCombo1.Enabled then
    hvd.ParamByName('all').asInteger:=0
  else
    hvd.ParamByName('all').asInteger:=1;
end;

procedure TMainForm.IBDatabaseBeforeConnect(Sender: TObject);
var s:string;
  p:integer;
begin

//  IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
//  s:=GetRegistryValue('Software\Microsoft\Windows\CurrentVersion','SystemRoot');
  try
    IBDatabase.Connected:=false;

    s:=ExtractFileName(ParamStr(0));
    s:=copy(s,1,length(s)-4);
    IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+s+'.ini');
    PathKvart:=iniFile.ReadString('DBF','base',extractfilepath(paramstr(0)));

    IBDatabase.DatabaseName:=IniFile.ReadString('Login', 'Database', ExtractFilePath(ParamStr(0))+'\gku.fdb');
    IBDatabase.Params.Clear;
    IBDatabase.Params.Add('user_name='+IniFile.ReadString('Login', 'Username', 'sysdba'));
    IBDatabase.Params.Add('password='+IniFile.ReadString('Login', 'Password', 'masterkey'));
    IBDatabase.Params.Add('lc_ctype=WIN1251');



    p:=pos(':',IBDatabase.DatabaseName);
    if (p=0) or (p=2) then
    begin
      IBBackupService1.DatabaseName:=IBDatabase.DatabaseName;
      IBBackupService1.ServerName:='';
      IBBackupService1.Protocol:=Local;
    end
    else
    begin
      IBBackupService1.DatabaseName:=copy(IBDatabase.DatabaseName,p+1,length(IBDatabase.DatabaseName));
      IBBackupService1.ServerName:=copy(IBDatabase.DatabaseName,1,p-1);
      IBBackupService1.Protocol:=TCP;
    end;

    IBBackupService1.Params.Clear;
    IBBackupService1.Params.Add('user_name='+IniFile.ReadString('Login', 'Username', 'sysdba'));
    IBBackupService1.Params.Add('password='+IniFile.ReadString('Login', 'Password', 'masterkey'));
    IBBackupService1.BackupFile.Clear;
    s:=IniFile.ReadString('Login', 'BackupDir', 'c:\');
    s:=s+'gku'+Date2Str(now)+'.gbk';
    IBBackupService1.BackupFile.add(s);

    if not FileExists(s) then
    try
      IBBackupService1.Attach;
      IBBackupService1.ServiceStart;
    except
    end;

  except
    on E: Exception do
      begin
        messagedlg('Проблемы с открытием базы данных. Зовите программиста ('+E.Message+')',mtError,[mbCancel],0);
        Application.Terminate;
      end;
  end;


end;

procedure TMainForm.ActionExportExecute(Sender: TObject);
begin
  if cxPageControl1.ActivePage=cxTabSheet1 then self.ExportGrid(cxGrid2)
  else if cxPageControl1.ActivePage=cxTabSheet2 then self.ExportGrid(cxGrid3)
  else if cxPageControl1.ActivePage=cxTabSheet3 then self.ExportGrid(cxGrid4);
end;

procedure TMainForm.ActionExitExecute(Sender: TObject);
begin
  close;
end;

procedure TMainForm.dxBarButton4Click(Sender: TObject);
begin
  if hvd.State in [dsInsert,dsEdit] then hvd.Post;
  StartWait;
  dxBarLookupCombo1.Enabled:=not dxBarButton4.down;
  hvd.Close;
  hvd.Open;
  StopWait;
end;

procedure TMainForm.propDDSetText(Sender: TField; const Text: String);
begin
  if (str2int(Text)<1) or (str2int(Text)>31) then
    Sender.AsInteger:=1
  else
    Sender.AsString:=Text;

end;

procedure TMainForm.propKOLISetText(Sender: TField; const Text: String);
begin
  if (str2int(Text)<-8) or (str2int(Text)>8) then
    Sender.AsInteger:=0
  else
    Sender.AsString:=Text;

end;

procedure TMainForm.domBeforeOpen(DataSet: TDataSet);
begin
  dom.ParamByName('yearmon').AsInteger:=CurYM;
end;

procedure TMainForm.hvdNewRecord(DataSet: TDataSet);
begin
  hvdYEARMON.Value:=CurYM;
  hvdWID.Value:=1;    // счетчик по умолчанию

    DBGrid1SCHET.Options.Editing:=true;
    DBGrid1FIO.Options.Editing:=true;
    DBGrid1n_sch.Options.Editing:=true;
    DBGrid1SCHET.Focused:=true;
end;

procedure TMainForm.hvdBeforePost(DataSet: TDataSet);
begin
  if hvdYEARMON.Value=0 then hvdYEARMON.Value:=CurYM;
 // if hvdPlomb.Value=1 then
 // begin
 //   hvdSCH_CUR.Value:=hvdSCH_OLD.Value;
 //   hvdGRP_RAZN.Value:=0;
 //   hvdNOR_RAZN.Value:=0;
 // end;

end;

procedure TMainForm.execSql(s:string);
var qry:TIBQuery;
begin
  qry:=TIBQuery.Create(self);
  try
    qry.Database:=IBDatabase;
    qry.Transaction:=IBTransaction1;

    qry.SQL.Clear;
    qry.SQL.Add(s);
    qry.ExecSQL;
  finally
    qry.Free;
  end;
end;

procedure TMainForm.grpBeforeOpen(DataSet: TDataSet);
begin
  grp.ParamByName('yearmon').AsInteger:=CurYM;

end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Interval:=20000;
//  IBTransaction1.CommitRetaining;
end;

procedure TMainForm.grpNewRecord(DataSet: TDataSet);
begin
  grpYEARMON.Value:=CurYM;

end;

procedure TMainForm.ActionPrintExecute(Sender: TObject);
begin
  hvd_rep.Open;

  if fileexists(ExtractFilePath(ParamStr(0))+'hvd_dm.fr3') then
    frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'hvd_dm.fr3')
  else
    frxReport1.SaveToFile(ExtractFilePath(ParamStr(0))+'hvd_dm.fr3');

  frxReport1.ShowReport;
  hvd_rep.Close;
end;

procedure TMainForm.hvdSCH_CURChange(Sender: TField);
begin
  if (hvdWID.Value<>1) then
  begin
    ShowMessage('Змініть вид на ЛІЧИЛЬНИК !!!');
//    hvdSCH_CUR.Value:=hvdSCH_OLD.Value;

    hvd.Cancel;
  end;
end;

procedure TMainForm.hvdSCH_CURValidate(Sender: TField);
begin

 // if (hvdPLOMB.Value=1) and (hvdSCH_CUR.Value<>hvdSCH_OLD.Value) then
//  begin
 //   ShowMessage('Вода опломбована, а є показання лічильника !!!');
 //   hvdSCH_CUR.Value:=hvdSCH_OLD.Value;

 //   abort;
//  end;


end;

procedure TMainForm.hvdSCH_RAZNValidate(Sender: TField);
begin
//  if (hvdWID.Value=2) then
//  begin
//    ShowMessage('Виставлена норма, змініть вид на лічильник!!!  Для відміни редагування натисніть ESC');
////    hvdSCH_CUR.Value:=hvdSCH_OLD.Value;
//
//    abort;
//  end;
end;

procedure TMainForm.hvdWIDChange(Sender: TField);
begin
//if (hvdWID.Value=2) then
//begin
//    if hvdSCH_CUR.Value<>hvdSCH_OLD.Value then
//    begin
//    ShowMessage('При зміні виду на норму показники будуть повернуті на початок!!!');
//    hvd.Edit;
//    hvdSCH_CUR.Value:=hvdSCH_OLD.Value;
//    hvd.Post;
//
//    end;
//
//end;
end;

procedure TMainForm.hvdWIDValidate(Sender: TField);
begin
//if (hvdWID.Value=2) then
//begin
//    if hvdSCH_CUR.Value<>hvdSCH_OLD.Value then
//    begin
//    ShowMessage('При зміні виду на норму показники будуть повернуті на початок!!!');
//    hvd.Edit;
//    hvdSCH_CUR.Value:=hvdSCH_OLD.Value;
//    hvd.Post;
//
//    end;
//
//end;
end;

procedure TMainForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_INSERT then abort;
end;

procedure TMainForm.DBGrid1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex=NBDI_INSERT then
  begin
    DBGrid1SCHET.Options.Editing:=true;
    DBGrid1FIO.Options.Editing:=true;
    DBGrid1n_sch.Options.Editing:=true;
    DBGrid1SCHET.Focused:=true;
//    ADone:=true;
  end;
  if AButtonIndex=NBDI_EDIT then
  begin
    DBGrid1SCHET.Options.Editing:=true;
    DBGrid1FIO.Options.Editing:=true;
    DBGrid1n_sch.Options.Editing:=true;
//    ADone:=true;
  end;
end;

procedure TMainForm.DBGrid1WIDPropertiesChange(Sender: TObject);
begin
//  hvd.Post;
end;

procedure TMainForm.ActionPrintTotalExecute(Sender: TObject);
begin
  hvd_rep.Open;

  if fileexists(ExtractFilePath(ParamStr(0))+'hvd_tot_dm.fr3') then
    frxReport2.LoadFromFile(ExtractFilePath(ParamStr(0))+'hvd_tot_dm.fr3')
  else
    frxReport2.SaveToFile(ExtractFilePath(ParamStr(0))+'hvd_tot_dm.fr3');

  frxReport2.ShowReport;
  hvd_rep.Close;
end;

procedure TMainForm.hvd_repBeforeOpen(DataSet: TDataSet);
begin
  hvd_rep.ParamByName('yearmon').AsInteger := CurYM;
end;

procedure TMainForm.hvd12BeforeOpen(DataSet: TDataSet);
begin
  hvdall.ParamByName('yearmon').AsInteger:=CurYM;
end;

procedure TMainForm.hvd3BeforeOpen(DataSet: TDataSet);
begin
 hvdall.ParamByName('yearmon').AsInteger:=CurYM;
end;

procedure TMainForm.hvdAfterPost(DataSet: TDataSet);
begin
  DBGrid1SCHET.Options.Editing:=false;
//  DBGrid1FIO.Options.Editing:=false;

end;

procedure TMainForm.hvdallBeforeOpen(DataSet: TDataSet);
begin
  hvdall.ParamByName('yearmon').AsInteger:=CurYM;
end;

procedure TMainForm.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if prop.State in [dsInsert,dsEdit] then prop.Post;
  if grp.State in [dsInsert,dsEdit] then grp.Post;
  if hvd.State in [dsInsert,dsEdit] then hvd.Post;

  if cxPageControl1.ActivePage=cxTabSheet1 then //hvd.Close
  else if cxPageControl1.ActivePage=cxTabSheet2 then prop.close
  else if cxPageControl1.ActivePage=cxTabSheet3 then grp.close;

  IBtransaction1.CommitRetaining;

  if NewPage=cxTabSheet1 then hvd.Open
  else if NewPage=cxTabSheet2 then prop.Open
  else if NewPage=cxTabSheet3 then grp.Open;

end;

procedure TMainForm.dxBarButton6Click(Sender: TObject);
var kl:integer;
  kk:double;
begin



   kl:=hvdKL.Value;
  if hvd.State in [dsInsert,dsEdit] then hvd.Post;
  IBtransaction1.CommitRetaining;
  StartWait;
  prop.Open;
  prop.First;

  hvd.DisableControls;
  Enabled:=false;
  try
    FormEdExpr.Exec('Calcs');
  finally
    StopWait;
    hvd.EnableControls;
    hvd.Close;
    hvd.Open;
    grp.Close;
    grp.Open;
    hvd.Locate('kl',kl,[]);
    Enabled:=true;
  end;

end;

procedure TMainForm.dxBarButton7Click(Sender: TObject);
begin
  FormItogHvd.ShowModal;
end;

procedure TMainForm.dataCalcFields(DataSet: TDataSet);
begin
  dataym.Value:=Date2Str(YearMon2Date(dataYearMon.Value),'yyyy MMMM');
end;

procedure TMainForm.dataAfterOpen(DataSet: TDataSet);
begin
  data.FetchAll;
  data.First;
  dxBarLookupCombo2.KeyValue:=dataYEARMON.Value;

end;

procedure TMainForm.dxBarButton8Click(Sender: TObject);
begin
  frxReport3.DesignReport;
end;

procedure TMainForm.dxBarButton9Click(Sender: TObject);
begin
  if application.MessageBox('Зроблені всі звіти ?','Підтвердження',MB_YESNO)<>IDYES then exit;
  if application.MessageBox('Закрити поточний період ?'+#13 +'Всі дані будуть збережені, в подальшому їх можливо буде тільки продивлятися, але не редагувати.','Підтвердження',MB_YESNO)<>IDYES then exit;

  timer1.Enabled:=false;
  try
    try
      execSQL('execute procedure proc_newmon');
      ibtransaction1.Commit;
    except
      ibtransaction1.Rollback;
    end;
  finally
    if not ibtransaction1.InTransaction then ibtransaction1.StartTransaction;
    data.Close;
    data.Open;
    Form4.ImKart;
    timer1.Enabled:=true;
  end;
end;

procedure TMainForm.dxBarButton10Click(Sender: TObject);
begin
  Application.ProcessMessages;
  IBtransaction1.CommitRetaining;
  StartWait;
  Enabled:=false;
  try
    FormEdExpr.Exec('Export','Export('''+
         IniFile.ReadString('Send', 'FileName', 'a:\hvd.dbf')+''')');
  finally
    StopWait;
    Enabled:=true;
  end;
end;

procedure TMainForm.dxBarButton11Click(Sender: TObject);
begin
  FormEdPlomb.showmodal;
  plomb.Close;
  plomb.Open;
end;

procedure TMainForm.dxBarButton12Click(Sender: TObject);
begin
Form4.ImKart;
end;

procedure TMainForm.dxBarButton13Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TMainForm.dxBarButton14Click(Sender: TObject);
begin
spr_zn.vidspr:='dellich';
spr_zn.Caption:=dxBarButton14.Caption;
spr_zn.Show;
end;

procedure TMainForm.dxBarButton15Click(Sender: TObject);
begin
spr_zn.vidspr:='delpl';
spr_zn.Caption:=dxBarButton15.Caption;
spr_zn.Show;
end;

procedure TMainForm.dxBarButton16Click(Sender: TObject);
begin
spr_zn.vidspr:='delpk';
spr_zn.Caption:=dxBarButton16.Caption;
spr_zn.Show;
end;

procedure TMainForm.dxBarButton17Click(Sender: TObject);
begin
spr_zn.vidspr:='addpk';
spr_zn.Caption:=dxBarButton17.Caption;
spr_zn.Show;
end;

procedure TMainForm.dxBarButton18Click(Sender: TObject);
begin
spr_zn.vidspr:='pl';
spr_zn.Caption:=dxBarButton18.Caption;
spr_zn.Show;
end;

procedure TMainForm.hvdPERE_DAYValidate(Sender: TField);
var val:double;
begin
  if hvd.State in [dsEdit,dsInsert] then
  begin
    if hvdPERE_DAY.IsNull then hvdPERE_RAZN.Clear
    else
    begin
      val:=0;
      val:=FormEdExpr.getCalcRes('Wozw',VarArrayOf([hvdSCHET.Value,hvdPERE_DAY.Value]));
      hvdPERE_RAZN.Value := val;
    end;
  end;
end;

end.
