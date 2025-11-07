unit BudKub;

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
  cxMemo, cxBlobEdit, cxDBLabel, cxMaskEdit, cxLookupEdit, cxDBLookupEdit;

type
  TForm5 = class(TForm)
    budkub: TIBDataSet;
    budkubSource: TDataSource;
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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    DataSource: TDataSource;
    data: TIBDataSet;
    dataYEARMON: TIntegerField;
    dataNORMA_HVD: TIBBCDField;
    dataym: TStringField;
    cxGridDBTableView1UL: TcxGridDBColumn;
    cxGridDBTableView1N_DOM: TcxGridDBColumn;
    cxGridDBTableView1KUB_ALL: TcxGridDBColumn;
    budkubUL: TIBStringField;
    budkubN_DOM: TIBStringField;
    budkubKUB_ALL: TFloatField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dataCalcFields(DataSet: TDataSet);
  private
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation



uses registry,inpedpro, edexpr, import, mytools, itoghvd,ComObj,dbf,dbf_lang,
  edplomb, kart, lichall, iimport, sprzn, addkart, ViberTask, ViberPok,
  ViberSendOrders, LichPlomb, splash, Conn, math, Pererah, Users, main;

{$R *.dfm}

procedure TForm5.cxButton1Click(Sender: TObject);
begin
  ExportGrid(cxGrid2);
end;

procedure TForm5.cxButton2Click(Sender: TObject);
begin
Form4.Show;
Form4.Label2.Caption:='Завантаження даних! Зачекайте!!!';
Application.ProcessMessages;
budkub.Close;
budkub.ParamByName('ym1').AsString:=cxLookupComboBox1.EditValue;
budkub.ParamByName('ym2').AsString:=cxLookupComboBox2.EditValue;
budkub.Open;
Form4.Close;
end;

procedure TForm5.dataCalcFields(DataSet: TDataSet);
begin
 dataym.Value:=Date2Str(YearMon2Date(dataYearMon.Value),'yyyy MMMM');
end;

procedure TForm5.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
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

      Filename:=Form5.Caption+' '+Filename+'.xls';
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

procedure TForm5.FormShow(Sender: TObject);
begin
data.Open;
budkub.Close;
cxLookupComboBox1.EditValue:=MainForm.dataYEARMON.Value;
cxLookupComboBox2.EditValue:=MainForm.dataYEARMON.Value;
end;

end.
