unit lichall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, IBCustomDataSet, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, ExtCtrls, frxClass, frxDBSet, frxDCtrl;

type
  TForm3 = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    lichall: TIBDataSet;
    lichallSource: TDataSource;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1TIP: TcxGridDBColumn;
    cxGrid1DBTableView1N_LICH: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_VIP: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_POV: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1UL: TcxGridDBColumn;
    cxGrid1DBTableView1N_DOM: TcxGridDBColumn;
    cxGrid1DBTableView1KV: TcxGridDBColumn;
    lichallID: TIntegerField;
    lichallSCHET: TIBStringField;
    lichallTIP: TIBStringField;
    lichallN_LICH: TIBStringField;
    lichallDATA_VIP: TDateField;
    lichallDATA_POV: TDateField;
    lichallDATA_STPOV: TDateField;
    lichallFIO: TIBStringField;
    lichallUL: TIBStringField;
    lichallN_DOM: TIBStringField;
    lichallKV: TIBStringField;
    cxGrid1DBTableView1DATA_STPOV: TcxGridDBColumn;
    cxButton2: TcxButton;
    frxDBDataset1: TfrxDBDataset;
    lichprint: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    lichprintSource: TDataSource;
    frxReport1: TfrxReport;
    lichallABON: TIBStringField;
    lichprintABON: TIBStringField;
    cxGrid1DBTableView1ABON: TcxGridDBColumn;
    procedure lichallBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  startSQL:string;

implementation

uses registry, cxGridExportLink, comobj, main;

{$R *.dfm}

procedure TForm3.cxButton1Click(Sender: TObject);
begin
  ExportGrid(cxGrid1);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   startSQL:=lichall.SelectSQL.Text;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
lichall.close;
lichall.SelectSQL.Text:=startSQL+' order by lich.schet';
lichall.Open;
end;

procedure TForm3.lichallBeforeOpen(DataSet: TDataSet);
begin
  lichall.ParamByName('yearmon').AsInteger:=MainForm.CurYM;
end;

procedure TForm3.cxButton2Click(Sender: TObject);
begin
lichprint.Close;
if cxGrid1DBTableView1.DataController.Filter.FilterText<>'' then
begin
 lichprint.SelectSQL.Text:=startSQL+' and '+cxGrid1DBTableView1.DataController.Filter.FilterText;
end
else
 lichprint.SelectSQL.Text:=startSQL;
 lichprint.SelectSQL.Text:=lichprint.SelectSQL.Text+' order by lich.schet';


 lichprint.ParamByName('yearmon').AsInteger:=MainForm.CurYM;

 lichprint.Open;

  frxReport1.LoadFromFile('lich_pr.fr3');

  frxReport1.ShowReport;
end;

procedure TForm3.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
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

      Filename:=Form3.Caption+' '+Filename+'.xls'
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


end.
