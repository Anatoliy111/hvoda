unit sprzn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, IBCustomDataSet, IBQuery;

type
  TSPR_ZN = class(TForm)
    Panel2: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxButton8: TcxButton;
    cxButton1: TcxButton;
    IBQuery1: TIBQuery;
    VIDZNSource: TDataSource;
    IBVIDZN: TIBDataSet;
    IBVIDZNID: TIntegerField;
    IBVIDZNVID_OB: TIntegerField;
    IBVIDZNVID_ZN: TIBStringField;
    cxGridDBTableView3VID_ZN: TcxGridDBColumn;
    IBVIDZNVID_SP: TIBStringField;
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    vidspr:string;
  end;

var
  SPR_ZN: TSPR_ZN;

implementation

uses main;

{$R *.dfm}

procedure TSPR_ZN.cxButton1Click(Sender: TObject);
begin
// зняття лычильника
if IBVIDZNVID_SP.Value='dellich' then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from lich where vid_zn=:idvid';
  IBQuery1.ParamByName('idvid').Value:=IBVIDZNID.Value;
  IBQuery1.Open;
  end;

  //зняття пломби
if IBVIDZNVID_SP.Value='delpl' then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from plombs where vid_zn=:idvid';
  IBQuery1.ParamByName('idvid').Value:=IBVIDZNID.Value;
  IBQuery1.Open;
  end;

  //вид пломби
if IBVIDZNVID_SP.Value='pl' then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from plombs where vid_pl=:idvid';
  IBQuery1.ParamByName('idvid').Value:=IBVIDZNID.Value;
  IBQuery1.Open;
  end;

  //видалення показника
if IBVIDZNVID_SP.Value='delpk' then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from pokazn where vid_zn=:idvid';
  IBQuery1.ParamByName('idvid').Value:=IBVIDZNID.Value;
  IBQuery1.Open;
  end;

  //вид показника
if IBVIDZNVID_SP.Value='addpk' then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from pokazn where vid_pok=:idvid';
  IBQuery1.ParamByName('idvid').Value:=IBVIDZNID.Value;
  IBQuery1.Open;
  end;

if IBVIDZNVID_SP.Value='addrn' then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from h_voda where vid_rn=:idvid';
  IBQuery1.ParamByName('idvid').Value:=IBVIDZNID.Value;
  IBQuery1.Open;
  end;

  if IBQuery1.RecordCount=0 then IBVIDZN.Delete
  else ShowMessage('Видалення неможливе, цей вид використовується');


end;

procedure TSPR_ZN.cxButton8Click(Sender: TObject);
begin
IBVIDZN.Append;
//MainForm.IBVIDZN.Edit;
IBVIDZNVID_SP.Value:=vidspr;
IBVIDZN.Post;
end;

procedure TSPR_ZN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if IBVIDZN.State in [dsEdit,dsInsert] then
   IBVIDZN.Post;

   MainForm.IBTransaction1.CommitRetaining;

   MainForm.vid_rn.Close;
   MainForm.vid_rn.Open;

   MainForm.vid_nach.Close;
   MainForm.vid_nach.Open;

   MainForm.vid_nach46.Close;
   MainForm.vid_nach46.Open;


 MainForm.Enabled:=true;

end;

procedure TSPR_ZN.FormShow(Sender: TObject);
begin
  IBVIDZN.Close;
  IBVIDZN.ParamByName('vid').Value:=vidspr;
  IBVIDZN.Open;
  MainForm.Enabled:=false;
end;

end.
