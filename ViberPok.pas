unit ViberPok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, cxContainer, cxLabel,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  IBCustomDataSet, IBQuery, cxTextEdit, cxDBEdit;

type
  TFormViberPok = class(TForm)
    Panel2: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxButton8: TcxButton;
    cxGridDBTableView3ID_VIBER: TcxGridDBColumn;
    cxGridDBTableView3DATA: TcxGridDBColumn;
    cxGridDBTableView3SCHET: TcxGridDBColumn;
    cxGridDBTableView3POKAZN: TcxGridDBColumn;
    cxGridDBTableView3VIBER_NAME: TcxGridDBColumn;
    cxGridDBTableView3DATE_INS: TcxGridDBColumn;
    cxGridDBTableView3STATUS: TcxGridDBColumn;
    IBQuery1: TIBQuery;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    IBQuery2: TIBQuery;
    cxGridDBTableView3ERR: TcxGridDBColumn;
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
  FormViberPok: TFormViberPok;

implementation

uses main, addkart,mytools;

{$R *.dfm}

procedure TFormViberPok.cxButton8Click(Sender: TObject);
var err:integer;

begin
MainForm.viber_pokazn.First;
StartWait;


while not MainForm.viber_pokazn.Eof do
begin


  IBQuery2.Close;
  IBQuery2.ParamByName('sch').Value:=MainForm.viber_pokaznSCHET.Value;
  IBQuery2.ParamByName('vid').Value:=21;
  IBQuery2.ParamByName('pok').Value:=MainForm.viber_pokaznPOKAZN.Value;
  IBQuery2.ParamByName('date').Value:=MainForm.viber_pokaznDATA.Value;
  IBQuery2.Open;

  if IBQuery2.RecordCount<>0 then
  begin
    MainForm.viber_pokazn.Edit;
    MainForm.viber_pokaznSTATUS.Value:='Показник додано успішно!!!';
    MainForm.viber_pokazn.Post;
    MainForm.viber_pokazn.Next;
  end;


  IBQuery1.Close;
  IBQuery1.ParamByName('sch').Value:=MainForm.viber_pokaznSCHET.Value;
  IBQuery1.Open;


  if (IBQuery1.FieldByName('date_pok').Value < MainForm.viber_pokaznDATA.Value) and (IBQuery1.FieldByName('pokazn').Value > MainForm.viber_pokaznPOKAZN.Value) then
  begin
    MainForm.viber_pokazn.Edit;
    MainForm.viber_pokaznSTATUS.Value:='Показник меньший за останній показник';
    MainForm.viber_pokaznERR.Value:=1;
    MainForm.viber_pokazn.Post;

  end;

  if (IBQuery1.FieldByName('date_pok').Value > MainForm.viber_pokaznDATA.Value) and (IBQuery1.FieldByName('pokazn').Value < MainForm.viber_pokaznPOKAZN.Value) then
  begin
    MainForm.viber_pokazn.Edit;
    MainForm.viber_pokaznSTATUS.Value:='Дата меньша за останній показник';
    MainForm.viber_pokaznERR.Value:=1;
    MainForm.viber_pokazn.Post;

  end;

  if MainForm.viber_pokaznERR.Value=1 then err:=err+1
  else
  begin
    MainForm.pokazn.SelectSQL.Text:=MainForm.pokSQL+' where pokazn.schet=:sch order by date_pok desc';
    MainForm.pokazn.ParamByName('sch').Value:=MainForm.viber_pokaznSCHET.Value;
    MainForm.pokazn.Close;
    MainForm.pokazn.open;
  MainForm.pokazn.Append;
  MainForm.pokazn.Edit;
  MainForm.pokaznYEARMON.Value:=MainForm.period;
  MainForm.pokaznSCHET.Value:=MainForm.viber_pokaznSCHET.Value;
  MainForm.pokaznPOKAZN.Value:=MainForm.viber_pokaznPOKAZN.Value;
  MainForm.pokaznDATE_POK.Value:=MainForm.viber_pokaznDATA.Value;
  MainForm.pokaznVID_POK.Value:=21;
  MainForm.pokazn.Post;

  FormAddkart.calcpok;

    MainForm.viber_pokazn.Edit;
    MainForm.viber_pokaznSTATUS.Value:='Показник додано успішно!!!';
    MainForm.viber_pokazn.Post;
  end;


  MainForm.viber_pokazn.Next;
end;

  MainForm.viber_task.Edit;
  MainForm.viber_taskERR.Value:=err;
  MainForm.viber_taskACCESSPOKAZN.Value:=MainForm.viber_taskALLPOKAZN.Value-err;
  MainForm.viber_task.Post;

  StopWait;

  ShowMessage('Обробка показників завершена! Прийнято показників '+int2str(MainForm.viber_taskACCESSPOKAZN.Value)+'. Відхилено показників '+int2str(err));

end;

procedure TFormViberPok.cxGridDBTableView3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
     if (AViewInfo.GridRecord.Values[cxGridDBTableView3ERR.Index] = 1) then
    ACanvas.Brush.Color := clRed;
    //else  ACanvas.Brush.Color := clWindow;
end;

end.
