unit ViberPokDmkg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, cxContainer, cxLabel,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  IBCustomDataSet, IBQuery, cxTextEdit, cxDBEdit;

type
  TFormViberPokDmkg = class(TForm)
    Panel2: TPanel;
    cxButton8: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3ID_SITE: TcxGridDBColumn;
    cxGridDBTableView3VID: TcxGridDBColumn;
    cxGridDBTableView3DATA: TcxGridDBColumn;
    cxGridDBTableView3SCHET: TcxGridDBColumn;
    cxGridDBTableView3POKAZN: TcxGridDBColumn;
    cxGridDBTableView3NAME: TcxGridDBColumn;
    cxGridDBTableView3STATUS: TcxGridDBColumn;
    cxGridDBTableView3ERR: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    procedure cxButton8Click(Sender: TObject);
    procedure cxGridDBTableView3CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormViberPokDmkg: TFormViberPokDmkg;

implementation

uses main, addkart,mytools;

{$R *.dfm}

procedure TFormViberPokDmkg.cxButton8Click(Sender: TObject);
var err,errone:integer;

begin
MainForm.site_pokazn.First;
StartWait;


while not MainForm.site_pokazn.Eof do
begin



  errone:=0;
  IBQuery2.Close;
  IBQuery2.ParamByName('sch').Value:=MainForm.site_pokaznSCHET.Value;
  if MainForm.site_pokaznVID.Value='viber' then
      IBQuery2.ParamByName('vid').Value:=21;
  if MainForm.site_pokaznVID.Value='site' then
      IBQuery2.ParamByName('vid').Value:=37;
  IBQuery2.ParamByName('pok').Value:=MainForm.site_pokaznPOKAZN.Value;
  IBQuery2.ParamByName('date').Value:=MainForm.site_pokaznDATA.Value;
  IBQuery2.Open;

  if IBQuery2.RecordCount<>0 then
  begin
    MainForm.site_pokazn.Edit;
    MainForm.site_pokaznSTATUS.Value:='Показник додано успішно!!!';
    MainForm.site_pokaznERR.Value:=0;
    MainForm.site_pokazn.Post;
//    MainForm.viber_pokazn.Next;

  end
  else
  begin


  IBQuery1.Close;
  IBQuery1.ParamByName('sch').Value:=MainForm.site_pokaznSCHET.Value;
  IBQuery1.Open;


  if (IBQuery1.FieldByName('date_pok').Value < MainForm.site_pokaznDATA.Value) and (IBQuery1.FieldByName('pokazn').Value > MainForm.site_pokaznPOKAZN.Value) then
  begin
    MainForm.site_pokazn.Edit;
    MainForm.site_pokaznSTATUS.Value:='Показник меньший за останній показник';
    MainForm.site_pokaznERR.Value:=1;
    MainForm.site_pokazn.Post;
    errone:=1;

  end;

  if (IBQuery1.FieldByName('date_pok').Value > MainForm.viber_pokaznDATA.Value) and (IBQuery1.FieldByName('pokazn').Value < MainForm.viber_pokaznPOKAZN.Value) then
  begin
    MainForm.site_pokazn.Edit;
    MainForm.site_pokaznSTATUS.Value:='Дата меньша за останній показник';
    MainForm.site_pokaznERR.Value:=1;
    MainForm.site_pokazn.Post;
    errone:=1;
  end;

  if errone=1 then err:=err+1
  else
  begin
    MainForm.pokazn.SelectSQL.Text:=MainForm.pokSQL+' where pokazn.schet=:sch order by date_pok desc';
    MainForm.pokazn.ParamByName('sch').Value:=MainForm.site_pokaznSCHET.Value;
    MainForm.pokazn.Close;
    MainForm.pokazn.open;
  MainForm.pokazn.Append;
  MainForm.pokazn.Edit;
  MainForm.pokaznYEARMON.Value:=MainForm.period;
  MainForm.pokaznSCHET.Value:=MainForm.site_pokaznSCHET.Value;
  MainForm.pokaznPOKAZN.Value:=MainForm.site_pokaznPOKAZN.Value;
  MainForm.pokaznDATE_POK.Value:=MainForm.site_pokaznDATA.Value;
  if MainForm.site_pokaznVID.Value='viber' then
      MainForm.pokaznVID_POK.Value:=21;
  if MainForm.site_pokaznVID.Value='site' then
      MainForm.pokaznVID_POK.Value:=37;

  MainForm.pokazn.Post;

  FormAddkart.calcpok(MainForm.site_pokaznSCHET.Value);

    MainForm.site_pokazn.Edit;
    MainForm.site_pokaznSTATUS.Value:='Показник додано успішно!!!';
    MainForm.site_pokaznERR.Value:=0;
    MainForm.site_pokazn.Post;
  end;
  end;


  MainForm.site_pokazn.Next;
end;

  MainForm.viber_task.Edit;
  MainForm.viber_taskERR.Value:=err;
  MainForm.viber_taskACCESSPOKAZN.Value:=MainForm.viber_taskALLPOKAZN.Value-err;
  MainForm.viber_task.Post;

  if MainForm.site_pokazn.RecordCount<>0 then
  begin
    MainForm.hvd.Close;
    MainForm.hvd.Open;
  end;
  
  StopWait;



  ShowMessage('Обробка показників завершена! Прийнято показників '+int2str(MainForm.viber_taskACCESSPOKAZN.Value)+'. Відхилено показників '+int2str(err));

end;

procedure TFormViberPokDmkg.cxGridDBTableView3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
     if (AViewInfo.GridRecord.Values[cxGridDBTableView3ERR.Index] = 1) then
    ACanvas.Brush.Color := clRed;
end;

end.
