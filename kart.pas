unit kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, ExtCtrls, cxStyles, cxEdit,
  cxControls, cxContainer, cxTextEdit, cxPC, IBCustomDataSet, IBQuery,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,DateUtils, cxGroupBox, cxLabel, cxDBLabel, cxMemo, cxCalc,
  cxImageComboBox, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TForm2 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    Panel3: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxTabSheet7: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2DBTableView1SCHET: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_VS: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_ZN: TcxGridDBColumn;
    cxGrid2DBTableView1NOTE: TcxGridDBColumn;
    cxGrid2DBTableView1N_PLOMB: TcxGridDBColumn;
    cxGridDBTableView1SCHET: TcxGridDBColumn;
    cxGridDBTableView1TIP: TcxGridDBColumn;
    cxGridDBTableView1N_LICH: TcxGridDBColumn;
    cxGridDBTableView1DATA_VIP: TcxGridDBColumn;
    cxGridDBTableView1DATA_POV: TcxGridDBColumn;
    cxGridDBTableView1NOTE: TcxGridDBColumn;
    Panel5: TPanel;
    cxButton1: TcxButton;
    cxGridDBTableView1DATA_VIG: TcxGridDBColumn;
    cxGrid2DBTableView1PL: TcxGridDBColumn;
    cxGrid2DBTableView1ZN: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1SCHET: TcxGridDBColumn;
    cxGrid3DBTableView1PL: TcxGridDBColumn;
    cxGrid3DBTableView1N_PLOMB: TcxGridDBColumn;
    cxGrid3DBTableView1DATE_VS: TcxGridDBColumn;
    cxGrid3DBTableView1NOTE: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxGridDBTableView1DATA_STPOV: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    IBQuery1: TIBQuery;
    cxDBTextEdit1: TcxDBTextEdit;
    IBQuery2: TIBQuery;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    Label8: TLabel;
    cxDBLabel1: TcxDBLabel;
    IBQuery5: TIBQuery;
    Label11: TLabel;
    Shape1: TShape;
    Label13: TLabel;
    cxTabSheet8: TcxTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    cxButton11: TcxButton;
    cxGrid7: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxMemo1: TcxMemo;
    Label16: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxButton5: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxGroupBox2: TcxGroupBox;
    Label12: TLabel;
    Label20: TLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxGridDBTableView4ID: TcxGridDBColumn;
    cxGridDBTableView4NOTE: TcxGridDBColumn;
    cxGridDBTableView4DATE_USER: TcxGridDBColumn;
    cxGridDBTableView4VID_ZN: TcxGridDBColumn;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    cxGridDBTableView1ID_USER: TcxGridDBColumn;
    cxGridDBTableView1DATE_USER: TcxGridDBColumn;
    cxGrid3DBTableView1ID_USER: TcxGridDBColumn;
    cxGrid3DBTableView1DATE_USER: TcxGridDBColumn;
    cxGrid2DBTableView1ID_USER: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_USER: TcxGridDBColumn;
    cxGridDBTableView4ID_USER: TcxGridDBColumn;
    cxPageControl4: TcxPageControl;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    Panel9: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxDBTextEdit7: TcxDBTextEdit;
    cxButton18: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    cxTabSheet11: TcxTabSheet;
    Panel7: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    cxButton8: TcxButton;
    cxMemo2: TcxMemo;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxGridDBTableView6YEARMON: TcxGridDBColumn;
    cxGridDBTableView6SUMMA: TcxGridDBColumn;
    cxCalcEdit5: TcxCalcEdit;
    Label30: TLabel;
    cxDBLabel9: TcxDBLabel;
    cxGroupBox3: TcxGroupBox;
    Label22: TLabel;
    cxDBLabel6: TcxDBLabel;
    Label21: TLabel;
    cxDBLabel8: TcxDBLabel;
    Label31: TLabel;
    cxDBLabel10: TcxDBLabel;
    Label32: TLabel;
    cxDBLabel11: TcxDBLabel;
    Label33: TLabel;
    cxDBLabel12: TcxDBLabel;
    Label23: TLabel;
    Label34: TLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBMemo1: TcxDBMemo;
    cxTabSheet12: TcxTabSheet;
    IBQHV: TIBQuery;
    QHVSource: TDataSource;
    IBQHVKL: TIntegerField;
    IBQHVYEARMON: TIntegerField;
    IBQHVPLOMB: TSmallintField;
    IBQHVFIO: TIBStringField;
    IBQHVWID: TSmallintField;
    IBQHVWID_PREV: TIntegerField;
    IBQHVDOM: TIBStringField;
    IBQHVKVART: TIBStringField;
    IBQHVSCHET: TIBStringField;
    IBQHVN_SCH: TIBStringField;
    IBQHVSCH_OLD: TIBBCDField;
    IBQHVSCH_CUR: TIBBCDField;
    IBQHVSCH_RAZN: TIBBCDField;
    IBQHVSCH_RAZN2: TIBBCDField;
    IBQHVKOLI_P: TIBBCDField;
    IBQHVKOLI_P0: TIntegerField;
    IBQHVKOLI_P1: TIntegerField;
    IBQHVNOR_RAZN: TIBBCDField;
    IBQHVGRP_RAZN: TIBBCDField;
    IBQHVPERE_DAY: TIntegerField;
    IBQHVPERE_RAZN: TIBBCDField;
    IBQHVID_KONTR: TSmallintField;
    IBQHVUL: TIBStringField;
    IBQHVN_DOM: TIBStringField;
    IBQHVKV: TIBStringField;
    IBQHVNOTE: TIBStringField;
    IBQHVKOLI_F: TLargeintField;
    IBQHVRASCH_KUB: TIBBCDField;
    IBQHVRASCH_NOR: TIBBCDField;
    IBQHVPOD: TIntegerField;
    IBQHVRASCH_NOTE: TIBStringField;
    IBQHVDATE_POK: TDateField;
    IBQHVVID_POK: TIntegerField;
    IBQHVKUB_MES: TIBBCDField;
    IBQHVLICH_POV: TDateField;
    IBQHVORG: TIntegerField;
    IBQHVVID_RN: TIntegerField;
    IBQHVFILTR: TIntegerField;
    IBQHVPOMPA: TIntegerField;
    IBQHVZN_LICH: TIntegerField;
    IBQHVZNOLD_LICH: TIntegerField;
    IBQHVDATE_ZN: TDateField;
    IBQHVLICH_TO: TIntegerField;
    IBQHVKLNTAR: TIntegerField;
    IBQHVTARIF_NAME: TIBStringField;
    IBQHVNORMA: TFloatField;
    IBQHVOLD_NORM: TFloatField;
    IBQHVDEL_NORM: TFloatField;
    IBQHVPREV_NORM: TFloatField;
    IBQHVSPIS: TFloatField;
    IBQHVLICH_YEARMON: TIntegerField;
    IBQHVEDRPOU: TIntegerField;
    IBQHVKL_UL: TIntegerField;
    IBQHVR_NACH: TIBStringField;
    IBQHVNORM_BLICH: TFloatField;
    IBQHVKUB_NOBALANS: TFloatField;
    IBQHVKUB_ALL: TFloatField;
    IBQHVPLOSCH_UR: TFloatField;
    IBQHVPERERAH: TFloatField;
    IBQHVR_NOBAL: TIBStringField;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2SCHET: TcxGridDBColumn;
    cxGridDBTableView2TIP: TcxGridDBColumn;
    cxGridDBTableView2N_LICH: TcxGridDBColumn;
    cxGridDBTableView2DATA_VIP: TcxGridDBColumn;
    cxGridDBTableView2DATA_ZN: TcxGridDBColumn;
    cxGridDBTableView2ZN: TcxGridDBColumn;
    cxGridDBTableView2DATA_VIG: TcxGridDBColumn;
    cxGridDBTableView2NOTE: TcxGridDBColumn;
    cxGridDBTableView2RASCH_DAY: TcxGridDBColumn;
    cxGridDBTableView2ID_USER: TcxGridDBColumn;
    cxGridDBTableView2DATE_USER: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid9: TcxGrid;
    DBGrid1: TcxGridDBBandedTableView;
    DBGrid1KOLI_P: TcxGridDBBandedColumn;
    DBGrid1NOR_RAZN: TcxGridDBBandedColumn;
    DBGrid1PERE_DAY: TcxGridDBBandedColumn;
    DBGrid1DATE_POK: TcxGridDBBandedColumn;
    DBGrid1SCH_CUR: TcxGridDBBandedColumn;
    DBGrid1SCH_OLD: TcxGridDBBandedColumn;
    DBGrid1SCH_RAZN: TcxGridDBBandedColumn;
    DBGrid1WID: TcxGridDBBandedColumn;
    DBGrid1FILTR: TcxGridDBBandedColumn;
    DBGrid1POMPA: TcxGridDBBandedColumn;
    DBGrid1TARIF_NAME: TcxGridDBBandedColumn;
    DBGrid1NORMA: TcxGridDBBandedColumn;
    DBGrid1DEL_NORM: TcxGridDBBandedColumn;
    DBGrid1SCH_RAZN2: TcxGridDBBandedColumn;
    DBGrid1PREV_NORM: TcxGridDBBandedColumn;
    DBGrid1LICH_YEARMON: TcxGridDBBandedColumn;
    DBGrid1LICH_TO: TcxGridDBBandedColumn;
    DBGrid1R_NACH: TcxGridDBBandedColumn;
    DBGrid1NORM_BLICH: TcxGridDBBandedColumn;
    DBGrid1KUB_NOBALANS: TcxGridDBBandedColumn;
    DBGrid1KUB_ALL: TcxGridDBBandedColumn;
    DBGrid1PERERAH: TcxGridDBBandedColumn;
    DBGrid1R_NOBAL: TcxGridDBBandedColumn;
    DBGrid1SPIS: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    Panel8: TPanel;
    Label35: TLabel;
    cxButton9: TcxButton;
    IBQHVym: TStringField;
    DBGrid1ym: TcxGridDBBandedColumn;
    cxTabSheet13: TcxTabSheet;
    Panel10: TPanel;
    Label36: TLabel;
    cxButton10: TcxButton;
    cxGrid10: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView1KL: TcxGridDBColumn;
    cxGridDBTableView1YEARMONP: TcxGridDBColumn;
    cxGridDBTableView1YEARMON: TcxGridDBColumn;
    cxGridDBTableView1KOLI_P: TcxGridDBColumn;
    cxGridDBTableView1WID: TcxGridDBColumn;
    cxGridDBTableView1SCH_RAZN: TcxGridDBColumn;
    cxGridDBTableView1NOR_RAZN: TcxGridDBColumn;
    cxGridDBTableView1NORM_BLICH: TcxGridDBColumn;
    cxGridDBTableView1SUMNACH: TcxGridDBColumn;
    cxGridDBTableView1KUB_NOBALANS: TcxGridDBColumn;
    cxGridDBTableView1PERERAH: TcxGridDBColumn;
    cxGridDBTableView1NOTEWID: TcxGridDBColumn;
    cxGridDBTableView1NOTERAW: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    hvpererah: TIBDataSet;
    hvpererahKL: TIntegerField;
    hvpererahYEARMON: TIntegerField;
    hvpererahYEARMONP: TIntegerField;
    hvpererahFIO: TIBStringField;
    hvpererahWID: TSmallintField;
    hvpererahWID_PREV: TIntegerField;
    hvpererahSCHET: TIBStringField;
    hvpererahSCH_RAZN: TIBBCDField;
    hvpererahKOLI_P: TIBBCDField;
    hvpererahNOR_RAZN: TIBBCDField;
    hvpererahGRP_RAZN: TIBBCDField;
    hvpererahPERE_RAZN: TIBBCDField;
    hvpererahUL: TIBStringField;
    hvpererahN_DOM: TIBStringField;
    hvpererahKV: TIBStringField;
    hvpererahPOD: TIntegerField;
    hvpererahDATE_POK: TDateField;
    hvpererahORG: TIntegerField;
    hvpererahDEL_NORM: TFloatField;
    hvpererahKL_UL: TIntegerField;
    hvpererahNORM_BLICH: TFloatField;
    hvpererahKUB_NOBALANS: TFloatField;
    hvpererahKUB_ALL: TFloatField;
    hvpererahPERERAH: TFloatField;
    hvpererahNOTEWID: TIBStringField;
    hvpererahFACT: TIntegerField;
    hvpererahNOTERAW: TIBStringField;
    hvpererahSUMNACH: TFloatField;
    hvpererahSource: TDataSource;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure IBQHVCalcFields(DataSet: TDataSet);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      LichPost:boolean;

      function CubAvg12(sch:string):currency;
      procedure Find(sch:string);
      procedure calclich(DS:TIBDataSet);
      procedure calcpok2(DS:TIBDataSet;tip:integer);
      procedure kub_all(DS:TIBDataSet);



  end;

var
  Form2: TForm2;




implementation

uses main, addkart, delkart, mytools, math, Pererah;

{$R *.dfm}

procedure TForm2.kub_all(DS:TIBDataSet);
var sum,sum2:Currency;
begin
//  sum:=DS.FieldByName('SCH_RAZN').AsCurrency+
//  DS.FieldByName('NOR_RAZN').AsCurrency+
//  DS.FieldByName('NORM_BLICH').AsCurrency;
//
//  sum2:=DS.FieldByName('KUB_ALL').AsCurrency-DS.FieldByName('KUB_NOBALANS').AsCurrency;
//
//  DS.Edit;
//  if sum<>sum2 then
//     DS.FieldByName('KUB_NOBALANS').AsCurrency:=0;

  sum:=DS.FieldByName('SCH_RAZN').AsCurrency+
  DS.FieldByName('NOR_RAZN').AsCurrency+
  DS.FieldByName('NORM_BLICH').AsCurrency+
  DS.FieldByName('DEL_NORM').AsCurrency+
  DS.FieldByName('PERERAH').AsCurrency+
  DS.FieldByName('SPIS').AsCurrency+
  DS.FieldByName('KUB_NOBALANS').AsCurrency;
  DS.Edit;
  DS.FieldByName('KUB_ALL').AsCurrency:=SimpleRoundTo(sum,-3);

  DS.Post;

end;

procedure TForm2.calcpok2(DS:TIBDataSet;tip:integer);
var kol,kol2,lastpokazn,endpokazn,nextkub,vid,daymonth,inpokazn:integer;
    date:tdate;
    kub12,kubavg:Currency;
begin
  inpokazn:=0;
  lastpokazn:=0;
  kol:=0;
  kol2:=0;


  if tip=1 then
  begin

    IBQuery5.Close;
    IBQuery5.SQL.Text:='select first 1 schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon<:per and schet=:sch and (del=0 or del is null) order by date_pok desc,id desc';
    IBQuery5.ParamByName('per').Value:=MainForm.period;
    IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
    IBQuery5.Open;


    if IBQuery5.RecordCount<>0 then
    begin
       if IBQuery5.FieldByName('POKAZN').IsNull then
          lastpokazn:=0
       else
          lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;

          date:=IBQuery5.FieldByName('date_pok').Value;
          vid:=IBQuery5.FieldByName('VID_POK').Value;
    end;



    IBQuery6.Close;
    IBQuery6.SQL.Text:='select * from pokazn where yearmon=:ym and schet=:sch and (del=0 or del is null) order by date_pok,id';
    IBQuery6.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
    IBQuery6.ParamByName('ym').Value:=MainForm.period;
    IBQuery6.Open;

     while not IBQuery6.eof do
     begin
       if (IBQuery6.FieldByName('VID_POK').Value<>17) and (IBQuery6.FieldByName('VID_POK').Value<>26) then
           kol:=kol+IBQuery6.FieldByName('POKAZN').Value-lastpokazn;

       lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;
          date:=IBQuery6.FieldByName('date_pok').Value;
          vid:=IBQuery6.FieldByName('VID_POK').Value;
          inpokazn:=1;
       IBQuery6.Next;
     end;
  end
  else
  begin

    if IBQuery6.RecordCount<>0 then
    begin
      IBQuery6.first;
//      if (IBQuery6.FieldByName('schet').Value<>trim(DS.FieldByName('schet').value)) then
          IBQuery6.Locate('schet',trim(DS.FieldByName('schet').value),[]);
      while (not IBQuery6.eof) and (IBQuery6.FieldByName('schet').Value=trim(DS.FieldByName('schet').value)) do
      begin
         if IBQuery6.FieldByName('yearmon').Value<>MainForm.period then
         begin
           if IBQuery6.FieldByName('POKAZN').IsNull then
              lastpokazn:=0
           else
              lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;

              date:=IBQuery6.FieldByName('date_pok').Value;
              vid:=IBQuery6.FieldByName('VID_POK').Value;
         end
         else
         begin
           if (IBQuery6.FieldByName('VID_POK').Value<>17) and (IBQuery6.FieldByName('VID_POK').Value<>26) then
               kol:=kol+IBQuery6.FieldByName('POKAZN').Value-lastpokazn;
              inpokazn:=1;
              lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;
              date:=IBQuery6.FieldByName('date_pok').Value;
              vid:=IBQuery6.FieldByName('VID_POK').Value;


         end;

      IBQuery6.Next;
      end;
    end;

  //  IBQuery6.Prior;

  end;

//    IBQuery5.Close;
//    IBQuery5.SQL.Text:='select pkk.id,pkk.schet,pkk.yearmon,pkk.pokazn,pkk.vid_pok,pkk.date_pok from pokazn pkk '+
//                       'join (select schet, max(date_pok) date_pok, max(id) id from pokazn where yearmon<:per and schet=:sch group by schet) as pok1 on pok1.id=pkk.id';
//    IBQuery5.ParamByName('per').Value:=MainForm.period;
//    IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//    IBQuery5.Open;
//
//    lastpokazn:=0;
//    if IBQuery5.RecordCount<>0 then
//    begin
//       if IBQuery5.FieldByName('POKAZN').IsNull then
//          lastpokazn:=0
//       else
//          lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;
//
//          date:=IBQuery5.FieldByName('date_pok').Value;
//          vid:=IBQuery5.FieldByName('VID_POK').Value;
//    end;
//
//
//
//    IBQuery6.Close;
//    IBQuery6.SQL.Text:='select * from pokazn where yearmon=:per and schet=:sch order by date_pok,id';
//    IBQuery6.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//    IBQuery6.ParamByName('per').Value:=MainForm.period;
//    IBQuery6.Open;
//
//    kol:=0;
//    kol2:=0;
//     while not IBQuery6.eof do
//     begin
//
//
//     if (IBQuery6.FieldByName('VID_POK').Value<>17) and (IBQuery6.FieldByName('VID_POK').Value<>26) then
//         kol:=kol+IBQuery6.FieldByName('POKAZN').Value-lastpokazn;
//
//     lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;
//        date:=IBQuery6.FieldByName('date_pok').Value;
//        vid:=IBQuery6.FieldByName('VID_POK').Value;
//     IBQuery6.Next;
//     end;


//    IBQuery5.Close;
//    IBQuery5.SQL.Text:='select * from '+
//                       '(select schet,yearmon,pokazn,vid_pok,date_pok from (select first 1 schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon<:per and schet=:sch order by date_pok desc,id desc)'+
//                       'union all '+
//                       'select schet,yearmon,pokazn,vid_pok,date_pok from (select schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon=:per and schet=:sch order by date_pok,id))';
//
//    IBQuery5.ParamByName('per').Value:=MainForm.period;
//    IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//    IBQuery5.Open;
//
//    lastpokazn:=0;
//    kol:=0;
//    kol2:=0;
//    inpokazn:=0;
//    if IBQuery5.RecordCount<>0 then
//    begin
//      while not IBQuery5.eof do
//      begin
//         if IBQuery5.FieldByName('yearmon').Value<>MainForm.period then
//         begin
//           if IBQuery5.FieldByName('POKAZN').IsNull then
//              lastpokazn:=0
//           else
//              lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;
//
//              date:=IBQuery5.FieldByName('date_pok').Value;
//              vid:=IBQuery5.FieldByName('VID_POK').Value;
//         end
//         else
//         begin
//           if (IBQuery5.FieldByName('VID_POK').Value<>17) and (IBQuery5.FieldByName('VID_POK').Value<>26) then
//               kol:=kol+IBQuery5.FieldByName('POKAZN').Value-lastpokazn;
//              inpokazn:=1;
//              lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;
//              date:=IBQuery5.FieldByName('date_pok').Value;
//              vid:=IBQuery5.FieldByName('VID_POK').Value;
//
//
//         end;
//
//      IBQuery5.Next;
//      end;
//    end;

//select * from
//(select pkk.id,pkk.schet,pkk.yearmon,pkk.pokazn,pkk.vid_pok,pkk.date_pok from pokazn pkk
//join (select schet, max(date_pok) date_pok, max(id) id from pokazn where yearmon<:per group by schet) as pok1 on pok1.id=pkk.id
//union all
//select id,schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon=:per)
//order by schet,date_pok,id

    DS.FieldByName('WID').Value;
    DS.FieldByName('FIO').Value;
    DS.FieldByName('yearmon').Value;



    DS.Edit;

       DS.FieldByName('VID_POK').Value:=vid;
       
       if date=0 then
          DS.FieldByName('DATE_POK').Value:=null
       else
          DS.FieldByName('DATE_POK').Value:=date;

       DS.FieldByName('SCH_CUR').Value:=lastpokazn;
       DS.FieldByName('R_NACH').Value:='';
       DS.FieldByName('R_NOBAL').Value:='';

       //46,47,48
       if (DS.FieldByName('WID').Value>=46) then
       begin
       if (DS.FieldByName('WID').Value>46) then
            DS.FieldByName('KUB_ALL').Value:=0;
       if (DS.FieldByName('WID').Value=46) and (DS.FieldByName('NOR_RAZN').Value<>0) then
            DS.FieldByName('KUB_ALL').Value:=DS.FieldByName('NOR_RAZN').Value
       else DS.FieldByName('NOR_RAZN').Value:=0;

           // DS.FieldByName('SPIS').Value:=0;
            DS.FieldByName('KUB_NOBALANS').Value:=0;
            DS.FieldByName('NORM_BLICH').Value:=0;

            DS.FieldByName('R_NACH').Value:='';
            DS.FieldByName('SCH_RAZN').Value:=0;

         if DS.FieldByName('DEL_NORM').Value<0 then
                  begin
                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                  DS.FieldByName('DEL_NORM').Value:=0;
                  end;
       end
       else
       begin //41,42,43,44,45



         if (DS.FieldByName('LICH_TO').AsInteger=0) or (DS.FieldByName('LICH_TO').Value=Null) then
                  DS.FieldByName('WID').Value:=42
         else
         begin
            if (DS.FieldByName('WID').Value=42) or (DS.FieldByName('WID').Value=45) then
               DS.FieldByName('WID').Value:=41;
         end;

         if (DS.FieldByName('LICH_POV').IsNull) and (DS.FieldByName('WID').Value<46) and (DS.FieldByName('WID').Value<>43)then
         begin
                  DS.post;
                  MainForm.lichyear(DS);
                  DS.Edit;
         end;


         if ((DS.FieldByName('LICH_POV').IsNull) or (DS.FieldByName('LICH_YEARMON').Value<MainForm.period)) and (DS.FieldByName('WID').Value<>43) and (DS.FieldByName('WID').Value<>42) then
                  DS.FieldByName('WID').Value:=45;


         if (DS.FieldByName('WID').Value=43) then
             DS.FieldByName('WID').Value:=41;

         //45,42
         if (DS.FieldByName('WID').Value=45) or (DS.FieldByName('WID').Value=42) then
         begin

//                if DS.FieldByName('ORG').Value=0 then
//                begin
              //    if DS.FieldByName('KUB_NOBALANS').AsFloat=0 then
              //    begin
                    DS.FieldByName('SCH_RAZN').Value:=0;
                    DS.FieldByName('NORM_BLICH').Value:=iif(DS.FieldByName('KOLI_P').AsInteger<>0,DS.FieldByName('KOLI_P').AsInteger,1)*DS.FieldByName('NORMA').Value;
                    DS.FieldByName('NOR_RAZN').Value:=0;
                    DS.FieldByName('R_NACH').Value:='Споживання по нормі: к-ть людей або квартира('+inttostr(iif(DS.FieldByName('KOLI_P').AsInteger<>0,DS.FieldByName('KOLI_P').AsInteger,1))+') * норма('+CurrToStr(DS.FieldByName('NORMA').AsCurrency)+')';
              //    end;
                  //                end
//                else
//                begin
//                  kub12:=Form2.CubAvg12(trim(DS.FieldByName('schet').value));
//                  daymonth:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
//                  kubavg:=SimpleRoundTo(kub12*daymonth,-3);
//                  DS.FieldByName('NOR_RAZN').Value:=kubavg;
//                  DS.FieldByName('NORM_BLICH').Value:=0;
//                  DS.FieldByName('R_NACH').Value:='Середнє споживання: к-ть днів за місяць('+inttostr(daymonth)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
//                end;
                if DS.FieldByName('DEL_NORM').Value<0 then
                    begin
                    DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                    DS.FieldByName('DEL_NORM').Value:=0;
                    end;

         end
         else if (inpokazn<>0) then  //41,43,44
         begin
               if DS.FieldByName('PREV_NORM').Value>0 then
               begin
                  DS.FieldByName('DEL_NORM').Value:=DS.FieldByName('PREV_NORM').Value*-1;
                  DS.FieldByName('PREV_NORM').Value:=0;
               end;


                  DS.FieldByName('SCH_RAZN').Value:=kol;
             //   if (DS.FieldByName('WID').Value<>43) then
             //   begin
                  DS.FieldByName('NOR_RAZN').Value:=0;
                  DS.FieldByName('NORM_BLICH').Value:=0;
                  DS.FieldByName('R_NACH').Value:='';
                  DS.FieldByName('WID').Value:=41;
              //  end;

         end
         else
         begin      //41,43,44
            DS.FieldByName('SCH_RAZN').Value:=0;
               if DS.FieldByName('DEL_NORM').Value<0 then
                  begin
                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                  DS.FieldByName('DEL_NORM').Value:=0;
                  end;



         //   if (DS.FieldByName('WID').Value<>43) then
         //   begin
//               if DS.FieldByName('ORG').Value=0 then
//               begin
//                 IBQuery7.Close;
//                 IBQuery7.SQL.Text:='select yearmon from pokazn where schet=:sch and yearmon>=(select first 1 skip 3 yearmon from data order by yearmon desc)';
//                 IBQuery7.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//                 IBQuery7.Open;

                 if DS.FieldByName('DATE_POK').Value>YearMon2Date(MainForm.back3month) then
                 begin
                  kub12:=Form2.CubAvg12(trim(DS.FieldByName('schet').value));
                  daymonth:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
                  kubavg:=SimpleRoundTo(kub12*daymonth,-3);
                  DS.FieldByName('NOR_RAZN').Value:=kubavg;
                  DS.FieldByName('NORM_BLICH').Value:=0;
                  DS.FieldByName('R_NACH').Value:='Середнє споживання: к-ть днів за місяць('+inttostr(daymonth)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
                 end
                 else
                 begin
                   DS.FieldByName('NOR_RAZN').Value:=iif(DS.FieldByName('KOLI_P').AsInteger<>0,DS.FieldByName('KOLI_P').AsInteger,1)*DS.FieldByName('NORMA').Value;
                   DS.FieldByName('NORM_BLICH').Value:=0;
                   DS.FieldByName('R_NACH').Value:='Споживання по нормі коли 3 міс. не було показників: к-ть людей або квартир('+inttostr(DS.FieldByName('KOLI_P').Value)+') * норма('+CurrToStr(DS.FieldByName('NORMA').Value)+')';
                 end;
//               end;
//               else
//               begin
//                  kub12:=Form2.CubAvg12(trim(DS.FieldByName('schet').value));
//                  daymonth:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
//                  kubavg:=SimpleRoundTo(kub12*daymonth,-3);
//                  DS.FieldByName('NOR_RAZN').Value:=kubavg;
//                  DS.FieldByName('NORM_BLICH').Value:=0;
//                  DS.FieldByName('R_NACH').Value:='Середнє споживання: к-ть днів за місяць('+inttostr(daymonth)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
//               end;

         //   end;


            if (DS.FieldByName('WID').Value=41) then
                   DS.FieldByName('WID').Value:=44;
         end;

       end;

       DS.Post;
       kub_all(DS);

      // MainForm.IBTransaction1.CommitRetaining;

end;

procedure TForm2.calclich(DS:TIBDataSet);
var date_zn,date_vs,date_stzn,lastdate_zn:TDate;
    kol,kol_to,vs,zn,daynorm,raschday,kolmes,lastmes,firstmes,fl_adderr,newlich:integer;
    kub12,kubavg,kubavgday,kubnorm:currency;
    lastvid:string;
    startvs:boolean;
    LFactor: Double;

begin

//if trim(DS.FieldByName('schet').value)='0024007' then
  //   IBQuery5.Close;

//  IBQuery5.Close;
//  IBQuery5.SQL.Text:='select count(*) kol from lich where lich.schet=:sch and data_zn is null';
//  IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
////  IBQuery5.ParamByName('ym').Value:=MainForm.curYM;
//  IBQuery5.Open;

  if (DS.FieldByName('wid').Value=45) or (DS.FieldByName('wid').Value=42) or (DS.FieldByName('wid').Value>=46) then exit;

  MainForm.lichzn.Close;
  MainForm.lichzn.Open;

  kol_to:=DS.FieldByName('lich_to').value;

  IBQuery3.Close;
  IBQuery3.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
  IBQuery3.ParamByName('yy').Value:=copy(IntToStr(MainForm.period),1,4);
  IBQuery3.ParamByName('mm').Value:=copy(IntToStr(MainForm.period),5,2);
  IBQuery3.Open;

  kol:=0;
  date_vs:=0;
  date_zn:=0;
  lastdate_zn:=0;
  date_stzn:=0;
  daynorm:=0;
  startvs:=true;
  newlich:=0;

  fl_adderr:=0;
  if DS.FieldByName('znold_lich').AsInteger>0 then
  begin
     date_zn:=YearMon2Date(MainForm.period);
     kol:=DS.FieldByName('znold_lich').AsInteger;
     date_stzn:=date_zn-1;
     lastdate_zn:=date_zn;
  end;


  while not IBQuery3.eof do
  begin

//    if (kol<0) and (startvs) then
//    begin
//       daynorm:=DaysBetween(date_zn,StartOfTheMonth(date_zn));
//       //date_zn:=0;
//       //kol:=0
//    end;

  //         DS.Edit;
   //        DS.FieldByName('PERE_DAY').Value:=0;
   //        DS.FieldByName('NOR_RAZN').Value:=0;
   //        DS.FieldByName('WID').Value:=43;
   //        DS.Post;


    if (IBQuery3.FieldByName('vid').Value='zn') then
    begin
     // lastdate_zn:=IBQuery3.FieldByName('data_l').Value;
      if (IBQuery3.FieldByName('vid_zn').Value<>6) then
      begin
        fl_adderr:=fl_adderr+1;
        lastdate_zn:=IBQuery3.FieldByName('data_l').Value;
        kol:=kol+1;
        if (kol_to>0) and (kol>kol_to) then kol:=kol_to;
        
        if date_zn<>0 then
        begin
           daynorm:=daynorm+DaysBetween(date_zn,IBQuery3.FieldByName('data_l').Value)
        end;
//      if (IBQuery3.FieldByName('data_l').Value<date_zn) or (date_zn=0) then
         date_zn:=IBQuery3.FieldByName('data_l').Value;
      end;
    end;

    if (IBQuery3.FieldByName('vid').Value='vs') and (IBQuery3.FieldByName('vid_zn').Value<>6) then
    begin
       if kol>0 then
       begin
          kol:=kol-1;
          date_vs:=IBQuery3.FieldByName('data_l').Value;
       end;
//       if (IBQuery3.FieldByName('data_l').Value>date_vs) then
    end;

    if kol=0 then
    begin
        if date_stzn>0 then daynorm:=DaysBetween(date_stzn,date_vs)
          else
             if DaysBetween(date_zn,date_vs)>0 then daynorm:=daynorm+DaysBetween(date_zn,date_vs);

       date_vs:=0;
       date_zn:=0;
       date_stzn:=0;
    end;



//    lastvid:=IBQuery3.FieldByName('vid').Value;

    IBQuery3.Next;
  end;




//  and (IBQuery3.FieldByName('vid').Value='zn')

  IBQuery5.Close;
  IBQuery5.SQL.Text:='select first 1 h_voda.*,(select count(*) kol from lich where lich.schet=h_voda.schet and data_zn is null) lichkol from h_voda where schet=:sch and yearmon=:ym order by kl desc';
  IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
  IBQuery5.ParamByName('ym').Value:=MainForm.period;
  IBQuery5.Open;

  if IBQuery5.FieldByName('lichkol').AsInteger<IBQuery5.FieldByName('lich_to').AsInteger then
  begin
//           DS.Edit;
//           DS.FieldByName('ZN_LICH').Value:=IBQuery5.FieldByName('lich_to').Value-IBQuery5.FieldByName('lichkol').Value;
//           DS.Post;
           Label11.Visible:=true;
           kol:=IBQuery5.FieldByName('lich_to').AsInteger-IBQuery5.FieldByName('lichkol').AsInteger;
           date_zn:=lastdate_zn;
  end
  else Label11.Visible:=false;



  if (kol>0)  then
  begin
//    StartOfTheMonth(date_vs)
    if date_stzn>0 then daynorm:=DaysBetween(date_stzn,EndOfTheMonth(date_zn))
    else
      daynorm:=daynorm+DaysBetween(date_zn,EndOfTheMonth(date_zn));

//    if DS.FieldByName('zn_lich').Value<1 then
//    begin
//           DS.Edit;
//           DS.FieldByName('zn_lich').Value:=1;
//           DS.Post;
//    end;
     

    date_stzn:=0;
    date_zn:=0;
  end;


  if daynorm>0 then
  begin


           DS.Edit;
           DS.FieldByName('PERE_DAY').Value:=daynorm;
   //        if IBQuery5.FieldByName('lichkol').Value=IBQuery5.FieldByName('lich_to').Value then
         //     DS.FieldByName('wid').Value:=41
        //   else
              DS.FieldByName('wid').Value:=43;

              kub12:=CubAvg12(trim(DS.FieldByName('schet').value));

              if kub12>0 then
              begin
                kubavgday:=daynorm*(kub12);
                kubavg:=SimpleRoundTo(kubavgday,-3);
                DS.FieldByName('R_NACH').Value:='Середнє споживання: дні повірки('+inttostr(daynorm)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
              end
              else
              begin
                kubnorm:=iif(DS.FieldByName('KOLI_P').AsInteger<>0,DS.FieldByName('KOLI_P').AsInteger,1)*DS.FieldByName('NORMA').Value;
                raschday:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
                kubavgday:=(kubnorm/raschday);
                kubavg:=SimpleRoundTo(daynorm*kubavgday,-3);
                DS.FieldByName('R_NACH').Value:='Споживання по нормі: дні повірки('+inttostr(daynorm)+') * спожив. в день по нормі('+CurrToStr(kubavgday)+')';
              end;

              DS.FieldByName('NOR_RAZN').Value:=kubavg;
              DS.FieldByName('NORM_BLICH').Value:=0;
              DS.Post;


  end
  else
  begin

      if (IBQuery3.RecordCount>0) and (DS.FieldByName('lich_to').AsInteger>0) then newlich:=1;



           DS.Edit;
             if newlich=1 then
             begin
               DS.FieldByName('WID').Value:=43;
               DS.FieldByName('NOR_RAZN').Value:=0;
               DS.FieldByName('NORM_BLICH').Value:=0;
               DS.FieldByName('NOR_RAZN').Value:=0;
               DS.FieldByName('KUB_ALL').Value:=0;
              // DS.FieldByName('SPIS').Value:=0;
             //  DS.FieldByName('KUB_NOBALANS').Value:=0;
               DS.FieldByName('R_NACH').Value:='';
             end;



           DS.FieldByName('PERE_DAY').Value:=0;

        //   DS.FieldByName('NOR_RAZN').Value:=0;
        //   DS.FieldByName('WID').Value:=41;
           DS.Post;

  end;

  kub_all(DS);


  //MainForm.IBTransaction1.CommitRetaining;

end;

function TForm2.CubAvg12(sch:string):currency;
var kub12,kubavg,kubavg12day:currency;
    kolmes,lastmes,firstmes,raschday:integer;
begin

           IBQuery4.Close;
           IBQuery4.ParamByName('sch').Value:=sch;
           IBQuery4.ParamByName('ym').Value:=MainForm.period;
           IBQuery4.Open;
           kub12:=0;
           kolmes:=0;
           kubavg12day:=0;

           if IBQuery4.RecordCount>0 then
           begin
             IBQuery4.Last;
             firstmes:=IBQuery4.FieldByName('yearmon').Value;
             IBQuery4.First;
             lastmes:=IBQuery4.FieldByName('yearmon').Value;
           end;


           while not IBQuery4.eof do
           begin
             kub12:=kub12+IBQuery4.FieldByName('kub').Value;
             kolmes:=kolmes+1;
           IBQuery4.Next;
           end;

           if (kub12>0) and (kolmes>0) then
           begin
             raschday:=DaysBetween(YearMon2Date(firstmes),EndOfTheMonth(YearMon2Date(lastmes)));
             kubavg12day:=SimpleRoundTo(kub12/raschday,-3);
           end;

           Result:=kubavg12day;

//           if (kub12>0) then
//           begin
//             raschday:=DaysBetween(YearMon2Date(firstmes),EndOfTheMonth(YearMon2Date(lastmes)));
////             kubavg:=;
//             kubavgday:=daynorm*(kub12/raschday);
//             kubavg:=SimpleRoundTo(kubavgday,-3);
//             DS.Edit;
//             DS.FieldByName('NOR_RAZN').Value:=kubavg;
//             DS.Post;
//           end
//           else
//           begin
//             kub12:=DS.FieldByName('KOLI_P').Value*DS.FieldByName('NORMA').Value;
//             raschday:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
//             kubavgday:=daynorm*(kub12/raschday);
//             kubavg:=SimpleRoundTo(kubavgday,-3);
//             DS.Edit;
//             DS.FieldByName('NOR_RAZN').Value:=kubavg;
//             DS.Post;
//           end;

end;

procedure TForm2.cxButton10Click(Sender: TObject);
begin
  MainForm.ExportGrid(cxGrid10,'Небаланс та перерахунки по рахунку '+trim(cxDBTextEdit10.EditValue)+' '+trim(cxDBTextEdit1.EditValue));

end;

procedure TForm2.cxButton11Click(Sender: TObject);
begin
  if mainform.usersADDLICH.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

if cxLookupComboBox1.EditValue=null then
begin
   ShowMessage('Виберіть вид нарахування!');
   exit;
end;

if Length(trim(cxMemo1.Text))=0 then
begin
   ShowMessage('Введіть причину зміни!');
   exit;
end;

    MainForm.DSet.Edit;
    MainForm.DSet.FieldByName('WID').Value:=cxLookupComboBox1.EditValue;
    MainForm.DSet.Post;

    MainForm.why_pok.Append;
    MainForm.why_pok.Edit;
    MainForm.why_pokWID.Value:=cxLookupComboBox1.EditValue;
    MainForm.why_pokNOTE.Value:=cxMemo1.Text;
    MainForm.why_pokSCHET.Value:=MainForm.DSet.FieldByName('SCHET').Value;
    MainForm.why_pok.Post;

    MainForm.IBTransaction1.CommitRetaining;    

    MainForm.why_pok.Close;
    MainForm.why_pok.Open;




    cxLookupComboBox1.EditValue:=null;
    cxMemo1.Clear;
    Form2.calcpok2(MainForm.DSet,1);

 // if cxCalcEdit6.EditValue<>0 then
    Form2.calclich(MainForm.DSet);

  MainForm.IBTransaction1.CommitRetaining;

end;

procedure TForm2.cxButton12Click(Sender: TObject);
begin
    hvpererah.SelectSQL.Text:='select HV_PRH.*,(sch_razn+nor_razn+norm_blich) sumnach  from HV_PRH where yearmon=:ym and schet=:sch order by yearmon,yearmonp,kl';
    hvpererah.ParamByName('ym').Value:=MainForm.period;
    hvpererah.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
    hvpererah.Close;
    hvpererah.open;
end;

procedure TForm2.cxButton13Click(Sender: TObject);
begin
    hvpererah.SelectSQL.Text:='select HV_PRH.*,(sch_razn+nor_razn+norm_blich) sumnach  from HV_PRH where yearmonp>=:ym and schet=:sch order by yearmon,yearmonp,kl';
    hvpererah.ParamByName('ym').Value:=MainForm.period-100;
    hvpererah.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
    hvpererah.Close;
    hvpererah.open;
end;

procedure TForm2.cxButton16Click(Sender: TObject);
begin
  if mainform.usersADDPOKAZ.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;


   if MainForm.DSet.FieldByName('WID').Value=45 then
   begin
     ShowMessage('Лічильник не повірений! Введення показників закрито');
     exit;
   end;

   if MainForm.DSet.FieldByName('WID').Value=42 then
   begin
     ShowMessage('Лічильник не встановлений! Введення показників закрито');
     exit;
   end;

   if MainForm.DSet.FieldByName('WID').Value>=46 then
   begin
     ShowMessage('При цьому виді нарахувань введення показників не пердбачувано! Введення показників закрито');
     exit;
   end;


FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=true;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet3;
FormAddkart.cxTextEdit9.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel15.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.cxCalcEdit6.EditValue:=MainForm.DSet.FieldByName('NOR_RAZN').Value;

  if (FormAddkart.cxTabSheet3.Visible) and (MainForm.DSet.FieldByName('LICH_TO').AsInteger=0) then
  begin
    ShowMessage('Ви не можете додати показник, так як немає точки обліку!!!');
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

procedure TForm2.cxButton17Click(Sender: TObject);
begin
  if mainform.usersADDPOKAZ.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

  if (MainForm.pokaznYEARMON.Value<MainForm.period) then
  begin
    ShowMessage('Неможливо видалити показник попереднього періоду');
    exit;
  end;


   if (MainForm.pokaznID_LICH.Value<>0) then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from pokazn where yearmon=:per and schet=:sch and id>=:id  and (del=0 or del is null) order by date_pok,id';
  IBQuery1.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
  IBQuery1.ParamByName('per').Value:=MainForm.period;
  IBQuery1.ParamByName('id').Value:=MainForm.pokaznID.Value;
  IBQuery1.Open;
  IBQuery1.last;
    if IBQuery1.RecordCount>1 then
    begin
      ShowMessage('Неможливо видалити показник, бо існують показники після показника встановлення ');
      exit;
    end;
  end;

  if (MainForm.pokaznID_LICH.Value<>0) then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from lich where schet=:sch and id=:id and DATA_ZN is null';
  IBQuery1.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
  IBQuery1.ParamByName('id').Value:=MainForm.pokaznID_LICH.Value;
  IBQuery1.Open;

    if IBQuery1.RecordCount<>0 then
    begin
      ShowMessage('Видаліть спочатку лічильник цього показника - тип '+IBQuery1.FieldByName('tip').Value+' №'+IBQuery1.FieldByName('n_lich').Value+' id'+IntToStr(IBQuery1.FieldByName('id').Value));
      exit;
    end;
  end;


  if application.MessageBox('Ви дійсно бажаєте видалити показник?','Підтвердження',MB_YESNO)=IDYES then
  begin
  if (MainForm.pokazn.RecordCount<>0) then
     MainForm.pokazn.edit;
     MainForm.pokaznDEL.Value:=1;
     MainForm.pokazn.post;
     MainForm.pokazn.Close;
     MainForm.pokazn.Open;
     MainForm.delpokazn.Close;
     MainForm.delpokazn.Open;
     Form2.calcpok2(MainForm.DSet,1);
     Form2.calclich(MainForm.DSet);
  end;
end;

procedure TForm2.cxButton18Click(Sender: TObject);
begin
  if mainform.usersADDPOKAZ.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

    IBQuery5.close;
    IBQuery5.SQL.Text:='execute procedure calc_pok :schet';
    IBQuery5.ParamByName('schet').Value:=MainForm.DSet.FieldByName('SCHET').Value;
    IBQuery5.ExecSQL;
    IBQuery5.close;
    MainForm.DSet.close;
    MainForm.DSet.open;
end;

procedure TForm2.cxButton1Click(Sender: TObject);
begin
  if mainform.usersADDLICH.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

if MainForm.lich.RecordCount>=2 then
begin
    ShowMessage('Можливо додати максимум два лічильники');
    exit;
end;

if MainForm.lich.RecordCount=MainForm.DSet.FieldByName('LICH_TO').AsInteger then
  if application.MessageBox('Ви дійсно бажаєте додати нову точку обліку?','Підтвердження',MB_YESNO)=IDNO then
    exit;

if MainForm.lichzn.RecordCount<>0 then
begin
if MainForm.lich.Lookup('schet;n_lich',VarArrayOf([MainForm.lichznSCHET.Value,MainForm.lichznN_LICH.Value]),'schet')<>null then
begin
    ShowMessage('Лічильник з номером '+MainForm.lichznN_LICH.Value+' вже встановлено');
    exit;
end;

FormAddkart.cxCheckBox1.Visible:=true;
FormAddkart.cxlabel26.Visible:=true;

FormAddkart.addznlich:=true;
FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.Show;
FormAddkart.cxDateEdit2.Visible:=true;
//FormAddkart.cxLabel33.Visible:=false;
FormAddkart.cxTextEdit2.Text:=MainForm.lichznTIP.Value;
FormAddkart.cxTextEdit3.Text:=MainForm.lichznN_LICH.Value;
FormAddkart.cxDateEdit1.EditValue:=MainForm.lichznDATA_VIG.Value;
FormAddkart.cxTextEdit4.Text:=MainForm.lichznNOTE.Value;


end;
end;

procedure TForm2.cxButton2Click(Sender: TObject);
begin
  if mainform.usersADDLICH.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

if MainForm.lich.RecordCount=0 then
begin
  ShowMessage('Немає лічильників!');
  exit;
end;

FormAddkart.cxCheckBox1.Visible:=false;
FormAddkart.cxlabel26.Visible:=false;


FormAddkart.addznlich:=false;
FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.Show;
FormAddkart.cxTextEdit2.Text:=MainForm.lichTIP.Value;
FormAddkart.cxTextEdit3.Text:=MainForm.lichN_LICH.Value;
FormAddkart.cxDateEdit1.EditValue:=MainForm.lichDATA_VIG.Value;
FormAddkart.cxDateEdit2.Visible:=false;
//FormAddkart.cxLabel33.Visible:=true;
//FormAddkart.cxLabel33.Caption:=DateToStr(MainForm.lichDATA_VIP.Value);
FormAddkart.cxDateEdit9.EditValue:=MainForm.lichDATA_STPOV.Value;
FormAddkart.cxDateEdit3.EditValue:=MainForm.lichDATA_POV.Value;

end;

procedure TForm2.cxButton3Click(Sender: TObject);
begin
  if mainform.usersADDLICH.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

if MainForm.lich.RecordCount>=2 then
begin
    ShowMessage('Можливо додати максимум два лічильники');
    exit;
end;

if MainForm.lich.RecordCount=MainForm.DSet.FieldByName('LICH_TO').AsInteger then
  if application.MessageBox('Ви дійсно бажаєте додати нову точку обліку?','Підтвердження',MB_YESNO)=IDNO then
    exit;



FormAddkart.addznlich:=true;

FormAddkart.cxCheckBox1.Visible:=true;
FormAddkart.cxlabel26.Visible:=true;

FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.cxDateEdit2.Visible:=true;
//FormAddkart.cxLabel33.Visible:=false;

FormAddkart.Show;
if FormAddkart.IBQuery1.RecordCount<>0 then
begin
  FormAddkart.cxDateEdit7.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
  FormAddkart.cxCalcEdit5.Text:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;
end;
end;

procedure TForm2.cxButton4Click(Sender: TObject);
begin
  if mainform.usersADDLICH.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

if MainForm.lich.RecordCount=0 then
begin
  ShowMessage('Немає лічильників!');
  exit;
end;

FormDelkart.cxTabSheet1.TabVisible:=true;
FormDelkart.cxTabSheet1.Show;
FormDelkart.cxTabSheet2.TabVisible:=false;
FormDelkart.cxTabSheet3.TabVisible:=false;
FormDelkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormDelkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;

FormDelkart.Show;





FormDelkart.cxTextEdit2.Text:=MainForm.lichTIP.Value;
FormDelkart.cxTextEdit3.Text:=MainForm.lichN_LICH.Value;
FormDelkart.cxDateEdit2.EditValue:=MainForm.lichDATA_VIP.Value;

end;

procedure TForm2.cxButton5Click(Sender: TObject);
begin
Form2.calcpok2(MainForm.DSet,1);
Form2.calclich(MainForm.DSet);
ShowMessage('Розрахунок завершено!');


end;

procedure TForm2.cxButton6Click(Sender: TObject);
begin
  if mainform.usersADDPLOMB.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;


FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet2;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit5.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel16.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.Show;
end;

procedure TForm2.cxButton7Click(Sender: TObject);
begin
  if mainform.usersADDPLOMB.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

FormDelkart.cxTabSheet1.TabVisible:=false;
FormDelkart.cxTabSheet2.TabVisible:=true;
FormDelkart.cxTabSheet2.Show;
//FormAddkart.cxTabSheet2.ShowHint:=true;
FormDelkart.cxTabSheet3.TabVisible:=false;
FormDelkart.cxTextEdit5.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormDelkart.cxLabel16.Caption:=MainForm.DSet.FieldByName('FIO').Value;

FormDelkart.Show;

FormDelkart.cxTextEdit6.Text:=MainForm.plombsPL.Value;
FormDelkart.cxTextEdit7.Text:=MainForm.plombsN_PLOMB.Value;
FormDelkart.cxDateEdit4.EditValue:=MainForm.plombsDATE_VS.Value;

end;

procedure TForm2.cxButton8Click(Sender: TObject);
begin
  if mainform.usersADDSPIS.Value<>1 then
  begin
    ShowMessage('У вас немає доступу!');
    exit;
  end;

if (cxCalcEdit5.EditValue=null) then
begin
   ShowMessage('Введіть суму списання!');
   exit;
end;

if Length(trim(cxMemo2.Text))=0 then
begin
   ShowMessage('Введіть причину зміни!');
   exit;
end;

    MainForm.DSet.Edit;
    MainForm.DSet.FieldByName('SPIS').Value:=cxCalcEdit5.EditValue;
    MainForm.DSet.Post;

    MainForm.spis.Append;
    MainForm.spisYEARMON.Value:=MainForm.curYM;
    MainForm.spisSUMMA.Value:=cxCalcEdit5.EditValue;
    MainForm.spisNOTE.Value:=cxMemo2.Text;
    MainForm.spisSCHET.Value:=MainForm.DSet.FieldByName('SCHET').Value;
    MainForm.spis.Post;

    MainForm.IBTransaction1.CommitRetaining;    

    MainForm.spis.Close;
    MainForm.spis.Open;




    cxCalcEdit5.EditValue:=null;
    cxMemo2.Clear;
    Form2.calcpok2(MainForm.DSet,1);

 // if cxCalcEdit6.EditValue<>0 then
    Form2.calclich(MainForm.DSet);

  MainForm.IBTransaction1.CommitRetaining;

end;





procedure TForm2.cxButton9Click(Sender: TObject);
begin
  MainForm.ExportGrid(cxGrid9,'Нарахування по рахунку: '+trim(cxDBTextEdit10.EditValue)+' '+trim(cxDBTextEdit1.EditValue));
end;

procedure TForm2.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
       if (AViewInfo.GridRecord.Values[cxGridDBTableView2ZN.Index] = 'помилкове введення') then
    ACanvas.Brush.Color := clRed;
end;

procedure TForm2.Find(sch:string);
begin


    MainForm.lich.SelectSQL.Text:=MainForm.lchSQL+' and schet=:sch order by data_vip,id desc';
    MainForm.lich.ParamByName('sch').Value:=sch;
    MainForm.lich.Close;
    MainForm.lich.open;

    MainForm.lichzn.SelectSQL.Text:=MainForm.lchznSQL+' and schet=:sch order by data_zn,id desc';
    MainForm.lichzn.ParamByName('sch').Value:=sch;
    MainForm.lichzn.Close;
    MainForm.lichzn.open;

    MainForm.plombs.SelectSQL.Text:=MainForm.plSQL+' and schet=:sch order by date_vs desc';
    MainForm.plombs.ParamByName('sch').Value:=sch;
    MainForm.plombs.Close;
    MainForm.plombs.open;

    MainForm.plombszn.SelectSQL.Text:=MainForm.plznSQL+' and schet=:sch order by date_zn desc';
    MainForm.plombszn.ParamByName('sch').Value:=sch;
    MainForm.plombszn.Close;
    MainForm.plombszn.open;

    MainForm.pokazn.SelectSQL.Text:=MainForm.pokSQL+' where pokazn.schet=:sch and (del=0 or del is null) order by date_pok desc,id desc';
    MainForm.pokazn.ParamByName('sch').Value:=sch;
    MainForm.pokazn.Close;
    MainForm.pokazn.open;

    MainForm.delpokazn.SelectSQL.Text:=MainForm.pokSQL+' where pokazn.schet=:sch and del=1 and del is not null order by id desc';
    MainForm.delpokazn.ParamByName('sch').Value:=sch;
    MainForm.delpokazn.Close;
    MainForm.delpokazn.open;

    MainForm.why_pok.SelectSQL.Text:=MainForm.why_pokSQL+' where why_pok.schet=:sch order by id desc';
    MainForm.why_pok.ParamByName('sch').Value:=sch;
    MainForm.why_pok.Close;
    MainForm.why_pok.open;

    MainForm.spis.SelectSQL.Text:=MainForm.spisSQL+' where spis.schet=:sch order by id desc';
    MainForm.spis.ParamByName('sch').Value:=sch;
    MainForm.spis.Close;
    MainForm.spis.open;

    hvpererah.SelectSQL.Text:='select HV_PRH.*,(sch_razn+nor_razn+norm_blich) sumnach  from HV_PRH where yearmon=:ym and schet=:sch order by yearmon,yearmonp,kl';
    hvpererah.ParamByName('ym').Value:=MainForm.period;
    hvpererah.ParamByName('sch').Value:=sch;
    hvpererah.Close;
    hvpererah.open;


  IBQHV.Close;
  IBQHV.ParamByName('sch').Value:=sch;
 // IBQHV.ParamByName('ym').Value:=MainForm.period;
  IBQHV.Open;


end;



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if MainForm.lich.State in [dsInsert,dsEdit] then MainForm.lich.Post;
     if MainForm.hvd.State in [dsInsert,dsEdit] then MainForm.hvd.Post;
     if MainForm.org.State in [dsInsert,dsEdit] then MainForm.org.Post;

   IBQHV.Close;

   MainForm.IBTransaction1.CommitRetaining;


          if FormPererah.Visible then
             FormPererah.Enabled:=true
          else
             MainForm.Enabled:=true;


end;

procedure TForm2.FormShow(Sender: TObject);
begin
    MainForm.Enabled:=false;
    LichPost:=false;
    cxPageControl1.ActivePage:=cxTabSheet1;
    cxPageControl2.ActivePage:=cxTabSheet4;
    cxPageControl3.ActivePage:=cxTabSheet5;

    if MainForm.DSet.FieldByName('LICH_TO').AsInteger>MainForm.lich.RecordCount then
       label11.Visible:=true
    else label11.Visible:=false;

    if FormPererah.Visible then
       FormPererah.Enabled:=false;




end;

procedure TForm2.IBQHVCalcFields(DataSet: TDataSet);
begin
    IBQHVym.Value:=Date2Str(YearMon2Date(IBQHVYearMon.Value),'yyyy MMMM');
end;

end.
