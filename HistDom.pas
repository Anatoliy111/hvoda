unit HistDom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, IBCustomDataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls;

type
  TFormhistdom = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1UL: TcxGridDBColumn;
    cxGrid3DBTableView1N_DOM: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_RAZN: TcxGridDBColumn;
    cxGrid3DBTableView1NORM_BLICH: TcxGridDBColumn;
    cxGrid3DBTableView1SUM_NACH: TcxGridDBColumn;
    cxGrid3DBTableView1NOR_RAZN: TcxGridDBColumn;
    cxGrid3DBTableView1DEL_NORM: TcxGridDBColumn;
    cxGrid3DBTableView1KUB_NOBALANS: TcxGridDBColumn;
    cxGrid3DBTableView1PERERAH: TcxGridDBColumn;
    cxGrid3DBTableView1SPIS: TcxGridDBColumn;
    cxGrid3DBTableView1KUB_ALL: TcxGridDBColumn;
    cxGrid3DBTableView1PREV_NORM: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_KUB: TcxGridDBColumn;
    cxGrid3DBTableView1SCH_RAZNDOM: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    histdom: TIBDataSet;
    histdomCT: TIntegerField;
    histdomYEARMON: TIntegerField;
    histdomUL: TIBStringField;
    histdomN_DOM: TIBStringField;
    histdomSCH_RAZN: TIBBCDField;
    histdomNOR_RAZN: TIBBCDField;
    histdomSUM_SR: TIBBCDField;
    histdomSUM_SB: TFloatField;
    histdomSUM_SRB: TFloatField;
    histdomNORM_BLICH: TFloatField;
    histdomDEL_NORM: TFloatField;
    histdomKUB_NOBALANS: TFloatField;
    histdomPERERAH: TFloatField;
    histdomSPIS: TFloatField;
    histdomKUB_ALL: TFloatField;
    histdomPREV_NORM: TFloatField;
    histdomSCH_KUB: TFloatField;
    histdomSCH_RAZNDOM: TFloatField;
    histdomSource: TDataSource;
    cxGrid3DBTableView1YEARMON: TcxGridDBColumn;
    histdomym: TStringField;
    procedure histdomCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formhistdom: TFormhistdom;

implementation

uses main,mytools;

{$R *.dfm}

procedure TFormhistdom.cxButton1Click(Sender: TObject);
begin
MainForm.ExportGrid(cxGrid3,MainForm.hvddom2UL.Value+' '+MainForm.hvddom2N_DOM.Value);
end;

procedure TFormhistdom.histdomCalcFields(DataSet: TDataSet);
begin
  histdomym.Value:=Date2Str(YearMon2Date(histdomYearMon.Value),'yyyy MMMM');
end;

end.
