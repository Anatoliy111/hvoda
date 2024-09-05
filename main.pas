unit main;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics, Controls, Forms,
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
  cxLookAndFeelPainters, dxSkinsCore, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, cxBarEditItem, cxLabel, Menus, StdCtrls, cxButtons, cxContainer,
  cxMemo, cxBlobEdit;

type
  TMainForm = class(TForm)
    BarManager: TdxBarManager;
    dxBarButtonExit: TdxBarLargeButton;
    ActionList1: TActionList;
    ImageList1: TImageList;
    IBDatabase: TIBDatabase;
    IBTransaction1: TIBTransaction;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    ActionEdCalcs: TAction;
    dxBarButton2: TdxBarButton;
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
    ActionCalc: TAction;
    domYEARMON: TIntegerField;
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
    cxTabSheet3: TcxTabSheet;
    dxBarDockControl3: TdxBarDockControl;
    cxGrid2: TcxGrid;
    DBGrid1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    DBGrid1DOM: TcxGridDBBandedColumn;
    DBGrid1KOLI_P: TcxGridDBBandedColumn;
    DBGrid1NOR_RAZN: TcxGridDBBandedColumn;
    DBGrid1SCH_CUR: TcxGridDBBandedColumn;
    DBGrid1SCH_OLD: TcxGridDBBandedColumn;
    DBGrid1SCH_RAZN: TcxGridDBBandedColumn;
    DBGrid1SCHET: TcxGridDBBandedColumn;
    DBGrid1FIO: TcxGridDBBandedColumn;
    DBGrid1WID: TcxGridDBBandedColumn;
    dxBarButton6: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
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
    plombSource: TDataSource;
    plomb: TIBDataSet;
    plombKL: TIntegerField;
    plombNAIM: TIBStringField;
    dxBarButton11: TdxBarButton;
    frxReport2: TfrxReport;
    frxReport1: TfrxReport;
    hvd_repPERE_DAY: TIntegerField;
    hvd_repPERE_RAZN: TIBBCDField;
    dxBarButton12: TdxBarButton;
    DBGrid1Column1: TcxGridDBBandedColumn;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    hvdall: TIBDataSet;
    hvdallSource: TDataSource;
    DBGrid1UL: TcxGridDBBandedColumn;
    DBGrid1N_DOM: TcxGridDBBandedColumn;
    DBGrid1KV: TcxGridDBBandedColumn;
    hvd3: TIBDataSet;
    hvd3Source: TDataSource;
    hvd12: TIBDataSet;
    hvd12Source: TDataSource;
    hvd3SCHET: TIBStringField;
    hvd3SRAZN: TIBBCDField;
    hvd3SNORM: TIBBCDField;
    DBGrid1NOTE: TcxGridDBBandedColumn;
    hvd_repKOLI_F: TLargeintField;
    pokaznSource: TDataSource;
    pokazn: TIBDataSet;
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
    plombsVID_ZN: TIntegerField;
    plombsVID_PL: TIntegerField;
    plombsPL: TIBStringField;
    plombsZN2: TIBStringField;
    plombsznVID_ZN: TIntegerField;
    plombsznVID_PL: TIntegerField;
    plombsznPL: TIBStringField;
    plombsznZN: TIBStringField;
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
    DBGrid1DATE_POK: TcxGridDBBandedColumn;
    DBGrid1Column2: TcxGridDBBandedColumn;
    pokaznID: TIntegerField;
    pokaznYEARMON: TIntegerField;
    pokaznDATE_POK: TDateField;
    pokaznVID_POK: TIntegerField;
    pokaznN_DOC: TIntegerField;
    pokaznDATE_ZN: TDateField;
    pokaznVID_ZN: TIntegerField;
    pokaznSCHET: TIBStringField;
    pokaznID_LICH: TIntegerField;
    pokaznPKZ: TIBStringField;
    pokaznLICH: TIBStringField;
    Image1: TImage;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    viber_task: TIBDataSet;
    viber_taskID: TIntegerField;
    viber_taskDATA: TDateTimeField;
    viber_taskYEARMON: TIntegerField;
    viber_taskALLPOKAZN: TIntegerField;
    viber_taskACCESSPOKAZN: TIntegerField;
    viber_taskERR: TSmallintField;
    viber_taskDataSource: TDataSource;
    viber_pokazn: TIBDataSet;
    viber_pokaznDataSource: TDataSource;
    viber_pokaznID: TIntegerField;
    viber_pokaznID_VIBER: TIntegerField;
    viber_pokaznDATE_INS: TDateTimeField;
    viber_pokaznDATA: TDateField;
    viber_pokaznSCHET: TIBStringField;
    viber_pokaznPOKAZN: TIntegerField;
    viber_pokaznVIBER_NAME: TIBStringField;
    viber_pokaznSTATUS: TIBStringField;
    viber_pokaznID_TASK: TIntegerField;
    viber_pokaznERR: TIntegerField;
    viber_send: TIBDataSet;
    viber_sendDataSource: TDataSource;
    viber_sendID: TIntegerField;
    viber_sendDATE_SEND: TDateTimeField;
    viber_sendKOLSEND: TIntegerField;
    viber_sendTEXT: TMemoField;
    viber_sendSMALLTEXT: TIBStringField;
    viber_sendDATA: TDateTimeField;
    lichDATA_STPOV: TDateField;
    DBGrid1LICH_POV: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    Image2: TImage;
    dxBarDockControl4: TdxBarDockControl;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    BarManagerBar6: TdxBar;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    org: TIBDataSet;
    orgSource: TDataSource;
    dxBarButton23: TdxBarButton;
    vid_rn: TIBDataSet;
    vid_rnSource: TDataSource;
    vid_rnID: TIntegerField;
    vid_rnVID_ZN: TIBStringField;
    vid_rnVID_OB: TIntegerField;
    vid_rnVID_SP: TIBStringField;
    ul: TIBDataSet;
    ulSource: TDataSource;
    ulUL: TIBStringField;
    dxBarButton24: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    IBQueryRep: TIBQuery;
    frxReport4: TfrxReport;
    IBQueryRep2: TIBQuery;
    frxDBDataset3: TfrxDBDataset;
    impDataSource: TDataSource;
    imp: TIBDataSet;
    DBGrid1FILTR: TcxGridDBBandedColumn;
    DBGrid1POMPA: TcxGridDBBandedColumn;
    dxBarButton29: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    site_pokazn: TIBDataSet;
    site_pokaznDataSource: TDataSource;
    site_pokaznID: TIntegerField;
    site_pokaznID_SITE: TIntegerField;
    site_pokaznDATE_INS: TDateTimeField;
    site_pokaznDATA: TDateField;
    site_pokaznSCHET: TIBStringField;
    site_pokaznPOKAZN: TIntegerField;
    site_pokaznNAME: TIBStringField;
    site_pokaznSTATUS: TIBStringField;
    site_pokaznID_TASK: TIntegerField;
    site_pokaznERR: TIntegerField;
    site_pokaznVID: TIBStringField;
    viber_taskVID: TIBStringField;
    pokaznPOKAZN: TIBBCDField;
    DBGrid1PERE_DAY: TcxGridDBBandedColumn;
    lichznDATA_STPOV: TDateField;
    lichznRASCH_DAY: TIntegerField;
    hvdlichupd: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    IBStringField1: TIBStringField;
    SmallintField2: TSmallintField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IntegerField11: TIntegerField;
    IBBCDField7: TIBBCDField;
    SmallintField3: TSmallintField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField21: TIBStringField;
    LargeintField1: TLargeintField;
    IBBCDField15: TIBBCDField;
    IBBCDField16: TIBBCDField;
    IntegerField12: TIntegerField;
    IBStringField22: TIBStringField;
    DateField1: TDateField;
    IntegerField13: TIntegerField;
    IBBCDField17: TIBBCDField;
    DateField2: TDateField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    DateField3: TDateField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    hvdlichupdSource: TDataSource;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    Panel2: TPanel;
    IBQuery1: TIBQuery;
    DBGrid1TARIF_NAME: TcxGridDBBandedColumn;
    DBGrid1NORMA: TcxGridDBBandedColumn;
    users: TIBDataSet;
    usersSource: TDataSource;
    usersID: TIntegerField;
    usersPW: TIBStringField;
    usersADDLICH: TIntegerField;
    usersADDPOKAZ: TIntegerField;
    usersADDPLOMB: TIntegerField;
    usersENDMES: TIntegerField;
    usersDEL: TIntegerField;
    usersUSER_NAIM: TIBStringField;
    dxBarButton32: TdxBarButton;
    vid_nach: TIBDataSet;
    IntegerField22: TIntegerField;
    IBStringField23: TIBStringField;
    IntegerField23: TIntegerField;
    IBStringField24: TIBStringField;
    vid_nachSource: TDataSource;
    vid_nach46IntegerField24: TIntegerField;
    vid_nach46IBStringField25: TIBStringField;
    vid_nach46IntegerField25: TIntegerField;
    vid_nach46IBStringField26: TIBStringField;
    vid_nach46Source: TDataSource;
    vid_nach46: TIBDataSet;
    dxBarButton33: TdxBarButton;
    DBGrid1DEL_NORM: TcxGridDBBandedColumn;
    DBGrid1SCH_RAZN2: TcxGridDBBandedColumn;
    pokaznPPP: TIBBCDField;
    pokaznFIO: TIBStringField;
    pokaznFL_BIGPOK: TIntegerField;
    pokaznUSER_NAIM: TIBStringField;
    pokaznID_USER: TSmallintField;
    pokaznDATE_USER: TDateTimeField;
    pokaznNOTE: TIBStringField;
    pokaznDEL: TIntegerField;
    DBGrid1PREV_NORM: TcxGridDBBandedColumn;
    hvd: TIBDataSet;
    hvdSource: TDataSource;
    cxLabel1: TcxLabel;
    DBGrid1LICH_YEARMON: TcxGridDBBandedColumn;
    IBQuery2: TIBQuery;
    cxButton2: TcxButton;
    why_pok: TIBDataSet;
    why_pokSource: TDataSource;
    why_pokID: TIntegerField;
    why_pokWID: TIntegerField;
    why_pokNOTE: TIBStringField;
    why_pokUSER_NAIM: TIBStringField;
    why_pokID_USER: TSmallintField;
    why_pokDATE_USER: TDateTimeField;
    why_pokSCHET: TIBStringField;
    why_pokVID_ZN: TIBStringField;
    DBGrid1LICH_TO: TcxGridDBBandedColumn;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    DBGrid1R_NACH: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PERE_DAY: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DEL_NORM: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PREV_NORM: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1R_NACH: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NOR_RAZN: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NOTE: TcxGridDBBandedColumn;
    cxBarEditItem3: TcxBarEditItem;
    dxBarButton38: TdxBarButton;
    grpKL: TIntegerField;
    grpYEARMON: TIntegerField;
    grpSCH0: TIBStringField;
    grpSCH1: TIBStringField;
    grpRAZN: TFloatField;
    grpNORMA: TFloatField;
    grpNOTE: TIBStringField;
    grpDOM: TIBStringField;
    grpPOD: TIntegerField;
    grpSCH_OLD: TFloatField;
    grpSCH_CUR: TFloatField;
    grpSCH_NAS: TFloatField;
    grpSCH_KUB: TFloatField;
    grpSCH_RAZN: TFloatField;
    grpNORMA_BL: TFloatField;
    grpSCH_UR: TFloatField;
    grpN_LICH: TIBStringField;
    grpTIP: TIBStringField;
    grpKL_UL: TIntegerField;
    grpUL: TIBStringField;
    grpN_DOM: TIBStringField;
    grpSCH_SUMABON: TFloatField;
    dxBarButton39: TdxBarButton;
    DBGrid1NORM_BLICH: TcxGridDBBandedColumn;
    DBGrid1KUB_NOBALANS: TcxGridDBBandedColumn;
    DBGrid1KUB_ALL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORM_BLICH: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1KUB_NOBALANS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1KUB_ALL: TcxGridDBBandedColumn;
    cxStyle2: TcxStyle;
    hvdrozpdom: TIBDataSet;
    hvdrozpdomSource: TDataSource;
    hvdrozpdomKL: TIntegerField;
    hvdrozpdomYEARMON: TIntegerField;
    hvdrozpdomPLOMB: TSmallintField;
    hvdrozpdomFIO: TIBStringField;
    hvdrozpdomWID: TSmallintField;
    hvdrozpdomDOM: TIBStringField;
    hvdrozpdomKVART: TIBStringField;
    hvdrozpdomSCHET: TIBStringField;
    hvdrozpdomN_SCH: TIBStringField;
    hvdrozpdomSCH_OLD: TIBBCDField;
    hvdrozpdomSCH_CUR: TIBBCDField;
    hvdrozpdomSCH_RAZN: TIBBCDField;
    hvdrozpdomSCH_RAZN2: TIBBCDField;
    hvdrozpdomKOLI_P: TIBBCDField;
    hvdrozpdomKOLI_P0: TIntegerField;
    hvdrozpdomKOLI_P1: TIntegerField;
    hvdrozpdomNOR_RAZN: TIBBCDField;
    hvdrozpdomGRP_RAZN: TIBBCDField;
    hvdrozpdomPERE_DAY: TIntegerField;
    hvdrozpdomPERE_RAZN: TIBBCDField;
    hvdrozpdomID_KONTR: TSmallintField;
    hvdrozpdomUL: TIBStringField;
    hvdrozpdomN_DOM: TIBStringField;
    hvdrozpdomKV: TIBStringField;
    hvdrozpdomNOTE: TIBStringField;
    hvdrozpdomKOLI_F: TLargeintField;
    hvdrozpdomRASCH_KUB: TIBBCDField;
    hvdrozpdomRASCH_NOR: TIBBCDField;
    hvdrozpdomPOD: TIntegerField;
    hvdrozpdomRASCH_NOTE: TIBStringField;
    hvdrozpdomDATE_POK: TDateField;
    hvdrozpdomVID_POK: TIntegerField;
    hvdrozpdomKUB_MES: TIBBCDField;
    hvdrozpdomLICH_POV: TDateField;
    hvdrozpdomORG: TIntegerField;
    hvdrozpdomVID_RN: TIntegerField;
    hvdrozpdomFILTR: TIntegerField;
    hvdrozpdomPOMPA: TIntegerField;
    hvdrozpdomZN_LICH: TIntegerField;
    hvdrozpdomZNOLD_LICH: TIntegerField;
    hvdrozpdomDATE_ZN: TDateField;
    hvdrozpdomLICH_TO: TIntegerField;
    hvdrozpdomKLNTAR: TIntegerField;
    hvdrozpdomTARIF_NAME: TIBStringField;
    hvdrozpdomNORMA: TFloatField;
    hvdrozpdomOLD_NORM: TFloatField;
    hvdrozpdomDEL_NORM: TFloatField;
    hvdrozpdomPREV_NORM: TFloatField;
    hvdrozpdomLICH_YEARMON: TIntegerField;
    hvdrozpdomEDRPOU: TIntegerField;
    hvdrozpdomKL_UL: TIntegerField;
    hvdrozpdomR_NACH: TIBStringField;
    hvdrozpdomNORM_BLICH: TFloatField;
    hvdrozpdomKUB_NOBALANS: TFloatField;
    hvdrozpdomKUB_ALL: TFloatField;
    hvd12KL: TIntegerField;
    hvd12YEARMON: TIntegerField;
    hvd12PLOMB: TSmallintField;
    hvd12FIO: TIBStringField;
    hvd12WID: TSmallintField;
    hvd12DOM: TIBStringField;
    hvd12KVART: TIBStringField;
    hvd12SCHET: TIBStringField;
    hvd12N_SCH: TIBStringField;
    hvd12SCH_OLD: TIBBCDField;
    hvd12SCH_CUR: TIBBCDField;
    hvd12SCH_RAZN: TIBBCDField;
    hvd12SCH_RAZN2: TIBBCDField;
    hvd12KOLI_P: TIBBCDField;
    hvd12KOLI_P0: TIntegerField;
    hvd12KOLI_P1: TIntegerField;
    hvd12NOR_RAZN: TIBBCDField;
    hvd12GRP_RAZN: TIBBCDField;
    hvd12PERE_DAY: TIntegerField;
    hvd12PERE_RAZN: TIBBCDField;
    hvd12ID_KONTR: TSmallintField;
    hvd12UL: TIBStringField;
    hvd12N_DOM: TIBStringField;
    hvd12KV: TIBStringField;
    hvd12NOTE: TIBStringField;
    hvd12KOLI_F: TLargeintField;
    hvd12RASCH_KUB: TIBBCDField;
    hvd12RASCH_NOR: TIBBCDField;
    hvd12POD: TIntegerField;
    hvd12RASCH_NOTE: TIBStringField;
    hvd12DATE_POK: TDateField;
    hvd12VID_POK: TIntegerField;
    hvd12KUB_MES: TIBBCDField;
    hvd12LICH_POV: TDateField;
    hvd12ORG: TIntegerField;
    hvd12VID_RN: TIntegerField;
    hvd12FILTR: TIntegerField;
    hvd12POMPA: TIntegerField;
    hvd12ZN_LICH: TIntegerField;
    hvd12ZNOLD_LICH: TIntegerField;
    hvd12DATE_ZN: TDateField;
    hvd12LICH_TO: TIntegerField;
    hvd12KLNTAR: TIntegerField;
    hvd12TARIF_NAME: TIBStringField;
    hvd12NORMA: TFloatField;
    hvd12OLD_NORM: TFloatField;
    hvd12DEL_NORM: TFloatField;
    hvd12PREV_NORM: TFloatField;
    hvd12LICH_YEARMON: TIntegerField;
    hvd12EDRPOU: TIntegerField;
    hvd12KL_UL: TIntegerField;
    hvd12R_NACH: TIBStringField;
    hvd12NORM_BLICH: TFloatField;
    hvd12KUB_NOBALANS: TFloatField;
    hvd12KUB_ALL: TFloatField;
    hvdlichupdSCH_RAZN2: TIBBCDField;
    hvdlichupdKLNTAR: TIntegerField;
    hvdlichupdTARIF_NAME: TIBStringField;
    hvdlichupdNORMA: TFloatField;
    hvdlichupdOLD_NORM: TFloatField;
    hvdlichupdDEL_NORM: TFloatField;
    hvdlichupdPREV_NORM: TFloatField;
    hvdlichupdLICH_YEARMON: TIntegerField;
    hvdlichupdEDRPOU: TIntegerField;
    hvdlichupdKL_UL: TIntegerField;
    hvdlichupdR_NACH: TIBStringField;
    hvdlichupdNORM_BLICH: TFloatField;
    hvdlichupdKUB_NOBALANS: TFloatField;
    hvdlichupdKUB_ALL: TFloatField;
    impKL: TIntegerField;
    impIMPLASTDATE: TDateField;
    impIMPALLOW: TIntegerField;
    impIMPLASTDAY: TIntegerField;
    impVPROG: TIBStringField;
    impLASTEXP: TIntegerField;
    impLASTROZR: TIntegerField;
    dxBarButton25: TdxBarButton;
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
    hvdallSCH_RAZN2: TIBBCDField;
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
    hvdallNOTE: TIBStringField;
    hvdallKOLI_F: TLargeintField;
    hvdallRASCH_KUB: TIBBCDField;
    hvdallRASCH_NOR: TIBBCDField;
    hvdallPOD: TIntegerField;
    hvdallRASCH_NOTE: TIBStringField;
    hvdallDATE_POK: TDateField;
    hvdallVID_POK: TIntegerField;
    hvdallKUB_MES: TIBBCDField;
    hvdallLICH_POV: TDateField;
    hvdallORG: TIntegerField;
    hvdallVID_RN: TIntegerField;
    hvdallFILTR: TIntegerField;
    hvdallPOMPA: TIntegerField;
    hvdallZN_LICH: TIntegerField;
    hvdallZNOLD_LICH: TIntegerField;
    hvdallDATE_ZN: TDateField;
    hvdallLICH_TO: TIntegerField;
    hvdallKLNTAR: TIntegerField;
    hvdallTARIF_NAME: TIBStringField;
    hvdallNORMA: TFloatField;
    hvdallOLD_NORM: TFloatField;
    hvdallDEL_NORM: TFloatField;
    hvdallPREV_NORM: TFloatField;
    hvdallLICH_YEARMON: TIntegerField;
    hvdallEDRPOU: TIntegerField;
    hvdallKL_UL: TIntegerField;
    hvdallR_NACH: TIBStringField;
    hvdallNORM_BLICH: TFloatField;
    hvdallKUB_NOBALANS: TFloatField;
    hvdallKUB_ALL: TFloatField;
    DataAllSource: TDataSource;
    hvdallPLOSCH_UR: TFloatField;
    cxGridDBBandedTableView1KOLI_P: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PLOSCH_UR: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORMA: TcxGridDBBandedColumn;
    hvdrozpdomPLOSCH_UR: TFloatField;
    hvdrozpdomPERERAH: TFloatField;
    hvd12PLOSCH_UR: TFloatField;
    hvd12PERERAH: TFloatField;
    hvdallPERERAH: TFloatField;
    hvdKL: TIntegerField;
    hvdYEARMON: TIntegerField;
    hvdPLOMB: TSmallintField;
    hvdFIO: TIBStringField;
    hvdWID: TSmallintField;
    hvdDOM: TIBStringField;
    hvdKVART: TIBStringField;
    hvdSCHET: TIBStringField;
    hvdN_SCH: TIBStringField;
    hvdSCH_OLD: TIBBCDField;
    hvdSCH_CUR: TIBBCDField;
    hvdSCH_RAZN: TIBBCDField;
    hvdSCH_RAZN2: TIBBCDField;
    hvdKOLI_P: TIBBCDField;
    hvdKOLI_P0: TIntegerField;
    hvdKOLI_P1: TIntegerField;
    hvdNOR_RAZN: TIBBCDField;
    hvdGRP_RAZN: TIBBCDField;
    hvdPERE_DAY: TIntegerField;
    hvdPERE_RAZN: TIBBCDField;
    hvdID_KONTR: TSmallintField;
    hvdUL: TIBStringField;
    hvdN_DOM: TIBStringField;
    hvdKV: TIBStringField;
    hvdNOTE: TIBStringField;
    hvdKOLI_F: TLargeintField;
    hvdRASCH_KUB: TIBBCDField;
    hvdRASCH_NOR: TIBBCDField;
    hvdPOD: TIntegerField;
    hvdRASCH_NOTE: TIBStringField;
    hvdDATE_POK: TDateField;
    hvdVID_POK: TIntegerField;
    hvdKUB_MES: TIBBCDField;
    hvdLICH_POV: TDateField;
    hvdORG: TIntegerField;
    hvdVID_RN: TIntegerField;
    hvdFILTR: TIntegerField;
    hvdPOMPA: TIntegerField;
    hvdZN_LICH: TIntegerField;
    hvdZNOLD_LICH: TIntegerField;
    hvdDATE_ZN: TDateField;
    hvdLICH_TO: TIntegerField;
    hvdKLNTAR: TIntegerField;
    hvdTARIF_NAME: TIBStringField;
    hvdNORMA: TFloatField;
    hvdOLD_NORM: TFloatField;
    hvdDEL_NORM: TFloatField;
    hvdPREV_NORM: TFloatField;
    hvdLICH_YEARMON: TIntegerField;
    hvdEDRPOU: TIntegerField;
    hvdKL_UL: TIntegerField;
    hvdR_NACH: TIBStringField;
    hvdNORM_BLICH: TFloatField;
    hvdKUB_NOBALANS: TFloatField;
    hvdKUB_ALL: TFloatField;
    hvdPLOSCH_UR: TFloatField;
    hvdPERERAH: TFloatField;
    orgKL: TIntegerField;
    orgYEARMON: TIntegerField;
    orgPLOMB: TSmallintField;
    orgFIO: TIBStringField;
    orgWID: TSmallintField;
    orgDOM: TIBStringField;
    orgKVART: TIBStringField;
    orgSCHET: TIBStringField;
    orgN_SCH: TIBStringField;
    orgSCH_OLD: TIBBCDField;
    orgSCH_CUR: TIBBCDField;
    orgSCH_RAZN: TIBBCDField;
    orgSCH_RAZN2: TIBBCDField;
    orgKOLI_P: TIBBCDField;
    orgKOLI_P0: TIntegerField;
    orgKOLI_P1: TIntegerField;
    orgNOR_RAZN: TIBBCDField;
    orgGRP_RAZN: TIBBCDField;
    orgPERE_DAY: TIntegerField;
    orgPERE_RAZN: TIBBCDField;
    orgID_KONTR: TSmallintField;
    orgUL: TIBStringField;
    orgN_DOM: TIBStringField;
    orgKV: TIBStringField;
    orgNOTE: TIBStringField;
    orgKOLI_F: TLargeintField;
    orgRASCH_KUB: TIBBCDField;
    orgRASCH_NOR: TIBBCDField;
    orgPOD: TIntegerField;
    orgRASCH_NOTE: TIBStringField;
    orgDATE_POK: TDateField;
    orgVID_POK: TIntegerField;
    orgKUB_MES: TIBBCDField;
    orgLICH_POV: TDateField;
    orgORG: TIntegerField;
    orgVID_RN: TIntegerField;
    orgFILTR: TIntegerField;
    orgPOMPA: TIntegerField;
    orgZN_LICH: TIntegerField;
    orgZNOLD_LICH: TIntegerField;
    orgDATE_ZN: TDateField;
    orgLICH_TO: TIntegerField;
    orgKLNTAR: TIntegerField;
    orgTARIF_NAME: TIBStringField;
    orgNORMA: TFloatField;
    orgOLD_NORM: TFloatField;
    orgDEL_NORM: TFloatField;
    orgPREV_NORM: TFloatField;
    orgLICH_YEARMON: TIntegerField;
    orgEDRPOU: TIntegerField;
    orgKL_UL: TIntegerField;
    orgR_NACH: TIBStringField;
    orgNORM_BLICH: TFloatField;
    orgKUB_NOBALANS: TFloatField;
    orgKUB_ALL: TFloatField;
    orgPLOSCH_UR: TFloatField;
    orgPERERAH: TFloatField;
    DBGrid1PERERAH: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PERERAH: TcxGridDBBandedColumn;
    cxStyle3: TcxStyle;
    hvdR_NOBAL: TIBStringField;
    orgR_NOBAL: TIBStringField;
    hvdallR_NOBAL: TIBStringField;
    hvd12R_NOBAL: TIBStringField;
    hvdrozpdomR_NOBAL: TIBStringField;
    cxGridDBBandedTableView1R_NOBAL: TcxGridDBBandedColumn;
    DBGrid1R_NOBAL: TcxGridDBBandedColumn;
    cxTabSheet2: TcxTabSheet;
    hvddom2Source: TDataSource;
    hvddom2: TIBDataSet;
    hvddom2UL: TIBStringField;
    hvddom2N_DOM: TIBStringField;
    hvddom2SCH_RAZN: TIBBCDField;
    hvddom2NOR_RAZN: TIBBCDField;
    hvddom2NORM_BLICH: TFloatField;
    hvddom2DEL_NORM: TFloatField;
    hvddom2KUB_NOBALANS: TFloatField;
    hvddom2PERERAH: TFloatField;
    hvddom2KUB_ALL: TFloatField;
    hvddom2PREV_NORM: TFloatField;
    hvddom2SCH_KUB: TFloatField;
    hvddom2SCH_RAZNDOM: TFloatField;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    hv_per: TIBDataSet;
    hv_perSource: TDataSource;
    hv_perKL: TIntegerField;
    hv_perYEARMON: TIntegerField;
    hv_perYEARMONP: TIntegerField;
    hv_perFIO: TIBStringField;
    hv_perWID: TSmallintField;
    hv_perWID_PREV: TIntegerField;
    hv_perSCHET: TIBStringField;
    hv_perSCH_RAZN: TIBBCDField;
    hv_perKOLI_P: TIBBCDField;
    hv_perNOR_RAZN: TIBBCDField;
    hv_perGRP_RAZN: TIBBCDField;
    hv_perPERE_RAZN: TIBBCDField;
    hv_perUL: TIBStringField;
    hv_perN_DOM: TIBStringField;
    hv_perKV: TIBStringField;
    hv_perPOD: TIntegerField;
    hv_perDATE_POK: TDateField;
    hv_perORG: TIntegerField;
    hv_perDEL_NORM: TFloatField;
    hv_perKL_UL: TIntegerField;
    hv_perNORM_BLICH: TFloatField;
    hv_perKUB_NOBALANS: TFloatField;
    hv_perKUB_ALL: TFloatField;
    hv_perPERERAH: TFloatField;
    hv_perNOTEWID: TIBStringField;
    hv_perNOTE: TIBStringField;
    IBQuery3: TIBQuery;
    grp_perSource: TDataSource;
    cxGrid3DBTableView1UL: TcxGridDBColumn;
    cxGrid3DBTableView1N_DOM: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_RAZN: TcxGridDBColumn;
    cxGrid3DBTableView1NOR_RAZN: TcxGridDBColumn;
    cxGrid3DBTableView1NORM_BLICH: TcxGridDBColumn;
    cxGrid3DBTableView1DEL_NORM: TcxGridDBColumn;
    cxGrid3DBTableView1KUB_NOBALANS: TcxGridDBColumn;
    cxGrid3DBTableView1PERERAH: TcxGridDBColumn;
    cxGrid3DBTableView1KUB_ALL: TcxGridDBColumn;
    cxGrid3DBTableView1PREV_NORM: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_KUB: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_RAZNDOM: TcxGridDBColumn;
    grp_perKL: TIntegerField;
    grp_perYEARMON: TIntegerField;
    grp_perYEARMONP: TIntegerField;
    grp_perNOTE: TIBStringField;
    grp_perSCH_OLD: TFloatField;
    grp_perSCH_CUR: TFloatField;
    grp_perSCH_RAZN: TFloatField;
    grp_perN_LICH: TIBStringField;
    grp_perTIP: TIBStringField;
    grp_perKL_UL: TIntegerField;
    grp_perN_DOM: TIBStringField;
    grp_perSCH_NAS: TFloatField;
    grp_perSCH_UR: TFloatField;
    grp_perSCH_SUMABON: TFloatField;
    grp_perSCH_KUB: TFloatField;
    grp_perNOTEWID: TIBStringField;
    grp_per: TIBDataSet;
    grp_perUL: TIBStringField;
    cxGrid4: TcxGrid;
    DBGrid3: TcxGridDBTableView;
    DBGrid3TIP: TcxGridDBColumn;
    DBGrid3N_LICH: TcxGridDBColumn;
    DBGrid3UL: TcxGridDBColumn;
    DBGrid3N_DOM: TcxGridDBColumn;
    DBGrid3SCH_OLD: TcxGridDBColumn;
    DBGrid3SCH_CUR: TcxGridDBColumn;
    DBGrid3SCH_KUB: TcxGridDBColumn;
    DBGrid3SCH_UR: TcxGridDBColumn;
    DBGrid3SCH_NAS: TcxGridDBColumn;
    DBGrid3SCH_SUMABON: TcxGridDBColumn;
    DBGrid3SCH_RAZN: TcxGridDBColumn;
    DBGrid3RAZN: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    IBQuery4: TIBQuery;
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
    procedure prop1DDSetText(Sender: TField; const Text: String);
    procedure prop1KOLISetText(Sender: TField; const Text: String);
    procedure domBeforeOpen(DataSet: TDataSet);
    procedure hvdNewRecord(DataSet: TDataSet);
    procedure hvdBeforePost(DataSet: TDataSet);
    procedure grpBeforeOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure grpNewRecord(DataSet: TDataSet);
    procedure ActionPrintExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure ActionPrintTotalExecute(Sender: TObject);
    procedure hvd_repBeforeOpen(DataSet: TDataSet);
    procedure hvdAfterPost(DataSet: TDataSet);
    procedure cxPageControl1PageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dataCalcFields(DataSet: TDataSet);
    procedure dataAfterOpen(DataSet: TDataSet);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
//    procedure hvdPERE_DAYValidate(Sender: TField);
    procedure DBGrid1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lichNewRecord(DataSet: TDataSet);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure hvdallBeforeOpen(DataSet: TDataSet);
    procedure hvd3BeforeOpen(DataSet: TDataSet);
    procedure hvd12BeforeOpen(DataSet: TDataSet);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure DBGrid1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton19Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure lichBeforePost(DataSet: TDataSet);
    procedure DBGrid1WIDPropertiesEditValueChanged(Sender: TObject);
    procedure DBGrid1NOR_RAZNPropertiesChange(Sender: TObject);
    procedure orgBeforeOpen(DataSet: TDataSet);
    procedure orgBeforePost(DataSet: TDataSet);
    procedure orgNewRecord(DataSet: TDataSet);
    procedure cxGridDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure cxGridDBBandedTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dataAfterScroll(DataSet: TDataSet);
    procedure dataAfterClose(DataSet: TDataSet);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure cxBarEditItem1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxBarEditItem1Exit(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure lichAfterPost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxBarEditItem3Exit(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure DBGrid3SCH_CURPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure grpSCH_CURChange(Sender: TField);
    procedure dxBarButton39Click(Sender: TObject);
    procedure DBGrid1KUB_ALLStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBBandedTableView1KUB_ALLStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure hvddom2BeforeOpen(DataSet: TDataSet);
    procedure cxGrid3DBTableView1KUB_ALLStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGrid3DBTableView1SCH_RAZNDOMStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);

  private
    { Private declarations }
    schet:string;
    procedure AddFilter(column:TcxGridDBBandedColumn;text:string);
    procedure DelFilter(col:TcxGridDBBandedColumn;s:string);

  public
    { Public declarations }
    lchSQL,lchznSQL,plSQL,plznSQL,pokSQL,why_pokSQL,url,urlsend,startimport,sendmessbefoimp:string;
    PathKvart:string;
    iniFile:TIniFile;
    period,LASTROZR,back3month:integer;
    fl_startprog:boolean;
    DSet:TIBDataSet;
    function curYM:integer;
    function isArchive:boolean;
    function GetAppVersionStr:string;
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
    procedure execSql(s:string);
    procedure allcalclich;
    procedure allcalclich2;
    procedure allcalcnorm;
    procedure update;
    procedure calcdomlich(DS:TIBDataSet);
    procedure calcalldomlich;
    procedure calcalldompere;
    procedure calcdomlichpere(DS:TIBQuery);

  end;

var
  MainForm: TMainForm;


implementation

uses inpedpro, edexpr, import, mytools, itoghvd,ComObj,dbf,dbf_lang,
  edplomb, kart, lichall, iimport, sprzn, addkart, ViberTask, ViberPok,
  ViberSendOrders, LichPlomb, splash, Conn, math;

{$R *.dfm}

function TMainForm.GetAppVersionStr: string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  Exe := ParamStr(0);
  Size := GetFileVersionInfoSize(PChar(Exe), Handle);
  if Size = 0 then
    RaiseLastOSError;
  SetLength(Buffer, Size);
  if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
    RaiseLastOSError;
  if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
    RaiseLastOSError;
  // major
  Result := Format('%d.%d.%d.%d', [LongRec(FixedPtr.dwFileVersionMS).Hi,
    LongRec(FixedPtr.dwFileVersionMS).Lo, // minor
    LongRec(FixedPtr.dwFileVersionLS).Hi, // release
    LongRec(FixedPtr.dwFileVersionLS).Lo]) // build
end;

procedure TMainForm.allcalclich;
begin
     Form4.Show;
     Form4.Label3.Caption:='Start -'+DateTimeToStr(now());

     MainForm.Enabled:=false;
     Form4.Label2.Caption:='���������� ����������...';
     Form4.cxProgressBar1.Properties.Min:=0;
     Form4.cxProgressBar1.Properties.Max:=0;
     Form4.Label4.Caption:='������ �����. ���������...';
     application.ProcessMessages;

//    IBQuery1.close;
//    IBQuery1.SQL.Text:='execute procedure calc_pok_all';
//    IBQuery1.ExecSQL;
//
//    IBTransaction1.CommitRetaining;

 //MainForm.hvdallSource.Enabled:=false;
// pokaznall.Open;
// pokaznall.FetchAll;

    IBQuery2.Close;
    IBQuery2.SQL.Text:='update h_voda set kub_nobalans=0 where yearmon=:ym';
    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.ExecSQL;

    IBTransaction1.CommitRetaining;



 MainForm.hvdallSource.Enabled:=false;
 MainForm.hvdall.Close;
 MainForm.hvdall.ParamByName('yearmon').Value:=MainForm.period;
 //MainForm.hvdall.ParamByName('yy').Value:=StrtoInt(copy(IntToStr(MainForm.period),1,4));
 //MainForm.hvdall.ParamByName('mm').Value:=StrtoInt(copy(IntToStr(MainForm.period),5,2));
 MainForm.hvdall.Open;
 MainForm.hvdall.FetchAll;
 MainForm.hvdall.First;
 Form4.cxProgressBar1.Properties.Max:=MainForm.hvdall.RecordCount-1;
 //Form4.Label1.Caption:='allcalclich';

    Form2.IBQuery6.Close;
    Form2.IBQuery6.SQL.Text:='select * from '+
    '(select pkk.id,trim(pkk.schet) schet,pkk.yearmon,pkk.pokazn,pkk.vid_pok,pkk.date_pok from pokazn pkk '+
    'join (select schet, max(date_pok) date_pok, max(id) id from pokazn where yearmon<:per group by schet) as pok1 on pok1.id=pkk.id '+
    'union all '+
    'select id,trim(schet) schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon=:per) '+
    'order by schet,yearmon,date_pok,id';

   // Form2.IBQuery6.ParamByName('sch').Value:=MainForm.period;
    Form2.IBQuery6.ParamByName('per').Value:=MainForm.period;
    Form2.IBQuery6.Open;
    Form2.IBQuery6.FetchAll;



    Form4.cxProgressBar1.Position:=0;
    while not hvdall.eof do
    begin
    Form4.cxProgressBar1.Position:=Form4.cxProgressBar1.Position+1;
    Form4.Label4.Caption:=hvdallSCHET.Value;
    application.ProcessMessages;
    if hvdallSCHET.Value='0080088' then
       hvdallSCHET.Value;
    

         Form2.calcpok2(hvdall,2);
         Form2.calclich(hvdall);
         if not Form4.Visible then
         begin
            imp.edit;
            impLASTROZR.Value:=0;
            imp.Post;
            IBTransaction1.CommitRetaining;
            Update;
         Break;
         end;



      hvdall.Next;
    end;

  IBTransaction1.CommitRetaining;

 // if impLASTROZR.Value=1 then calcalldomlich;
  if impLASTROZR.Value=1 then calcalldompere;

  MainForm.hvdallSource.Enabled:=true;

   Form4.Label3.Caption:=Form4.Label3.Caption+' End-'+DateTimeToStr(now());
   Form4.Label4.Caption:='';

  Form4.Close;
   MainForm.Enabled:=true;

end;

procedure TMainForm.allcalclich2;
begin
     Form4.Show;
     Form4.Label3.Caption:='Start -'+DateTimeToStr(now());

     MainForm.Enabled:=false;
     Form4.Label2.Caption:='����������.��������� ��������� 40-50 ��.(����� ����������� ���� �����)';
     Form4.cxProgressBar1.Properties.Min:=0;
     Form4.cxProgressBar1.Properties.Max:=0;
     application.ProcessMessages;
     Form4.Label1.Caption:='allcalclich2';


//    IBQuery1.close;
//    IBQuery1.SQL.Text:='execute procedure calc_pok_all';
//    IBQuery1.ExecSQL;
//
//    IBTransaction1.CommitRetaining;

 MainForm.hvdallSource.Enabled:=false;
 MainForm.hvdall.Close;
 MainForm.hvdall.ParamByName('yearmon').Value:=MainForm.period;
 MainForm.hvdall.Open;
 MainForm.hvdall.FetchAll;
 MainForm.hvdall.first;
 Form4.cxProgressBar1.Properties.Max:=MainForm.hvdall.RecordCount-1;

    IBQuery1.close;
    IBQuery1.SQL.Text:='execute procedure calc_pok :schet';

    Form4.cxProgressBar1.Position:=0;
    while not hvdall.eof do
    begin
    Form4.cxProgressBar1.Position:=Form4.cxProgressBar1.Position+1;
    Form4.Label2.Caption:=hvdallSCHET.Value;
    application.ProcessMessages;

    IBQuery1.close;
    IBQuery1.ParamByName('schet').Value:=hvdallSCHET.Value;
    IBQuery1.ExecSQL;

         Form2.calclich(hvdall);

      hvdall.Next;
    end;

  IBTransaction1.CommitRetaining;
  hvd.close;
  hvd.open;
  org.close;
  org.open;
  grp.close;
  grp.open;

   Form4.Label3.Caption:=Form4.Label3.Caption+' End-'+DateTimeToStr(now());

  Form4.Close;
   MainForm.Enabled:=true;

end;

procedure TMainForm.allcalcnorm;
begin
     Form4.Show;
     MainForm.Enabled:=false;
     Form4.Label2.Caption:='����������.���������...';
     Form4.cxProgressBar1.Properties.Min:=0;
     application.ProcessMessages;

 MainForm.hvdall.Close;
 MainForm.hvdall.ParamByName('yearmon').Value:=MainForm.period;
 MainForm.hvdall.Open;
 MainForm.hvdall.FetchAll;
 Form4.cxProgressBar1.Properties.Max:=MainForm.hvdall.RecordCount-1;

  //  IBQuery1.close;
  //  IBQuery1.SQL.Text:='execute procedure calc_pok :schet';
    Form4.cxProgressBar1.Position:=0;
    while not hvdall.eof do
    begin
    Form4.cxProgressBar1.Position:=Form4.cxProgressBar1.Position+1;
    application.ProcessMessages;
      if (hvdallSCH_RAZN.IsNull) or (hvdallSCH_RAZN.Value=0) then
      begin
     // execSQL('execute procedure calc_pok');
//        IBQuery1.ParamByName('schet').Value:=hvdallSCHET.Value;
  //      IBQuery1.ExecSQL;
          hvdall.Edit;
          hvdallNOR_RAZN.Value:=hvdallKOLI_P.Value*hvdallNORMA.Value;
          hvdall.Post;
      end;


      hvdall.Next;
    end;

  IBTransaction1.CommitRetaining;  

  hvd.close;
  hvd.open;
  org.close;
  org.open;
  grp.close;
  grp.open;

  Form4.Close;
   MainForm.Enabled:=true;

end;

function TMainForm.isArchive:boolean;
begin
  result := data.RecNo<>1;  
end;

procedure TMainForm.lichAfterPost(DataSet: TDataSet);
begin

     IBQuery2.Close;
     IBQuery2.SQL.Text:='select first 1 * from lich where schet=:sch and vid_zn is null order by data_pov NULLS FIRST';
     IBQuery2.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
     IBQuery2.Open;


       if IBQuery2.RecordCount<>0 then
       begin
          if MainForm.DSet.FieldByName('LICH_POV').Value<>IBQuery2.FieldByName('data_pov').Value then
          begin
          MainForm.DSet.Edit;
          if IBQuery2.FieldByName('data_pov').Value=null then
          begin
             MainForm.DSet.FieldByName('LICH_POV').Clear;
             MainForm.DSet.FieldByName('LICH_YEARMON').Clear;
          end
          else
          begin
             MainForm.DSet.FieldByName('LICH_POV').Value:=IBQuery2.FieldByName('data_pov').Value;
             MainForm.DSet.FieldByName('LICH_YEARMON').Value:=Date2YearMon(MainForm.DSet.FieldByName('LICH_POV').Value);
          end;
          MainForm.DSet.Post;
          end;
       end
       else
       begin
  //        if MainForm.hvdDATE_POK.Value<>IBQuery2.FieldByName('data_pov').Value then
  //        begin
          MainForm.DSet.Edit;
          MainForm.DSet.FieldByName('LICH_POV').Clear;
          MainForm.DSet.FieldByName('LICH_YEARMON').Clear;
          MainForm.DSet.Post;
   //       end;

       end;

    IBTransaction1.CommitRetaining;

end;

procedure TMainForm.lichBeforePost(DataSet: TDataSet);
begin
Form2.LichPost:=true;
end;

procedure TMainForm.lichNewRecord(DataSet: TDataSet);
begin
 lich.edit;
 lichSCHET.Value:=DSet.FieldByName('SCHET').Value;
 lich.post;
end;

procedure TMainForm.orgBeforeOpen(DataSet: TDataSet);
begin
  org.ParamByName('yearmon').AsInteger:=CurYM;
end;

procedure TMainForm.orgBeforePost(DataSet: TDataSet);
begin
    if orgYEARMON.Value=0 then orgYEARMON.Value:=CurYM;
end;

procedure TMainForm.orgNewRecord(DataSet: TDataSet);
begin
       orgYEARMON.Value:=CurYM;
   // ������� �� ���������


end;

function TMainForm.curYM:integer;
begin
 // data.First;
  result:=dataYEARMON.Value;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var kk:Currency;
    ss:string;
begin
//  try
  IBdatabase.Connected:=false;
//  IBTransaction1.Active:=true;
//  //DataSource.Enabled:=false;
//  //hvdSource.Enabled:=false;
//  except
//    on E: Exception do
//      begin
//        messagedlg('������� ��� ��������� �� ���� �����! ��������� �����? ('+E.Message+')',mtError,[mbCancel],0);
//        exit;
////        Application.Terminate;
//      end;
//  end;


//  data.Open;
//  users.open;
//  //lich.Open;
  lchSQL:=lich.SelectSQL.Text;
//  //lichzn.Open;
  lchznSQL:=lichzn.SelectSQL.Text;

//  dom.Open;

fl_startprog:=true;
//  //hvd.Open;
//  prop.Open;
//  grp.Open;
 // imp.open;
//  //plombs.Open;
//  //pokazn.Open;
////  dbgrid1.DataController.Groups.FullExpand;

  plSQL:=plombs.SelectSQL.Text;
  pokSQL:=pokazn.SelectSQL.Text;
  why_pokSQL:=why_pok.SelectSQL.Text;
// // plombszn.Open;
  plznSQL:=plombszn.SelectSQL.Text;

//  ul.ParamByName('yearmon').AsInteger:=dataYEARMON.Value;
//  ul.open;

//org.Open;
//vid_rn.Open;
//vid_nach.Open;
//vid_nach46.Open;
////viber_task.ParamByName('yearmon').Value:=period;
//viber_task.Open;
//viber_pokazn.Open;
//site_pokazn.Open;
//viber_send.Open;

//  //DataSource.Enabled:=true;
//  //hvdSource.Enabled:=true;
////
// //dxBarLookupCombo1.Enabled:=false;
  cxPageControl1.ActivePage:=cxTabSheet1;
// // ActiveControl:=cxGrid2;
end;

procedure TMainForm.FormShow(Sender: TObject);
var dd:integer;
    dt:TDate;
    ss,fvid:string;
begin
//cxButton1.Click;

//  dxBarLookupCombo1.Enabled:=true;






  ss:=GetAppVersionStr;
  MainForm.Caption:=MainForm.Caption+' '+ss;




FormConn.TestConn;

if not IBDatabase.Connected then exit;

  dxBarLookupCombo1.Enabled:=false;
  dxBarLookupCombo1.KeyValue:=domDOM.AsString;

  period:=dataYEARMON.Value;
    IBQuery2.Close;
    IBQuery2.SQL.Text:='select first 1 skip 3 yearmon from data order by yearmon desc';
    IBQuery2.Open;
    back3month:=IBQuery2.FieldByName('yearmon').Value;


  ul.close;
  ul.ParamByName('yearmon').AsInteger:=dataYEARMON.Value;
  ul.open;


//Update;


//  if impVPROG.Value<>ss then
//  begin
//    ShowMessage('���� ����� '+impVPROG.Value+' �� ������� ���� �������� '+ss+'. ��������� �� ������������!!!');
//    Exit;
   // Application.Destroy;
//    MainForm.Close;
//  end;

  if startimport='1' then
  begin

//    if (impIMPALLOW.Value=1) then
//    begin
//       dd := DayOf(Now);
//       if dd>impIMPLASTDAY.Value then
//       begin
//          imp.edit;
//          impIMPALLOW.Value:=0;
//          imp.post;
//          IBTransaction1.CommitRetaining;
//       end;
//    end;

//    if (impIMPALLOW.Value=1) and (impIMPLASTDATE.Value<Now) then

    viber_task.Close;
    viber_task.ParamByName('yearmon').Value:=CurYM;
    viber_task.Open;
    dt:=trunc(Now);
    if (impIMPLASTDATE.Value<dt) then
    begin
          imp.edit;
          impIMPLASTDATE.Value:=dt;
          imp.post;
          IBTransaction1.CommitRetaining;
          FormViberTask.cxButton8.Click;
          IBTransaction1.CommitRetaining;

    end;


  end;

fl_startprog:=false;
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

procedure TMainForm.DBGrid1KUB_ALLStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if (ARecord.Values[DBGrid1KUB_ALL.Index] < 0) then
     AStyle:=cxStyle3
 else AStyle:=cxStyle2;
end;

procedure TMainForm.DBGrid1KOLI_PPropertiesCloseUp(Sender: TObject);
begin
  formInplaces.onCloseupProp;
end;

procedure TMainForm.ActionEdCalcsExecute(Sender: TObject);
begin
  if InputBox('������', '', '')=IniFile.ReadString('Security', 'EdCalcs', #0) then FormEdExpr.ShowModal;
end;

procedure TMainForm.dxBarButton20Click(Sender: TObject);
begin
FormViberSendOrders.Show;
end;

procedure TMainForm.dxBarButton21Click(Sender: TObject);
begin
FormAddkart.addurabon:=true;
FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=true;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.Show;
end;

procedure TMainForm.dxBarButton22Click(Sender: TObject);
begin
  //  if application.MessageBox('�����!!! �� ����� ������ �������� �������� '+DSet.FieldByName('SCHET').Value+' '+DSet.FieldByName('FIO').Value+' ?','ϳ�����������',MB_YESNO)=IDNO then
    if application.MessageBox(PAnsiChar(AnsiString('�� ����� ������ �������� �������� '+DSet.FieldByName('SCHET').AsString+' '+DSet.FieldByName('FIO').AsString+' ?')),'ϳ�����������',MB_YESNO)=IDNO then
    exit;
    DSet.delete;
end;

procedure TMainForm.dxBarButton23Click(Sender: TObject);
begin
spr_zn.vidspr:='addrn';
spr_zn.Caption:=dxBarButton23.Caption;
spr_zn.Show;
end;

procedure TMainForm.dxBarButton24Click(Sender: TObject);
begin
FormAddkart.addurabon:=false;
FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=true;
FormAddkart.cxTabSheet5.TabVisible:=false;

FormAddkart.cxTextEdit6.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxTextEdit10.Text:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.cxLookupComboBox3.EditValue:=MainForm.DSet.FieldByName('UL').Value;
FormAddkart.cxLookupComboBox4.EditValue:=MainForm.DSet.FieldByName('N_DOM').Value;
FormAddkart.cxTextEdit12.Text:=MainForm.DSet.FieldByName('KV').Value;
FormAddkart.cxTextEdit11.Text:=MainForm.DSet.FieldByName('NOTE').AsString;
FormAddkart.cxCalcEdit9.EditValue:=MainForm.DSet.FieldByName('KOLI_P').AsInteger;
FormAddkart.cxCalcEdit7.EditValue:=MainForm.DSet.FieldByName('PLOSCH_UR').AsFloat;
FormAddkart.cxCalcEdit10.EditValue:=MainForm.DSet.FieldByName('NORMA').AsFloat;
FormAddkart.Show;
end;

procedure TMainForm.dxBarButton25Click(Sender: TObject);
begin

if InputBox('������', '', '')=IniFile.ReadString('Security', 'EdCalcs', #0) then
begin
  imp.edit;
  impLASTROZR.Value:=0;
  imp.Post;
  IBTransaction1.CommitRetaining;
  update;
  ShowMessage('����������� ������������! ����� ��������� ����� � ����������, ��� ���� ��������� ���� �������� ������ ����������!');

end;
end;

procedure TMainForm.dxBarButton27Click(Sender: TObject);
begin
  IBQueryRep.Close;
  IBQueryRep2.Close;

  IBQueryRep.SQL.Text:='SELECT h_voda.* , sp1.vid_zn from H_VODA left join spr_zn sp1 on sp1.id=h_voda.vid_rn where h_voda.yearmon=:yearmon ORDER BY H_VODA.org, h_voda.vid_rn';
  IBQueryRep.ParamByName('yearmon').AsInteger := CurYM;
  IBQueryRep.Open;
  IBQueryRep2.SQL.Text:='SELECT h_voda.* , sp1.vid_zn from H_VODA left join spr_zn sp1 on sp1.id=h_voda.vid_rn where h_voda.yearmon=:yearmon ORDER BY h_voda.vid_rn';
  IBQueryRep2.ParamByName('yearmon').AsInteger := CurYM;
  IBQueryRep2.Open;

  frxDBDataset1.Close;
  frxDBDataset1.Open;
 // frxDBDataset2.Close;
//  frxDBDataset2.Open;
  frxDBDataset3.Close;
  frxDBDataset3.Open;


  if fileexists(ExtractFilePath(ParamStr(0))+'hvd_rn.fr3') then
    frxReport4.LoadFromFile(ExtractFilePath(ParamStr(0))+'hvd_rn.fr3')
  else
    frxReport4.SaveToFile(ExtractFilePath(ParamStr(0))+'hvd_rn.fr3');

  frxReport4.ShowReport;
  IBQueryRep.Close;
  IBQueryRep2.Close;

  end;

procedure TMainForm.dxBarButton2Click(Sender: TObject);
begin
    if InputBox('������', '', '')=IniFile.ReadString('Security', 'Import', #0) then Form1.showmodal;
end;

procedure TMainForm.dxBarButton30Click(Sender: TObject);
begin
Form3.Caption:= dxBarButton30.Caption;
Form3.Show;
end;

procedure TMainForm.dxBarButton31Click(Sender: TObject);
begin
FormLichPlomb.Caption:= dxBarButton31.Caption;
FormLichPlomb.Show;
end;

procedure TMainForm.dxBarButton32Click(Sender: TObject);
begin
spr_zn.vidspr:='widnach';
spr_zn.Caption:=dxBarButton32.Caption;
spr_zn.Show;
end;

procedure TMainForm.dxBarButton33Click(Sender: TObject);
begin
allcalclich2;
end;

procedure TMainForm.dxBarButton35Click(Sender: TObject);
begin
FormAddkart.adddomlich:=true;
FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=true;
FormAddkart.Show;
end;

procedure TMainForm.dxBarButton36Click(Sender: TObject);
begin
FormAddkart.adddomlich:=false;
FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=true;
FormAddkart.Show;
FormAddkart.cxLookupComboBox5.EditValue:=MainForm.grp.FieldByName('UL').Value;
FormAddkart.cxLookupComboBox6.EditValue:=MainForm.grp.FieldByName('N_DOM').Value;
FormAddkart.cxCalcEdit8.EditValue:=MainForm.grp.FieldByName('SCH_OLD').Value;
FormAddkart.cxTextEdit13.Text:=MainForm.grp.FieldByName('TIP').Value;
FormAddkart.cxTextEdit14.Text:=MainForm.grp.FieldByName('N_LICH').Value;

//FormAddkart.cxTextEdit11.Text:=MainForm.DSet.FieldByName('NOTE').Value;
end;

procedure TMainForm.dxBarButton37Click(Sender: TObject);
begin
    if application.MessageBox(PAnsiChar(AnsiString('�� ����� ������ �������� ���������� �������� �� ������� '+grp.FieldByName('UL').AsString+' '+grp.FieldByName('N_DOM').AsString+' ?')),'ϳ�����������',MB_YESNO)=IDNO then
    exit;
    grp.delete;
end;

procedure TMainForm.dxBarButton38Click(Sender: TObject);
begin


   if application.MessageBox('�����!!! ������ ��������� ������� ����������? ����������� ���������� ���� �������!','ϳ�����������',MB_YESNO)=IDNO then
      exit;

//    Form4.ImKart;
//
//    if Form4.Visible then
//    begin
      imp.Edit;
      impLASTROZR.Value:=1;
      imp.Post;
      allcalclich;
//    end;

    if impLASTROZR.Value=1 then
    begin
      imp.Edit;
      impLASTROZR.Value:=2;
      imp.Post;
      ShowMessage('������ ���������� ���������!');
    end
    else
      ShowMessage('������ ���������� ���������!');

    IBTransaction1.CommitRetaining;


end;

procedure TMainForm.dxBarButton39Click(Sender: TObject);
begin
calcalldomlich;
end;

procedure TMainForm.calcalldompere;
var firstpereym,countpereym,kol_mes:integer;
    sumabon,kub_rozp:Currency;
begin
    Form4.Show;
   //  Form4.Label3.Caption:='Start -'+DateTimeToStr(now());

     MainForm.Enabled:=false;
     Form4.Label2.Caption:='���������� ��������� �� �����������...';
     Form4.cxProgressBar1.Properties.Min:=0;
     Form4.cxProgressBar1.Properties.Max:=0;
     application.ProcessMessages;



    //��������� ��������
    IBQuery2.Close;
    IBQuery2.SQL.Text:='update h_voda set kub_nobalans=0 where yearmon=:ym';
    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.ExecSQL;

    //��������� �����������
    IBQuery2.Close;
    IBQuery2.SQL.Text:='update h_voda set pererah=0 where yearmon=:ym';
    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.ExecSQL;

    IBTransaction1.CommitRetaining;

    //��������� �������� ����� � ������� ����������� � ���������� �������� ����� � ������� �����������
    IBQuery2.Close;
    IBQuery2.SQL.Text:='execute procedure COPY_DOMPERE :ym,:notestr';
    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.ParamByName('notestr').Value:='�������� �����������';
    IBQuery2.ExecSQL;

    IBTransaction1.CommitRetaining;

    //���������� ����� ����������� �� ���������
      IBQuery2.Close;
      IBQuery2.SQL.Text:='select yearmon from hv_per where yearmon in (select first 12 yearmon from data order by yearmon desc) group by yearmon order by yearmon';
      IBQuery2.Open;
      IBQuery2.FetchAll;
      firstpereym:=IBQuery2.FieldByName('yearmon').AsInteger;
      countpereym:=IBQuery2.RecordCount;

    hv_per.Close;
    hv_per.Open;

    grp_per.close;
    grp_per.Open;

    //�������� � ���� ������� �������� � �� � � ������� ����������� �� ����� �� 12 ������
    IBQuery2.Close;
    IBQuery2.SQL.Text:='select h_voda.*,(select first 1 yearmon from pokazn where yearmon<>:ym and pokazn.schet=h_voda.schet order by yearmon desc) ympok_prev from h_voda'+
                       'where (wid=41 or wid=43) and sch_razn<>0 and wid_prev=44 and yearmon=:ym and schet in (select schet from hv_per where yearmon in (select first 12 yearmon from data order by yearmon desc)) order by schet';

    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.Open;
    IBQuery2.FetchAll;

    Form4.cxProgressBar1.Properties.Max:=IBQuery2.RecordCount-1;
    Form4.Label2.Caption:='����������� ���������� �� �������� ������';
    application.ProcessMessages;

    while not IBQuery2.Eof do
    begin
    Form4.cxProgressBar1.Position:=Form4.cxProgressBar1.Position+1;
    Form4.Label4.Caption:=IBQuery2.FieldByName('schet').AsString;
    application.ProcessMessages;

      kol_mes:=0;
      //���������� � ���� ������ �������� ����������� ���������� �� �������� ����� ������������ ��������� ��� �� ����� 12 ������
      IBQuery3.Close;
      IBQuery3.SQL.Text:='select first 12 * from hv_per where schet=:sch and yearmon>=:ym and yearmon=yearmonp order by yearmon';
      IBQuery3.ParamByName('sch').Value:=IBQuery2.FieldByName('schet').AsString;
      IBQuery3.ParamByName('ym').Value:=IBQuery2.FieldByName('ympok_prev').AsInteger;
      IBQuery3.Open;
      IBQuery3.FetchAll;

      //���������� ���������� ���������� �� ����. ������ �� �����������
      kol_mes:=CountMonth2YearMon(IBQuery2.FieldByName('ympok_prev').AsInteger,MainForm.period);
      if kol_mes>12 then
         kub_rozp:=SimpleRoundTo(IBQuery2.FieldByName('sch_razn').AsInteger/12,-3)
      else
         kub_rozp:=SimpleRoundTo(IBQuery2.FieldByName('sch_razn').AsInteger/kol_mes,-3);

      //
      while not IBQuery3.Eof do
      begin
        hv_per.First;
        hv_per.Append;
        hv_per.Edit;
        hv_perYEARMON.Value:=MainForm.period;
        hv_perYEARMONP.Value:=IBQuery3.FieldByName('yearmonp').Value;
        hv_perSCHET.Value:=IBQuery3.FieldByName('SCHET').Value;
        if IBQuery3.FieldByName('SCH_RAZN').Value<>0 then
           hv_perSCH_RAZN.Value:=IBQuery3.FieldByName('SCH_RAZN').Value*-1;
        if IBQuery3.FieldByName('NOR_RAZN').Value<>0 then
           hv_perNOR_RAZN.Value:=IBQuery3.FieldByName('NOR_RAZN').Value*-1;
        if IBQuery3.FieldByName('DEL_NORM').Value<>0 then
           hv_perNOR_RAZN.Value:=IBQuery3.FieldByName('DEL_NORM').Value*-1;
        if IBQuery3.FieldByName('KUB_ALL').Value<>0 then
           hv_perKUB_ALL.Value:=IBQuery3.FieldByName('KUB_ALL').Value*-1;

        hv_perKOLI_P.Value:=IBQuery3.FieldByName('KOLI_P').Value*-1;
        hv_perWID.Value:=IBQuery3.FieldByName('WID').Value;
        hv_perUL.Value:=IBQuery3.FieldByName('UL').Value;
        hv_perN_DOM.Value:=IBQuery3.FieldByName('N_DOM').Value;
        hv_perKV.Value:=IBQuery3.FieldByName('KV').Value;
        hv_perNOTEWID.Value:='����������� ����������� '+IntToStr(IBQuery3.FieldByName('yearmonp').Value);
        hv_perNOTEWID.Value:='³���� �������������� �����������';
        hv_per.Post;

        hv_per.Append;
        hv_per.Edit;
        hv_perYEARMON.Value:=MainForm.period;
        hv_perYEARMONP.Value:=IBQuery3.FieldByName('yearmonp').Value;
        hv_perSCHET.Value:=IBQuery3.FieldByName('SCHET').Value;
        hv_perSCH_RAZN.Value:=kub_rozp;
        hv_perKUB_ALL.Value:=kub_rozp;
        hv_perWID.Value:=41;
        hv_perKOLI_P.Value:=IBQuery3.FieldByName('KOLI_P').Value;
        hv_perUL.Value:=IBQuery3.FieldByName('UL').Value;
        hv_perN_DOM.Value:=IBQuery3.FieldByName('N_DOM').Value;
        hv_perKV.Value:=IBQuery3.FieldByName('KV').Value;
        hv_perNOTEWID.Value:='����������� ����������� '+IntToStr(IBQuery3.FieldByName('yearmonp').Value);
        hv_perNOTEWID.Value:='��������� ���������� ����������� �� ���������';
        hv_per.Post;

      IBQuery3.Next;
      end;




    IBQuery2.Next;
    end;

    IBTransaction1.CommitRetaining;

    //������ �� ������� � ���� ���� �����������
    IBQuery2.Close;
//    IBQuery2.SQL.Text:='select yearmonp,ul,n_dom from hv_per where yearmon=:ym and yearmon<>yearmonp  group by yearmonp,ul,n_dom order by yearmonp';
    IBQuery2.SQL.Text:='select * from grp_per'+
    'inner join (select yearmonp,ul,n_dom from hv_per where yearmon=:ym group by yearmonp,ul,n_dom order by yearmonp) hv '+
    'on grp_per.yearmon=hv.yearmonp and grp_per.yearmonp=hv.yearmonp and grp_per.ul=hv.ul and grp_per.n_dom=hv.n_dom';
    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.Open;
    IBQuery2.FetchAll;


     Form4.cxProgressBar1.Properties.Min:=0;
     Form4.cxProgressBar1.Properties.Max:=0;
     application.ProcessMessages;

    Form4.cxProgressBar1.Properties.Max:=IBQuery2.RecordCount-1;
    Form4.Label2.Caption:='����������� ���������...';
    application.ProcessMessages;

    Form4.cxProgressBar1.Position:=0;
    while not IBQuery2.eof do
    begin
    Form4.cxProgressBar1.Position:=Form4.cxProgressBar1.Position+1;
    Form4.Label4.Caption:=IBQuery2.FieldByName('YEARMONP').AsString+' '+IBQuery2.FieldByName('UL').AsString+' '+IBQuery2.FieldByName('N_DOM').AsString;
    application.ProcessMessages;


         calcdomlichpere(IBQuery2);

//      IBQuery2.Close;
//      IBQuery2.SQL.Text:='select sum(kub_nobalans) nobal from h_voda where ul=:uul and n_dom=:ndom and yearmon=:ym group by ul,n_dom';
//      IBQuery2.ParamByName('uul').Value:=grp.FieldByName('UL').Value;
//      IBQuery2.ParamByName('ndom').Value:=grp.FieldByName('N_DOM').Value;
//      IBQuery2.ParamByName('ym').Value:=MainForm.period;
//      IBQuery2.Open;
//      grp.edit;
//      grpRAZN.Value:=IBQuery2.FieldByName('nobal').Value;
//     grp.Post;


         if not Form4.Visible then
         begin
            imp.edit;
            impLASTROZR.Value:=0;
            imp.Post;
            IBTransaction1.CommitRetaining;
            Update;

         Break;
         end;



      grp.Next;
    end;

  IBTransaction1.CommitRetaining;

  Update;

   Form4.Label3.Caption:=Form4.Label3.Caption+' End-'+DateTimeToStr(now());
   Form4.Label4.Caption:='';
   Form4.Label2.Caption:='';

  Form4.Close;
   MainForm.Enabled:=true;


end;

procedure TMainForm.calcdomlichpere(DS:TIBQuery);
var sumabon,kub_rozp:Currency;
    kol_lud,kolmonth:integer;
    fl_per:Boolean;
begin
    fl_per:=false;
    if DS.FieldByName('yearmonp').AsInteger<>MainForm.period then
    begin
      if (DS.FieldByName('sch_razn').Value<0) then
         exit
      else
      begin
        grp_per.Append;
        grp_per.Edit;
        grp_perYEARMON.AsInteger:=MainForm.period;
        grp_perYEARMONP.AsInteger:=DS.FieldByName('yearmonp').AsInteger;
        grp_perSCH_OLD.AsCurrency:=DS.FieldByName('SCH_OLD').AsCurrency;
        grp_perSCH_CUR.AsCurrency:=DS.FieldByName('SCH_CUR').AsCurrency;
        grp_perN_LICH.AsString:=DS.FieldByName('N_LICH').AsString;
        grp_perTIP.AsString:=DS.FieldByName('TIP').AsString;
        grp_perKL_UL.AsInteger:=DS.FieldByName('KL_UL').AsInteger;
        grp_perUL.AsString:=DS.FieldByName('UL').AsString;
        grp_perN_DOM.AsString:=DS.FieldByName('N_DOM').AsString;
        grp_perSCH_KUB.AsCurrency:=DS.FieldByName('SCH_KUB').AsCurrency;
        grp_perNOTEWID.AsString:='����������� �� ����� '+inttostr(DS.FieldByName('yearmonp').AsInteger);
        grp_per.Post;

        IBQuery4.Close;
        IBQuery4.SQL.Text:='select * from hv_per where wid<46 and wid<>42 and wid<>45 and ul=:uul and n_dom=:ndom and yearmon=:ym group by org';
        IBQuery4.ParamByName('uul').Value:=grp_perUL.AsString;
        IBQuery4.ParamByName('ndom').Value:=grp_perN_DOM.AsString;
        IBQuery4.ParamByName('ym').Value:=grp_perYEARMONP.AsInteger;
        IBQuery4.Open;
        IBQuery4.FetchAll;



        fl_per:=true;
      end;
    end
    else
        if grp_per.Locate('yearmon;yearmonp,ul,n_dom',VarArrayOf([MainForm.period,MainForm.period,DS.FieldByName('UL').AsString,DS.FieldByName('N_DOM').AsString]),[]) then
          fl_per:=true;

    if fl_per then
    begin

        kolmonth:=0;

        IBQuery3.Close;
        IBQuery3.SQL.Text:='select org,sum(sch_razn+nor_razn) kuball from hv_per where wid<46 and wid<>42 and wid<>45 and ul=:uul and n_dom=:ndom and yearmon=:ym group by org';
        IBQuery3.ParamByName('uul').Value:=grp_perUL.AsString;
        IBQuery3.ParamByName('ndom').Value:=grp_perN_DOM.AsString;
        IBQuery3.ParamByName('ym').Value:=grp_perYEARMONP.AsInteger;
        IBQuery3.Open;
        IBQuery3.FetchAll;

        sumabon:=0;
        kol_lud:=0;

        grp_per.Edit;
        IBQuery3.First;
        while not IBQuery3.Eof do
        begin
          if IBQuery3.FieldByName('org').Value=0 then
             grp_per.FieldByName('sch_nas').Value:=IBQuery3.FieldByName('kuball').Value;
          if IBQuery3.FieldByName('org').Value=1 then
             grp_per.FieldByName('sch_ur').Value:=IBQuery3.FieldByName('kuball').Value;
          sumabon:=sumabon + IBQuery2.FieldByName('kuball').Value;
          IBQuery3.Next;
        end;
        grp_per.FieldByName('sch_sumabon').Value:=sumabon;
        grp_per.FieldByName('sch_kub').Value:=grp_per.FieldByName('sch_cur').Value-grp_per.FieldByName('sch_old').Value;
        grp_per.FieldByName('sch_razn').Value:=grp_per.FieldByName('sch_kub').Value-grp_per.FieldByName('sch_sumabon').Value;









        if grp_per.FieldByName('sch_razn').Value>0 then
        begin

          IBQuery3.Close;
          IBQuery3.SQL.Text:='select count(*) cn,sum(koli_p) kollud from hv_per where (wid=42 or wid=45) and ul=:uul and n_dom=:ndom and yearmon=:ym group by ul,n_dom';
          IBQuery3.ParamByName('uul').Value:=grp_perUL.AsString;
          IBQuery3.ParamByName('ndom').Value:=grp_perN_DOM.AsString;
          IBQuery3.ParamByName('ym').Value:=grp_perYEARMONP.AsInteger;
          IBQuery3.Open;
          IBQuery3.FetchAll;
          IBQuery3.First;

          if IBQuery2.FieldByName('cn').Value>0 then
          begin
                hvdrozpdom.Close;
                hvdrozpdom.SelectSQL.Text:='select * from h_voda where (wid=42 or wid=45) and ul=:uul and n_dom=:ndom and yearmon=:ym order by schet';
                hvdrozpdom.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
                hvdrozpdom.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
                hvdrozpdom.ParamByName('ym').Value:=MainForm.period;
                hvdrozpdom.Open;
                hvdrozpdom.FetchAll;
                hvdrozpdom.First;
                 while not hvdrozpdom.Eof do
                begin
                  hvdrozpdom.Edit;
                  hvdrozpdomKUB_NOBALANS.Value:=SimpleRoundTo((DS.FieldByName('sch_razn').Value/IBQuery2.FieldByName('kollud').Value)*iif(hvdrozpdomKOLI_P.AsInteger>0,hvdrozpdomKOLI_P.AsInteger,1),-3);
    //              hvdrozpdomKUB_ALL.Value:=hvdrozpdomKUB_NOBALANS.Value;
                  hvdrozpdomNORM_BLICH.Value:=0;
                  hvdrozpdomR_NACH.Value:='';
                  hvdrozpdomR_NOBAL.Value:='������� ��������� ���� �������������� �� �������, ��������� ��� ��������� ��� ��� ������, ����������� �-� ����� ��� �������.';
                  hvdrozpdom.Post;
                  Form2.kub_all(hvdrozpdom);
                  hvdrozpdom.Next;
                end;
          end
          else
          begin

          IBQuery2.Close;
          IBQuery2.SQL.Text:='select count(*) cn, sum(sch_razn+nor_razn) kuball from h_voda where wid<46 and ul=:uul and n_dom=:ndom and yearmon=:ym group by ul,n_dom';
          IBQuery2.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
          IBQuery2.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
          IBQuery2.ParamByName('ym').Value:=MainForm.period;
          IBQuery2.Open;
          IBQuery2.FetchAll;
          IBQuery2.First;

            if IBQuery2.FieldByName('cn').Value>0 then
            begin
                hvdrozpdom.Close;
                hvdrozpdom.SelectSQL.Text:='select * from h_voda where wid<46 and ul=:uul and n_dom=:ndom and yearmon=:ym order by schet';
                hvdrozpdom.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
                hvdrozpdom.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
                hvdrozpdom.ParamByName('ym').Value:=MainForm.period;
                hvdrozpdom.Open;
                hvdrozpdom.FetchAll;
                hvdrozpdom.First;

                while not hvdrozpdom.Eof do
                begin
                  hvdrozpdom.Edit;
                  hvdrozpdomKUB_NOBALANS.Value:=SimpleRoundTo((DS.FieldByName('sch_razn').Value/IBQuery2.FieldByName('kuball').Value)*(hvdrozpdomSCH_RAZN.Value+hvdrozpdomNOR_RAZN.Value),-3);
                 // hvdrozpdomKUB_ALL.Value:=hvdrozpdomKUB_NOBALANS.Value+hvdrozpdomSCH_RAZN.Value+hvdrozpdomNOR_RAZN.Value;
                  hvdrozpdomNORM_BLICH.Value:=0;
                  hvdrozpdomR_NOBAL.Value:='������� ��������� ���� �������������� �� ������� ����������� ����������';
                  hvdrozpdom.Post;
                  Form2.kub_all(hvdrozpdom);
                  hvdrozpdom.Next;
                end;

            end;



          end;








        end;


        DS.Post;
        IBTransaction1.CommitRetaining;
    end;

end;


procedure TMainForm.calcalldomlich;
begin

    Form4.Show;
   //  Form4.Label3.Caption:='Start -'+DateTimeToStr(now());

     MainForm.Enabled:=false;
     Form4.Label2.Caption:='���������� ���������...';
     Form4.cxProgressBar1.Properties.Min:=0;
     Form4.cxProgressBar1.Properties.Max:=0;
     application.ProcessMessages;

    grp.Close;
    grp.ParamByName('yearmon').Value:=MainForm.period;
    grp.Open;
    grp.FetchAll;


    Form4.cxProgressBar1.Properties.Max:=grp.RecordCount-1;
 //Form4.Label1.Caption:='allcalclich';
    application.ProcessMessages;

    IBQuery2.Close;
    IBQuery2.SQL.Text:='update h_voda set kub_nobalans=0 where yearmon=:ym';
    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.ExecSQL;

    IBTransaction1.CommitRetaining;

    Form4.cxProgressBar1.Position:=0;
    while not grp.eof do
    begin
    Form4.cxProgressBar1.Position:=Form4.cxProgressBar1.Position+1;
    Form4.Label4.Caption:=grpUL.Value+' '+grpN_DOM.Value;
    application.ProcessMessages;

         calcdomlich(grp);

      IBQuery2.Close;
      IBQuery2.SQL.Text:='select sum(kub_nobalans) nobal from h_voda where ul=:uul and n_dom=:ndom and yearmon=:ym group by ul,n_dom';
      IBQuery2.ParamByName('uul').Value:=grp.FieldByName('UL').Value;
      IBQuery2.ParamByName('ndom').Value:=grp.FieldByName('N_DOM').Value;
      IBQuery2.ParamByName('ym').Value:=MainForm.period;
      IBQuery2.Open;
      grp.edit;
      grpRAZN.Value:=IBQuery2.FieldByName('nobal').Value;
     grp.Post;


         if not Form4.Visible then
         begin
            imp.edit;
            impLASTROZR.Value:=0;
            imp.Post;
            IBTransaction1.CommitRetaining;
            Update;

         Break;
         end;



      grp.Next;
    end;

  IBTransaction1.CommitRetaining;

  Update;

   Form4.Label3.Caption:=Form4.Label3.Caption+' End-'+DateTimeToStr(now());
   Form4.Label4.Caption:='';
   Form4.Label2.Caption:='';

  Form4.Close;
   MainForm.Enabled:=true;





end;

procedure TMainForm.calcdomlich(DS:TIBDataSet);
var sumabon:Currency;
    kol_lud:integer;
begin



    IBQuery2.Close;
    IBQuery2.SQL.Text:='select org,sum(sch_razn+nor_razn) kuball from h_voda where wid<46 and wid<>42 and wid<>45 and ul=:uul and n_dom=:ndom and yearmon=:ym group by org';
    IBQuery2.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
    IBQuery2.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
    IBQuery2.ParamByName('ym').Value:=MainForm.period;
    IBQuery2.Open;
    IBQuery2.FetchAll;

    sumabon:=0;
    kol_lud:=0;

    DS.Edit;
    IBQuery2.First;
    while not IBQuery2.Eof do
    begin
      if IBQuery2.FieldByName('org').Value=0 then
         DS.FieldByName('sch_nas').Value:=IBQuery2.FieldByName('kuball').Value;
      if IBQuery2.FieldByName('org').Value=1 then
         DS.FieldByName('sch_ur').Value:=IBQuery2.FieldByName('kuball').Value;
      sumabon:=sumabon + IBQuery2.FieldByName('kuball').Value;
      IBQuery2.Next;
    end;
    DS.FieldByName('sch_sumabon').Value:=sumabon;
    DS.FieldByName('sch_kub').Value:=DS.FieldByName('sch_cur').Value-DS.FieldByName('sch_old').Value;
    DS.FieldByName('sch_razn').Value:=DS.FieldByName('sch_kub').Value-DS.FieldByName('sch_sumabon').Value;

    if DS.FieldByName('sch_razn').Value>0 then
    begin

      IBQuery2.Close;
      IBQuery2.SQL.Text:='select count(*) cn,sum(koll) kollud from (select schet, iif(koli_p>0,koli_p,1) koll, wid, ul, n_dom from h_voda where (wid=42 or wid=45) and ul=:uul and n_dom=:ndom and yearmon=:ym) group by ul,n_dom';
      IBQuery2.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
      IBQuery2.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
      IBQuery2.ParamByName('ym').Value:=MainForm.period;
      IBQuery2.Open;
      IBQuery2.FetchAll;
      IBQuery2.First;

      if IBQuery2.FieldByName('cn').Value>0 then
      begin
            hvdrozpdom.Close;
            hvdrozpdom.SelectSQL.Text:='select * from h_voda where (wid=42 or wid=45) and ul=:uul and n_dom=:ndom and yearmon=:ym order by schet';
            hvdrozpdom.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
            hvdrozpdom.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
            hvdrozpdom.ParamByName('ym').Value:=MainForm.period;
            hvdrozpdom.Open;
            hvdrozpdom.FetchAll;
            hvdrozpdom.First;
             while not hvdrozpdom.Eof do
            begin
              hvdrozpdom.Edit;
              hvdrozpdomKUB_NOBALANS.Value:=SimpleRoundTo((DS.FieldByName('sch_razn').Value/IBQuery2.FieldByName('kollud').Value)*iif(hvdrozpdomKOLI_P.AsInteger>0,hvdrozpdomKOLI_P.AsInteger,1),-3);
//              hvdrozpdomKUB_ALL.Value:=hvdrozpdomKUB_NOBALANS.Value;
              hvdrozpdomNORM_BLICH.Value:=0;
              hvdrozpdomR_NACH.Value:='';
              hvdrozpdomR_NOBAL.Value:='������� ��������� ���� �������������� �� �������, ��������� ��� ��������� ��� ��� ������, ����������� �-� ����� ��� �������.';
              hvdrozpdom.Post;
              Form2.kub_all(hvdrozpdom);
              hvdrozpdom.Next;
            end;
      end
      else
      begin

      IBQuery2.Close;
      IBQuery2.SQL.Text:='select count(*) cn, sum(sch_razn+nor_razn) kuball from h_voda where wid<46 and ul=:uul and n_dom=:ndom and yearmon=:ym group by ul,n_dom';
      IBQuery2.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
      IBQuery2.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
      IBQuery2.ParamByName('ym').Value:=MainForm.period;
      IBQuery2.Open;
      IBQuery2.FetchAll;
      IBQuery2.First;

        if IBQuery2.FieldByName('cn').Value>0 then
        begin
            hvdrozpdom.Close;
            hvdrozpdom.SelectSQL.Text:='select * from h_voda where wid<46 and ul=:uul and n_dom=:ndom and yearmon=:ym order by schet';
            hvdrozpdom.ParamByName('uul').Value:=DS.FieldByName('UL').Value;
            hvdrozpdom.ParamByName('ndom').Value:=DS.FieldByName('N_DOM').Value;
            hvdrozpdom.ParamByName('ym').Value:=MainForm.period;
            hvdrozpdom.Open;
            hvdrozpdom.FetchAll;
            hvdrozpdom.First;

            while not hvdrozpdom.Eof do
            begin
              hvdrozpdom.Edit;
              hvdrozpdomKUB_NOBALANS.Value:=SimpleRoundTo((DS.FieldByName('sch_razn').Value/IBQuery2.FieldByName('kuball').Value)*(hvdrozpdomSCH_RAZN.Value+hvdrozpdomNOR_RAZN.Value),-3);
             // hvdrozpdomKUB_ALL.Value:=hvdrozpdomKUB_NOBALANS.Value+hvdrozpdomSCH_RAZN.Value+hvdrozpdomNOR_RAZN.Value;
              hvdrozpdomNORM_BLICH.Value:=0;
              hvdrozpdomR_NOBAL.Value:='������� ��������� ���� �������������� �� ������� ����������� ����������';
              hvdrozpdom.Post;
              Form2.kub_all(hvdrozpdom);
              hvdrozpdom.Next;
            end;

        end;



      end;








    end;


    DS.Post;
    IBTransaction1.CommitRetaining;

end;

procedure TMainForm.dxBarButton3Click(Sender: TObject);
begin
    if application.MessageBox(PAnsiChar(AnsiString('�� ����� ������ �������� �������� '+DSet.FieldByName('SCHET').AsString+' '+DSet.FieldByName('FIO').AsString+' ?')),'ϳ�����������',MB_YESNO)=IDNO then
    exit;
    DSet.delete;

end;

procedure TMainForm.DBGrid1Column1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

     Form2.Find(DSet.FieldByName('SCHET').Value);
     Form2.Show;
end;

procedure TMainForm.DBGrid1Column2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (isArchive) or (impLASTEXP.Value=1) then
      exit;

   if DSet.FieldByName('WID').Value=45 then
   begin
     ShowMessage('˳������� �� ��������! �������� ��������� �������');
     exit;
   end;

   if DSet.FieldByName('WID').Value=42 then
   begin
     ShowMessage('˳������� �� ������������! �������� ��������� �������');
     exit;
   end;

   if DSet.FieldByName('WID').Value>=46 then
   begin
     ShowMessage('��� ����� ��� ���������� �������� ��������� �� ������������! �������� ��������� �������');
     exit;
   end;


    MainForm.pokazn.SelectSQL.Text:=MainForm.pokSQL+' where pokazn.schet=:sch order by date_pok desc';
    MainForm.pokazn.ParamByName('sch').Value:=DSet.FieldByName('SCHET').Value;
    MainForm.pokazn.Close;
    MainForm.pokazn.open;
//     Form2.Show;
//     Form2.cxPageControl1.ActivePage:=Form2.cxTabSheet3;
FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=true;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet3;
FormAddkart.cxTextEdit9.Text:=DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel15.Caption:=DSet.FieldByName('FIO').Value;
FormAddkart.cxCalcEdit6.EditValue:=DSet.FieldByName('NOR_RAZN').Value;

  if (FormAddkart.cxTabSheet3.Visible) and (DSet.FieldByName('LICH_TO').AsInteger=0) then
  begin
    ShowMessage('�� �� ������ ������ ��������, ��� �� ���� ����� �����!!!');
    exit;
  end;

FormAddkart.Show;
if FormAddkart.IBQuery1.RecordCount<>0 then
begin
  FormAddkart.cxDateEdit5.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
  if FormAddkart.IBQuery1.FieldByName('pokazn').IsNull then
    FormAddkart.cxCalcEdit2.Text:='0'
  else
    FormAddkart.cxCalcEdit2.Text:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;
end;

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


       if (AViewInfo.GridRecord.Values[DBGrid1LICH_YEARMON.Index] < MainForm.period) then
    ACanvas.Brush.Color := clScrollBar;
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
if (not IBDatabase.Connected) or (fl_startprog) then exit;
update;

//  if (data.Active and dom.Active)then
//  begin
//
//   if hvd.State in [dsInsert,dsEdit] then hvd.Post;
//   if cxPageControl1.ActivePage=cxTabSheet1 then hvd.Close
//   else if cxPageControl1.ActivePage=cxTabSheet2 then prop.close
//   else if cxPageControl1.ActivePage=cxTabSheet3 then grp.close;
//
//
//   if cxPageControl1.ActivePage=cxTabSheet1 then hvd.open
//   else if cxPageControl1.ActivePage=cxTabSheet2 then prop.open
//   else if cxPageControl1.ActivePage=cxTabSheet3 then grp.open;
//
//   if isArchive then
//   begin
//     dxBarButton6.Enabled:=false;
//     DBGrid1.OptionsData.Deleting:=false;
//     DBGrid1.OptionsData.Editing:=false;
//     DBGrid1.OptionsData.Inserting:=false;
//
//     DBGrid2.OptionsData.Deleting:=false;
//     DBGrid2.OptionsData.Editing:=false;
//     DBGrid2.OptionsData.Inserting:=false;
//
//     DBGrid3.OptionsData.Deleting:=false;
//     DBGrid3.OptionsData.Editing:=false;
//     DBGrid3.OptionsData.Inserting:=false;
//   end
//   else
//   begin
//     dxBarButton6.Enabled:=true;
//     DBGrid1.OptionsData.Deleting:=true;
//     DBGrid1.OptionsData.Editing:=true;
//     DBGrid1.OptionsData.Inserting:=true;
//
//     DBGrid2.OptionsData.Deleting:=true;
//     DBGrid2.OptionsData.Editing:=true;
//     DBGrid2.OptionsData.Inserting:=true;
//
//     DBGrid3.OptionsData.Deleting:=true;
//     DBGrid3.OptionsData.Editing:=true;
//     DBGrid3.OptionsData.Inserting:=true;
//    end;
//  end;
end;

procedure TMainForm.hvdBeforeOpen(DataSet: TDataSet);
begin
  hvd.ParamByName('yearmon').AsInteger:=CurYM;
//  hvd.ParamByName('dom').AsString:=dxBarLookupCombo1.Text;
//
//  if dxBarLookupCombo1.Enabled then
//    hvd.ParamByName('all').asInteger:=0
//  else
//    hvd.ParamByName('all').asInteger:=1;
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
    url:=iniFile.ReadString('site','url','');
    urlsend:=iniFile.ReadString('site','urlsend','');
    startimport:=iniFile.ReadString('viber','startimport','');
    sendmessbefoimp:=iniFile.ReadString('viber','sendmessbefoimp','');

    IBDatabase.DatabaseName:=IniFile.ReadString('Login', 'Database', ExtractFilePath(ParamStr(0))+'\gku.fdb');
    IBDatabase.Params.Clear;
    IBDatabase.Params.Add('user_name='+IniFile.ReadString('Login', 'Username', 'sysdba'));
    IBDatabase.Params.Add('password='+IniFile.ReadString('Login', 'Password', 'masterkey'));
    IBDatabase.Params.Add('lc_ctype=WIN1251');



//    p:=pos(':',IBDatabase.DatabaseName);
//    if (p=0) or (p=2) then
//    begin
//      IBBackupService1.DatabaseName:=IBDatabase.DatabaseName;
//     IBBackupService1.ServerName:='';
//      IBBackupService1.Protocol:=Local;
//    end
//    else
//    begin
//      IBBackupService1.DatabaseName:=copy(IBDatabase.DatabaseName,p+1,length(IBDatabase.DatabaseName));
//      IBBackupService1.ServerName:=copy(IBDatabase.DatabaseName,1,p-1);
//      IBBackupService1.Protocol:=TCP;
//    end;

//    IBBackupService1.Params.Clear;
//    IBBackupService1.Params.Add('user_name='+IniFile.ReadString('Login', 'Username', 'sysdba'));
//    IBBackupService1.Params.Add('password='+IniFile.ReadString('Login', 'Password', 'masterkey'));
//    IBBackupService1.BackupFile.Clear;
//    s:=IniFile.ReadString('Login', 'BackupDir', 'c:\');
//    s:=s+'gku'+Date2Str(now)+'.gbk';
//    IBBackupService1.BackupFile.add(s);

//    if not FileExists(s) then
//    try
//      IBBackupService1.Attach;
//      IBBackupService1.ServiceStart;
//    except
//    end;

  except
    on E: Exception do
      begin
        messagedlg('�������� � ��������� ���� ������. ������ ������������ ('+E.Message+')',mtError,[mbCancel],0);
        Application.Terminate;
      end;
  end;




end;

procedure TMainForm.ActionExportExecute(Sender: TObject);
begin
  if cxPageControl1.ActivePage=cxTabSheet1 then self.ExportGrid(cxGrid2)
  else if cxPageControl1.ActivePage=cxTabSheet3 then self.ExportGrid(cxGrid4)
  else if cxPageControl1.ActivePage=cxTabSheet4 then self.ExportGrid(cxGrid1);

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

procedure TMainForm.prop1DDSetText(Sender: TField; const Text: String);
begin
  if (str2int(Text)<1) or (str2int(Text)>31) then
    Sender.AsInteger:=1
  else
    Sender.AsString:=Text;

end;

procedure TMainForm.prop1KOLISetText(Sender: TField; const Text: String);
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
   // ������� �� ���������

 //   DBGrid1SCHET.Options.Editing:=true;
 //   DBGrid1FIO.Options.Editing:=true;
    //DBGrid1n_sch.Options.Editing:=true;
 //   DBGrid1SCHET.Focused:=true;
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

procedure TMainForm.hvddom2BeforeOpen(DataSet: TDataSet);
begin
  hvddom2.ParamByName('yearmon').AsInteger:=CurYM;
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
  grp.ParamByName('yearmon').AsInteger:=curYM;

end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var fl_exit:boolean;
begin

//  IBTransaction1.CommitRetaining;
  FormConn.TestConn;


  //try
      if not isArchive then
      begin

        imp.Close;
       imp.Open;
       if LASTROZR<>impLASTROZR.Value then
          update;

//       if (cxLabel1.Visible) and (impLASTROZR.Value=0) then
//            update;
//        if (not cxLabel1.Visible) and (impLASTROZR.Value>0) then
//           update;
      end;
//  except
//   on E : Exception do
//   begin
//    Timer1.Enabled:=false;
//    fl_exit:=false;
//
//    while not fl_exit do
//    begin
//      try
//      Application.ProcessMessages;
//      IBDatabase.Close;
//      IBDatabase.Open;
//      IBTransaction1.Active:=true;
//      data.Open;
//      dom.Open;
//      Update;
//      Timer1.Enabled:=true;
//      fl_exit:=true;
//
 //     except
 //     on E : Exception do
//        begin
//          if application.MessageBox('������� ��� ��������� �� ���� �����! ���������� ����������� �����?','ϳ�����������',MB_YESNO)<>IDYES then
//          begin
//             fl_exit:=true;
//             close;
//          end;
//        end;
 //     end;
//
//
//
//
//    end;
//
//
//
 //  end;
//  end;


end;

procedure TMainForm.grpNewRecord(DataSet: TDataSet);
begin
  grpYEARMON.Value:=CurYM;

end;

procedure TMainForm.grpSCH_CURChange(Sender: TField);
begin
   if MainForm.grp.FieldByName('SCH_CUR').Value<>0 then
   begin
     MainForm.grp.Edit;
     MainForm.grp.FieldByName('SCH_KUB').Value:=MainForm.grp.FieldByName('SCH_CUR').Value-MainForm.grp.FieldByName('SCH_OLD').Value;
     MainForm.grp.Post;
     MainForm.IBTransaction1.CommitRetaining;
   end;
end;

procedure TMainForm.ActionPrintExecute(Sender: TObject);
begin
//  hvd_rep.Open;
  IBQueryRep.SQL.Text:='SELECT * FROM H_VODA where h_voda.yearmon=:yearmon and (h_voda.org=0) ORDER BY H_VODA.SCHET';
  IBQueryRep.ParamByName('yearmon').AsInteger := CurYM;
  IBQueryRep.Open;

  if fileexists(ExtractFilePath(ParamStr(0))+'hvd_dm.fr3') then
    frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'hvd_dm.fr3')
  else
    frxReport1.SaveToFile(ExtractFilePath(ParamStr(0))+'hvd_dm.fr3');

  frxReport1.ShowReport;
  IBQueryRep.Close;
 // hvd_rep.Close;
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
    //DBGrid1n_sch.Options.Editing:=true;
    DBGrid1SCHET.Focused:=true;
//    ADone:=true;
  end;
  if AButtonIndex=NBDI_EDIT then
  begin
    DBGrid1SCHET.Options.Editing:=true;
    DBGrid1FIO.Options.Editing:=true;
  //  DBGrid1n_sch.Options.Editing:=true;
//    ADone:=true;
  end;
end;

procedure TMainForm.DBGrid1NOR_RAZNPropertiesChange(Sender: TObject);
begin
 if DSet.FieldByName('WID').Value<>46 then
    DSet.Cancel;


end;

procedure TMainForm.DBGrid1WIDPropertiesEditValueChanged(Sender: TObject);
begin
//    if Sender.Items[DBGrid1WID.Index].EditValue=6 then
//    begin
//      DBGrid1NOR_RAZN.Options.Editing:=true;
//      DBGrid1NOR_RAZN.Properties.ReadOnly:=false;
//    end
//    else
//    begin
//      DBGrid1NOR_RAZN.Options.Editing:=false;
//      DBGrid1NOR_RAZN.Properties.ReadOnly:=true;
//    end;
end;

procedure TMainForm.DBGrid3SCH_CURPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
if DisplayValue-MainForm.grp.FieldByName('SCH_OLD').Value<0 then
begin
//    ShowMessage('�������� �������� ������� �� �������! �������� ����������� �������� �����!');
    ErrorText:='�������� �������� ������� �� �������! �������� ����������� �������� �����!';
    Error:=true;
end;

end;

procedure TMainForm.ActionPrintTotalExecute(Sender: TObject);
begin
  //hvd_rep.Open;
  IBQueryRep.SQL.Text:='SELECT * FROM H_VODA where h_voda.yearmon=:yearmon and (h_voda.org=0) ORDER BY SCHET';
  IBQueryRep.ParamByName('yearmon').AsInteger := CurYM;
  IBQueryRep.Open;

  if fileexists(ExtractFilePath(ParamStr(0))+'hvd_tot_dm.fr3') then
    frxReport2.LoadFromFile(ExtractFilePath(ParamStr(0))+'hvd_tot_dm.fr3')
  else
    frxReport2.SaveToFile(ExtractFilePath(ParamStr(0))+'hvd_tot_dm.fr3');

  frxReport2.ShowReport;
   IBQueryRep.Close;
  //hvd_rep.Close;
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
  DBGrid1FIO.Options.Editing:=false;

end;

procedure TMainForm.hvdallBeforeOpen(DataSet: TDataSet);
begin
  hvdall.ParamByName('yearmon').AsInteger:=CurYM;
end;

procedure TMainForm.AddFilter(column:TcxGridDBBandedColumn;text:string);
var    I:integer;
begin

  DBGrid1.DataController.Filter.Active := true;

  if (Text<>'') then
  begin
      DBGrid1.DataController.Filter.BeginUpdate;
      try
//          if (column=cxGrid1DBTableView1PR_DOM) or (column=cxGrid1DBTableView1PR_KV)then
//             cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foEqual, Text, Text)
//          else
//          if (column=cxGrid1DBTableView1MN_DATA) then
//          begin
//             if cxComboBox1.Text='=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foEqual, Text, Text);
//             if cxComboBox1.Text='<>' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foNotEqual, Text, Text);
//             if cxComboBox1.Text='>=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foGreaterEqual, Text, Text);
//             if cxComboBox1.Text='<=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foLessEqual, Text, Text);
//          end
//             else
                DBGrid1.DataController.Filter.Root.AddItem(column, foLike, '%'+Text+'%', Text);
      finally
      DBGrid1.DataController.Filter.EndUpdate;
      end;
//      cxGrid1DBTableView1.DataController.Filter.Active := true;
//

  end;

end;

procedure TMainForm.DelFilter(col:TcxGridDBBandedColumn;s:string);
var I:integer;
begin

with DBGrid1.DataController do
  begin
    try
      Filter.BeginUpdate;
//      cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1FAM, foLike, '%'+cxTextEdit1.Text+'%', cxTextEdit1.Text);
      for I := Filter.Root.Count - 1 downto 0 do
        if (not Filter.Root.Items[I].IsItemList) then
        begin
//          if (col=cxGrid1DBTableView1PR_DOM) or (col=cxGrid1DBTableView1PR_KV)then
//          begin
//          if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).Value = s) and
//             ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
//              Filter.Root.Items[I].free;
//          end
//          else
//            if (col=cxGrid1DBTableView1MN_DATA)then
//            begin
//            if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
//                Filter.Root.Items[I].free;
//            end
//            else
//               if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).Value = '%'+s+'%') and
//                  ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
                  Filter.Root.Items[I].free

        end;
    finally
      Filter.EndUpdate;
    end;
  end;
  DBGrid1.DataController.Filter.Active := true;



end;

procedure TMainForm.cxBarEditItem1Exit(Sender: TObject);
begin
   DelFilter(DBGrid1SCHET,cxBarEditItem1.EditValue);
   AddFilter(DBGrid1SCHET,cxBarEditItem1.EditValue);
end;

procedure TMainForm.cxBarEditItem1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//DelFilter(DBGrid1SCHET,cxBarEditItem1.EditValue);
end;

procedure TMainForm.cxBarEditItem3Exit(Sender: TObject);
begin
   DelFilter(cxGridDBBandedColumn2,cxBarEditItem1.EditValue);
   AddFilter(cxGridDBBandedColumn2,cxBarEditItem1.EditValue);
end;

procedure TMainForm.cxButton2Click(Sender: TObject);
begin
  Update;
end;

procedure TMainForm.Update;
begin
if hvd.State in [dsInsert,dsEdit] then hvd.Post;
if org.State in [dsInsert,dsEdit] then org.Post;
if grp.State in [dsInsert,dsEdit] then grp.Post;
IBTransaction1.CommitRetaining;

  imp.Close;
  imp.Open;
  LASTROZR:=impLASTROZR.Value;

  if (data.Active)then
  begin
  StartWait;
  org.Close;
  org.Open;
  grp.Close;
  grp.Open;

  hvd.Close;
  hvd.open;

  hvddom2.Close;
  hvddom2.Open;

  vid_rn.close;
  vid_nach.close;
  vid_nach46.close;

  vid_rn.open;
  vid_nach.open;
  vid_nach46.open;

//   if hvd.State in [dsInsert,dsEdit] then hvd.Post;
//   if cxPageControl1.ActivePage=cxTabSheet1 then hvd.Close
//   else if cxPageControl1.ActivePage=cxTabSheet2 then prop.close
//   else if cxPageControl1.ActivePage=cxTabSheet3 then grp.close;
//
//
//   if cxPageControl1.ActivePage=cxTabSheet1 then hvd.open
//   else if cxPageControl1.ActivePage=cxTabSheet2 then prop.open
//   else if cxPageControl1.ActivePage=cxTabSheet3 then grp.open;

   if (isArchive) or (impLASTROZR.Value>0) then
   begin
     if isArchive then
        cxLabel1.Caption:='�����! ����������� ����� �������. �� � �����!'
     else if impLASTROZR.Value=1 then
        cxLabel1.Caption:='�����! ����������� ����� �������. ��������� ��������� ������� ����������!'
     else if impLASTROZR.Value=2 then
        cxLabel1.Caption:='�����! ����������� ����� �������. �������� ������ ���������� �����, ������� �������� �����!';

     Application.ProcessMessages;
     cxLabel1.Visible:=true;
     dxBarButton6.Enabled:=false;
     DBGrid1.OptionsData.Deleting:=false;
     DBGrid1WID.Properties.ReadOnly:=true;
     DBGrid1NOR_RAZN.Properties.ReadOnly:=true;
     DBGrid3SCH_CUR.Properties.ReadOnly:=true;
     Form2.Panel1.Enabled:=false;
     Form2.Panel5.Enabled:=false;
     Form2.Panel3.Enabled:=false;
     Form2.Panel4.Enabled:=false;
     Form2.Panel2.Enabled:=false;
     Form2.Panel6.Enabled:=false;

//     DBGrid1.OptionsData.Editing:=false;
     DBGrid1.OptionsData.Inserting:=false;

     dxBarButton3.Enabled:=false;
     dxBarButton21.Enabled:=false;
     dxBarButton24.Enabled:=false;
     dxBarButton22.Enabled:=false;
     dxBarButton35.Enabled:=false;
     dxBarButton36.Enabled:=false;
     dxBarButton37.Enabled:=false;
   end
   else
   begin
     cxLabel1.Visible:=false;
     dxBarButton6.Enabled:=true;
     DBGrid1.OptionsData.Deleting:=true;
 //    DBGrid1WID.Properties.ReadOnly:=false;
     DBGrid1NOR_RAZN.Properties.ReadOnly:=false;
     DBGrid3SCH_CUR.Properties.ReadOnly:=false;
//     DBGrid1.OptionsData.Editing:=true;
     Form2.Panel1.Enabled:=true;
     Form2.Panel5.Enabled:=true;
     Form2.Panel3.Enabled:=true;
     Form2.Panel4.Enabled:=true;
     Form2.Panel2.Enabled:=true;
     Form2.Panel6.Enabled:=true;

     DBGrid1.OptionsData.Inserting:=true;

     dxBarButton3.Enabled:=true;
     dxBarButton21.Enabled:=true;
     dxBarButton24.Enabled:=true;
     dxBarButton22.Enabled:=true;
     dxBarButton35.Enabled:=true;
     dxBarButton36.Enabled:=true;
     dxBarButton37.Enabled:=true;
    end;

    StopWait;
  end;

  if SplashForm.Visible then
  begin
    SplashForm.Visible:=false;
   // SplashForm.Hide;
   // SplashForm.Free;
  end;  
end;

procedure TMainForm.cxGrid3DBTableView1KUB_ALLStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if (ARecord.Values[cxGrid3DBTableView1KUB_ALL.Index] < 0) then
     AStyle:=cxStyle3
 else AStyle:=cxStyle2;
end;

procedure TMainForm.cxGrid3DBTableView1SCH_RAZNDOMStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if (ARecord.Values[cxGrid3DBTableView1SCH_RAZNDOM.Index] < 0) then
     AStyle:=cxStyle3
 else AStyle:=cxStyle2;
end;

procedure TMainForm.cxGridDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
      if Key=VK_RETURN then
    if not cxGridDBBandedTableView1.DataController.DataSet.Eof then Key:=VK_DOWN;
end;

procedure TMainForm.cxGridDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key=VK_INSERT then abort;
end;

procedure TMainForm.cxGridDBBandedTableView1KUB_ALLStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if (ARecord.Values[cxGridDBBandedTableView1KUB_ALL.Index] < 0) then
     AStyle:=cxStyle3
 else AStyle:=cxStyle2;
end;

procedure TMainForm.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 // if prop.State in [dsInsert,dsEdit] then prop.Post;
  if grp.State in [dsInsert,dsEdit] then grp.Post;
  if hvd.State in [dsInsert,dsEdit] then hvd.Post;
  if org.State in [dsInsert,dsEdit] then org.Post;

//  if cxPageControl1.ActivePage=cxTabSheet1 then //hvd.Close
//  else if cxPageControl1.ActivePage=cxTabSheet2 then prop.close
//  else if cxPageControl1.ActivePage=cxTabSheet3 then grp.close;

  IBtransaction1.CommitRetaining;

//  if NewPage=cxTabSheet1 then hvd.Open
//  else if NewPage=cxTabSheet2 then prop.Open
//  else if NewPage=cxTabSheet3 then grp.Open
//  else if NewPage=cxTabSheet4 then org.Open;

end;

procedure TMainForm.cxTabSheet1Show(Sender: TObject);
begin
DSet:=hvd;
DataAllSource.DataSet:=DSet;
end;

procedure TMainForm.cxTabSheet4Show(Sender: TObject);
begin
DSet:=org;
DataAllSource.DataSet:=DSet;
end;

procedure TMainForm.dxBarButton7Click(Sender: TObject);
begin
  FormItogHvd.ShowModal;
end;

procedure TMainForm.dataCalcFields(DataSet: TDataSet);
begin
  dataym.Value:=Date2Str(YearMon2Date(dataYearMon.Value),'yyyy MMMM');
end;

procedure TMainForm.dataAfterClose(DataSet: TDataSet);
var ss:string;
begin
   ss:='qqq';
end;

procedure TMainForm.dataAfterOpen(DataSet: TDataSet);
begin
  data.FetchAll;
  data.First;
  dxBarLookupCombo2.KeyValue:=dataYEARMON.Value;

end;

procedure TMainForm.dataAfterScroll(DataSet: TDataSet);
var ss:string;
begin
   ss:='qqq';
end;

procedure TMainForm.dxBarButton8Click(Sender: TObject);
begin
  frxReport3.DesignReport;
end;

procedure TMainForm.dxBarButton9Click(Sender: TObject);
begin
   if impLASTEXP.Value<>1 then
   begin
     ShowMessage('����� ���������, ��������� �������� ��������� ���������� � �������� �������� �����!!!');
     exit;
   end;

   

  if application.MessageBox('������� �� ���� ?','ϳ�����������',MB_YESNO)<>IDYES then exit;
  if application.MessageBox('������� �������� ����� ?'+#13 +'�� ��� ������ ��������, � ���������� �� ������� ���� ����� ������������, ��� �� ����������.','ϳ�����������',MB_YESNO)<>IDYES then exit;

 // timer1.Enabled:=false;
  try
    try
     Form4.Show;
     MainForm.Enabled:=false;
    // Timer1.Enabled:=false;
     Form4.Label2.Caption:='�������� �����.���������...';
     application.ProcessMessages;

      execSQL('execute procedure proc_newmon');
        Form4.cxProgressBar1.Position:=25;
        application.ProcessMessages;
      ibtransaction1.Commit;
        Form4.cxProgressBar1.Position:=50;
        application.ProcessMessages;
      execSQL('execute procedure lich_pov');
        Form4.cxProgressBar1.Position:=75;
        application.ProcessMessages;
      ibtransaction1.Commit;
        Form4.cxProgressBar1.Position:=85;
        application.ProcessMessages;

    except
      ibtransaction1.Rollback;
    end;
  finally
    if not ibtransaction1.InTransaction then ibtransaction1.StartTransaction;
    data.Close;
    data.Open;
    period:=dataYEARMON.Value;
    Form4.ImKart;
    allcalclich;
   // timer1.Enabled:=true;
     Form4.Label2.Caption:='�������� �����.���������...';
     Form4.cxProgressBar1.Position:=100;
        application.ProcessMessages;
    MainForm.FormShow(Sender);
  end;
end;

procedure TMainForm.dxBarButton10Click(Sender: TObject);
begin
  Application.ProcessMessages;
  IBtransaction1.CommitRetaining;
  //allcalclich;
  imp.Close;
  imp.Open;

  if impLASTROZR.Value=0 then
  begin
     ShowMessage('�� �� ���������� ������ ����������. ��������� ������ ���������� � �������� �������� �����!!!');
     exit;
  end;

  if impLASTROZR.Value=1 then
  begin
     ShowMessage('�� ������ ������ ���������� ��� �� �� ���������� �� ����. ��������� ������ ���������� � �������� �������� �����!!!');
     exit;
  end;

   if application.MessageBox('�����!!! ������ ��������� �������� ��������� ����������?','ϳ�����������',MB_YESNO)=IDNO then
      exit;



  StartWait;
  Enabled:=false;
  try
    FormEdExpr.Exec('Export','Export('''+
         IniFile.ReadString('Send', 'FileName', 'a:\hvd.dbf')+''')');
  imp.Edit;
  impLASTEXP.Value:=1;
  imp.Post;
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

procedure TMainForm.dxBarButton19Click(Sender: TObject);
begin
viber_task.Close;
viber_task.ParamByName('yearmon').Value:=CurYM;
viber_task.Open;
FormViberTask.cxLabel1.Caption:='';
FormViberTask.Show;
end;

//procedure TMainForm.hvdPERE_DAYValidate(Sender: TField);
//var val:double;
//begin
//  if hvd.State in [dsEdit,dsInsert] then
//  begin
//    if hvdPERE_DAY.IsNull then hvdPERE_RAZN.Clear
//    else
//    begin
//      val:=0;
//      val:=FormEdExpr.getCalcRes('Wozw',VarArrayOf([hvdSCHET.Value,hvdPERE_DAY.Value]));
//      hvdPERE_RAZN.Value := val;
//    end;
//  end;
//end;

end.
