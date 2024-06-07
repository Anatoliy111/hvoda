unit delkart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxPC,
  cxControls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxGraphics, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, IBCustomDataSet, cxCalc, IBQuery;

type
  TFormDelkart = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel22: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel12: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    IBVIDZN: TIBDataSet;
    VIDZNSource: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxCalcEdit3: TcxCalcEdit;
    cxCalcEdit1: TcxCalcEdit;
    cxDateEdit7: TcxDateEdit;
    IBQuery4: TIBQuery;
    IBVIDZNID: TIntegerField;
    IBVIDZNVID_ZN: TIBStringField;
    IBVIDZNVID_OB: TIntegerField;
    IBVIDZNVID_SP: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vidspr:integer;
  end;

var
  FormDelkart: TFormDelkart;
  spvidSQL:string;

implementation

uses main, mytools, kart;

{$R *.dfm}

procedure TFormDelkart.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormDelkart.cxButton3Click(Sender: TObject);
begin
if cxTabSheet1.TabVisible then
begin
  if (cxLookupComboBox1.EditValue<>null)
   and (cxDateEdit1.EditValue<>null)
  then
  begin


      if Date2YearMon(cxDateEdit1.EditValue)< MainForm.period  then
      begin
         ShowMessage('Місяць зняття лічильника не може бути меньше ніж обліковий період!');
         exit;
      end;

      if Date2YearMon(cxDateEdit1.EditValue)> MainForm.period  then
      begin
         ShowMessage('Місяць зняття лічильника не може бути більше ніж обліковий період!');
         exit;
      end;

      if cxDateEdit1.EditValue < MainForm.lichDATA_VIP.Value  then
      begin
         ShowMessage('Дата зняття лічильника не може бути меньша ніж дата встановлення!');
         exit;
      end;

      MainForm.lich.Edit;
      MainForm.lichVID_ZN.Value:=cxLookupComboBox1.EditValue;
      MainForm.lichDATA_ZN.Value:=cxDateEdit1.EditValue;
      MainForm.lich.Post;
      MainForm.lich.Close;
      MainForm.lich.Open;
      MainForm.lichzn.Close;
      MainForm.lichzn.Open;

      if cxLookupComboBox1.EditValue=39 then
      begin
        MainForm.hvd.Edit;
        MainForm.hvdLICH_TO.Value:=MainForm.hvdLICH_TO.Value-1;
        if MainForm.hvdLICH_TO.Value=0 then
           MainForm.hvdWID.Value:=42;
        MainForm.hvd.Post;
      end;
      

      MainForm.IBTransaction1.CommitRetaining;

      Form2.cxButton5.Click;
     // Form2.calclich(MainForm.hvd);

  IBQuery4.Close;
  IBQuery4.SQL.Text:='select first 1 * from h_voda where schet=:sch and yearmon=:ym order by kl desc';
  IBQuery4.ParamByName('sch').Value:=cxTextEdit1.Text;
  IBQuery4.ParamByName('ym').Value:=MainForm.period;
  IBQuery4.Open;

//      if MainForm.hvdSCHET.Value<>cxTextEdit1.Text then
//      begin
//        MainForm.hvd.First;
//        MainForm.hvd.Locate('schet',cxTextEdit1.Text,[]);
//      end;
//      if MainForm.hvdSCHET.Value=cxTextEdit1.Text then
//      begin
//         MainForm.hvd.Edit;
//         MainForm.hvdWID.Value:=3;
//         MainForm.hvd.Post;
//      end;



  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

if cxTabSheet2.TabVisible then
begin
  if (cxLookupComboBox2.EditValue<>null)
   and (cxDateEdit3.EditValue<>null)
  then
  begin
      MainForm.plombs.Edit;
      MainForm.plombsVID_ZN.Value:=cxLookupComboBox2.EditValue;
      MainForm.plombsDATE_ZN.Value:=cxDateEdit3.EditValue;
      MainForm.plombs.Post;
      MainForm.plombs.Close;
      MainForm.plombs.Open;
      MainForm.plombszn.Close;
      MainForm.plombszn.Open;

  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

if cxTabSheet3.TabVisible then
begin
  if (cxLookupComboBox2.EditValue<>null)
   and (cxDateEdit3.EditValue<>null)
  then
  begin
      MainForm.plombs.Edit;
      MainForm.plombsVID_ZN.Value:=cxLookupComboBox2.EditValue;
      MainForm.plombsDATE_ZN.Value:=cxDateEdit3.EditValue;
      MainForm.plombs.Post;
      MainForm.plombs.Close;
      MainForm.plombs.Open;
      MainForm.plombszn.Close;
      MainForm.plombszn.Open;

  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

  MainForm.IBTransaction1.CommitRetaining;
close;

end;

procedure TFormDelkart.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
for i := 0 to ComponentCount - 1 do
begin
   if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text:='';
   if Components[i] is TcxdateEdit then
      (Components[i] as TcxdateEdit).EditValue:=null;
   if Components[i] is TcxCalcEdit then
      (Components[i] as TcxCalcEdit).EditValue:=null;
   if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).EditValue:=null;
end;
end;

procedure TFormDelkart.FormCreate(Sender: TObject);
begin
spvidSQL:=IBVIDZN.SelectSQL.Text;
end;

procedure TFormDelkart.FormShow(Sender: TObject);
begin

  IBVIDZN.Close;
  if cxTabSheet1.Visible then IBVIDZN.SelectSQL.Text:=spvidSQL+' where vid_sp=''dellich''';
  if cxTabSheet2.Visible then IBVIDZN.SelectSQL.Text:=spvidSQL+' where vid_sp=''delpl''';
  IBVIDZN.Open;
end;

end.
