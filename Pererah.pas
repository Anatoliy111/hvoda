unit Pererah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, IBCustomDataSet, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, cxDBLookupComboBox, StdCtrls, cxButtonEdit, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  TFormPererah = class(TForm)
    Panel2: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel1: TPanel;
    hvpererah: TIBDataSet;
    hvpererahSource: TDataSource;
    grppererah: TIBDataSet;
    grppererahSource: TDataSource;
    hv_now: TIBDataSet;
    hv_nowSource: TDataSource;
    grppererahKL: TIntegerField;
    grppererahYEARMON: TIntegerField;
    grppererahYEARMONP: TIntegerField;
    grppererahSCH_OLD: TFloatField;
    grppererahSCH_CUR: TFloatField;
    grppererahSCH_RAZN: TFloatField;
    grppererahN_LICH: TIBStringField;
    grppererahTIP: TIBStringField;
    grppererahKL_UL: TIntegerField;
    grppererahUL: TIBStringField;
    grppererahN_DOM: TIBStringField;
    grppererahSCH_NAS: TFloatField;
    grppererahSCH_UR: TFloatField;
    grppererahSCH_SUMABON: TFloatField;
    grppererahSCH_KUB: TFloatField;
    grppererahNOTEWID: TIBStringField;
    grppererahNOTE: TIBStringField;
    hv_nowKL: TIntegerField;
    hv_nowYEARMON: TIntegerField;
    hv_nowPLOMB: TSmallintField;
    hv_nowFIO: TIBStringField;
    hv_nowWID: TSmallintField;
    hv_nowWID_PREV: TIntegerField;
    hv_nowDOM: TIBStringField;
    hv_nowKVART: TIBStringField;
    hv_nowSCHET: TIBStringField;
    hv_nowN_SCH: TIBStringField;
    hv_nowSCH_OLD: TIBBCDField;
    hv_nowSCH_CUR: TIBBCDField;
    hv_nowSCH_RAZN: TIBBCDField;
    hv_nowSCH_RAZN2: TIBBCDField;
    hv_nowKOLI_P: TIBBCDField;
    hv_nowKOLI_P0: TIntegerField;
    hv_nowKOLI_P1: TIntegerField;
    hv_nowNOR_RAZN: TIBBCDField;
    hv_nowGRP_RAZN: TIBBCDField;
    hv_nowPERE_DAY: TIntegerField;
    hv_nowPERE_RAZN: TIBBCDField;
    hv_nowID_KONTR: TSmallintField;
    hv_nowUL: TIBStringField;
    hv_nowN_DOM: TIBStringField;
    hv_nowKV: TIBStringField;
    hv_nowNOTE: TIBStringField;
    hv_nowKOLI_F: TLargeintField;
    hv_nowRASCH_KUB: TIBBCDField;
    hv_nowRASCH_NOR: TIBBCDField;
    hv_nowPOD: TIntegerField;
    hv_nowRASCH_NOTE: TIBStringField;
    hv_nowDATE_POK: TDateField;
    hv_nowVID_POK: TIntegerField;
    hv_nowKUB_MES: TIBBCDField;
    hv_nowLICH_POV: TDateField;
    hv_nowORG: TIntegerField;
    hv_nowVID_RN: TIntegerField;
    hv_nowFILTR: TIntegerField;
    hv_nowPOMPA: TIntegerField;
    hv_nowZN_LICH: TIntegerField;
    hv_nowZNOLD_LICH: TIntegerField;
    hv_nowDATE_ZN: TDateField;
    hv_nowLICH_TO: TIntegerField;
    hv_nowKLNTAR: TIntegerField;
    hv_nowTARIF_NAME: TIBStringField;
    hv_nowNORMA: TFloatField;
    hv_nowOLD_NORM: TFloatField;
    hv_nowDEL_NORM: TFloatField;
    hv_nowPREV_NORM: TFloatField;
    hv_nowLICH_YEARMON: TIntegerField;
    hv_nowEDRPOU: TIntegerField;
    hv_nowKL_UL: TIntegerField;
    hv_nowR_NACH: TIBStringField;
    hv_nowNORM_BLICH: TFloatField;
    hv_nowKUB_NOBALANS: TFloatField;
    hv_nowKUB_ALL: TFloatField;
    hv_nowPLOSCH_UR: TFloatField;
    hv_nowPERERAH: TFloatField;
    hv_nowR_NOBAL: TIBStringField;
    cxGridDBTableView1YEARMONP: TcxGridDBColumn;
    cxGridDBTableView1FIO: TcxGridDBColumn;
    cxGridDBTableView1WID: TcxGridDBColumn;
    cxGridDBTableView1SCHET: TcxGridDBColumn;
    cxGridDBTableView1SCH_RAZN: TcxGridDBColumn;
    cxGridDBTableView1KOLI_P: TcxGridDBColumn;
    cxGridDBTableView1NOR_RAZN: TcxGridDBColumn;
    cxGridDBTableView1KV: TcxGridDBColumn;
    cxGridDBTableView1ORG: TcxGridDBColumn;
    cxGridDBTableView1KUB_NOBALANS: TcxGridDBColumn;
    cxGridDBTableView1PERERAH: TcxGridDBColumn;
    cxGridDBTableView1NOTEWID: TcxGridDBColumn;
    cxGrid3DBTableView1YEARMONP: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_RAZN: TcxGridDBColumn;
    cxGrid3DBTableView1N_LICH: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_SUMABON: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_KUB: TcxGridDBColumn;
    cxGrid3DBTableView1NOTEWID: TcxGridDBColumn;
    cxGridDBTableView2FIO: TcxGridDBColumn;
    cxGridDBTableView2SCHET: TcxGridDBColumn;
    cxGridDBTableView2PERERAH: TcxGridDBColumn;
    cxGridDBTableView2KV: TcxGridDBColumn;
    cxGridDBTableView1SUMNACH: TcxGridDBColumn;
    cxGridDBTableView1KL: TcxGridDBColumn;
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
    cxGridDBTableView1NOTERAW: TcxGridDBColumn;
    Label16: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    hv_nowSPIS: TFloatField;
    cxGridDBTableView1YEARMON: TcxGridDBColumn;
    cxGridDBTableView1NORM_BLICH: TcxGridDBColumn;
    hvpererahSUMNACH: TFloatField;
    cxButton9: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    procedure cxGridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPererah: TFormPererah;

implementation

uses main, kart;

{$R *.dfm}

procedure TFormPererah.cxButton12Click(Sender: TObject);
begin
    hvpererah.SelectSQL.Text:='select HV_PRH.*,(sch_razn+nor_razn+norm_blich) sumnach  from HV_PRH where yearmon=:ym and ul=:ul and n_dom=:ndom order by yearmon,yearmonp,kl';
    hvpererah.ParamByName('ym').Value:=MainForm.period;
    hvpererah.ParamByName('ul').Value:=MainForm.grpUL.AsString;
    hvpererah.ParamByName('ndom').Value:=MainForm.grpN_DOM.AsString;
    hvpererah.Close;
    hvpererah.open;
end;

procedure TFormPererah.cxButton13Click(Sender: TObject);
begin
    hvpererah.SelectSQL.Text:='select HV_PRH.*,(sch_razn+nor_razn+norm_blich) sumnach  from HV_PRH where yearmonp>=:ym and ul=:ul and n_dom=:ndom order by yearmon,yearmonp,kl';
    hvpererah.ParamByName('ym').Value:=MainForm.period-100;
    hvpererah.ParamByName('ul').Value:=MainForm.grpUL.AsString;
    hvpererah.ParamByName('ndom').Value:=MainForm.grpN_DOM.AsString;
    hvpererah.Close;
    hvpererah.open;
end;

procedure TFormPererah.cxButton9Click(Sender: TObject);
begin
MainForm.ExportGrid(cxGrid1,'Таблиця перерахунків за період '+trim(Label1.Caption));
end;

procedure TFormPererah.cxGridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

     hv_now.First;
     hv_now.Locate('schet',hvpererah.FieldByName('SCHET').Value,[]);
     Form2.Find(hv_nowSCHET.Value);
     Form2.Show;
end;

procedure TFormPererah.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     MainForm.Enabled:=true;
     if (Form2.Enabled) then
         Form2.Close;


end;

procedure TFormPererah.FormShow(Sender: TObject);
begin

MainForm.DSet:=hv_now;
MainForm.DataAllSource.DataSet:=MainForm.DSet;
     MainForm.Enabled:=false;
end;

end.
