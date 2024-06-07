unit LichPlomb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, IBCustomDataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls,
  Grids, DBGrids;

type
  TFormLichPlomb = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ABON: TcxGridDBColumn;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1UL: TcxGridDBColumn;
    cxGrid1DBTableView1N_DOM: TcxGridDBColumn;
    cxGrid1DBTableView1KV: TcxGridDBColumn;
    cxGrid1DBTableView1TIP: TcxGridDBColumn;
    cxGrid1DBTableView1N_LICH: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_VIP: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_STPOV: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_POV: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    lichplomb: TIBDataSet;
    lichplombSource: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    lichplombSCHET: TIBStringField;
    lichplombYEARMON: TIntegerField;
    lichplombLICH: TIBStringField;
    lichplombPLOMB: TIBStringField;
    lichplombFIO: TIBStringField;
    lichplombUL: TIBStringField;
    lichplombN_DOM: TIBStringField;
    lichplombKV: TIBStringField;
    lichplombABON: TIBStringField;
    cxGridDBTableView1SCHET: TcxGridDBColumn;
    cxGridDBTableView1LICH: TcxGridDBColumn;
    cxGridDBTableView1PLOMB: TcxGridDBColumn;
    cxGridDBTableView1FIO: TcxGridDBColumn;
    cxGridDBTableView1UL: TcxGridDBColumn;
    cxGridDBTableView1N_DOM: TcxGridDBColumn;
    cxGridDBTableView1KV: TcxGridDBColumn;
    cxGridDBTableView1ABON: TcxGridDBColumn;
    lichplombLICHALL: TIBStringField;
    lichplombPLOMBALL: TIBStringField;
    lichplombKOLI_P: TIBBCDField;
    lichplombKOLI_F: TLargeintField;
    lichplombDATE_POK: TDateField;
    cxGridDBTableView1KOLI_P: TcxGridDBColumn;
    cxGridDBTableView1KOLI_F: TcxGridDBColumn;
    cxGridDBTableView1DATE_POK: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLichPlomb: TFormLichPlomb;

implementation

uses registry, cxGridExportLink, comobj, main, iimport;

{$R *.dfm}

procedure TFormLichPlomb.cxButton1Click(Sender: TObject);
begin
  ExportGrid(cxGrid2);
end;

procedure TFormLichPlomb.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path:string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if not Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' , False) then
      //ShowMessage('Error in opening key')
      path := '.\'
    else
    begin
      path := Reg.Readstring('Personal')+'\'
    end;
  finally
    Reg.Free;
  end;

  sd:=TSaveDialog.Create(application);
  try
    if FileName='Table.xls' then
    begin
//      DateTimeToString(Filename,'mmddhhmm',now);
      DateTimeToString(Filename,'dd mm yyyy',now);

      Filename:=FormLichPlomb.Caption+' '+Filename+'.xls';
    end;
    sd.FileName := path + Filename;
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
    Excel.ActiveWindow.DisplayGridlines := True;
    Excel.columns[5].NumberFormat:='0,00';

    Excel.ActiveWindow.View := 2;
    if Excel.ActiveSheet.VPageBreaks.count <> 0 then
       Excel.ActiveSheet.VPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    if Excel.ActiveSheet.HPageBreaks.count <> 0 then
       Excel.ActiveSheet.HPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    Excel.ActiveWindow.View := 1;

  except
  end;
end;


procedure TFormLichPlomb.FormShow(Sender: TObject);
begin
Form4.Show;
Form4.Label2.Caption:='Завантаження даних! Зачекайте!!!';
Application.ProcessMessages;
lichplomb.Close;
lichplomb.Open;
Form4.Close;

end;

end.
