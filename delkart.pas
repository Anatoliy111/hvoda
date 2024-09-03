unit delkart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxPC,
  cxControls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxGraphics, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, IBCustomDataSet, cxCalc, IBQuery, cxCheckBox;

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
    cxCheckBox1: TcxCheckBox;
    cxLabel21: TcxLabel;
    cxLabel30: TcxLabel;
    cxDateEdit8: TcxDateEdit;
    cxLabel31: TcxLabel;
    cxCalcEdit5: TcxCalcEdit;
    cxLabel32: TcxLabel;
    cxCalcEdit4: TcxCalcEdit;
    IBQuery1: TIBQuery;
    cxLabel33: TcxLabel;
    cxCalcEdit2: TcxCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxCalcEdit4PropertiesEditValueChanged(Sender: TObject);
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

uses main, mytools, kart, myform, addkart;

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

      if (cxCheckBox1.Checked) and (cxCalcEdit4.EditValue=null) then
      begin
        ShowMessage('Введіть новий показник');
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

      MainForm.DSet.Edit;

      if cxLookupComboBox1.EditValue=39 then
      begin
        MainForm.DSet.Edit;
        MainForm.DSet.FieldByName('LICH_TO').AsInteger:=MainForm.DSet.FieldByName('LICH_TO').AsInteger-1;
        if MainForm.DSet.FieldByName('LICH_TO').AsInteger=0 then
           MainForm.DSet.FieldByName('WID').Value:=42;
      end
      else if cxLookupComboBox1.EditValue=6 then
           MainForm.DSet.FieldByName('WID').Value:=42
      else
           MainForm.DSet.FieldByName('WID').Value:=43;

      MainForm.DSet.Post;

      MainForm.IBTransaction1.CommitRetaining;

   if cxCheckBox1.Checked then
  begin
  if not FormAddkart.AddPokaz(trim(cxTextEdit1.Text),cxDateEdit1.EditValue,20,cxCalcEdit4.EditValue) then exit;

  MainForm.pokazn.Edit;
  MainForm.pokaznID_LICH.Value:=MainForm.lichID.Value;
  MainForm.pokazn.Post;

  MainForm.pokazn.Close;
  MainForm.pokazn.Open;
  end;


Form2.calcpok2(MainForm.DSet,1);
Form2.calclich(MainForm.DSet);
     // Form2.calclich(MainForm.DSet);

//  IBQuery4.Close;
//  IBQuery4.SQL.Text:='select first 1 * from h_voda where schet=:sch and yearmon=:ym order by kl desc';
//  IBQuery4.ParamByName('sch').Value:=cxTextEdit1.Text;
//  IBQuery4.ParamByName('ym').Value:=MainForm.period;
//  IBQuery4.Open;

//      if MainForm.DSetSCHET.Value<>cxTextEdit1.Text then
//      begin
//        MainForm.DSet.First;
//        MainForm.DSet.Locate('schet',cxTextEdit1.Text,[]);
//      end;
//      if MainForm.DSetSCHET.Value=cxTextEdit1.Text then
//      begin
//         MainForm.DSet.Edit;
//         MainForm.DSetWID.Value:=3;
//         MainForm.DSet.Post;
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

procedure TFormDelkart.cxCalcEdit4PropertiesEditValueChanged(Sender: TObject);
begin
cxCalcEdit2.EditValue:=cxCalcEdit4.EditValue-cxCalcEdit5.EditValue;
end;

procedure TFormDelkart.cxCheckBox1PropertiesChange(Sender: TObject);
var ympok:integer;
begin
if cxCheckBox1.Checked then
begin
  ympok:=Date2YearMon(IBQuery1.FieldByName('DATE_POK').Value);
  if (ympok<MainForm.back3month) and (MainForm.DSet.FieldByName('WID').Value=45) then
  begin
  ShowMessage('При не повіреному лічильнику, дата останнього показника більше ніж 3 місяці. Додавання показника закрито!');
  cxCheckBox1.Checked:=false;
  exit;
  end;


  FormDelkart.cxDateEdit8.Visible:=true;
  FormDelkart.cxCalcEdit5.Visible:=true;
  FormDelkart.cxCalcEdit4.Visible:=true;
  FormDelkart.cxCalcEdit2.Visible:=true;
  FormDelkart.cxLabel30.Visible:=true;
  FormDelkart.cxLabel31.Visible:=true;
  FormDelkart.cxLabel32.Visible:=true;
  FormDelkart.cxLabel33.Visible:=true;
end
else
begin
  FormDelkart.cxDateEdit8.Visible:=false;
  FormDelkart.cxCalcEdit5.Visible:=false;
  FormDelkart.cxCalcEdit4.Visible:=false;
  FormDelkart.cxCalcEdit2.Visible:=false;
  FormDelkart.cxLabel30.Visible:=false;
  FormDelkart.cxLabel31.Visible:=false;
  FormDelkart.cxLabel32.Visible:=false;
  FormDelkart.cxLabel33.Visible:=false;
end;
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

  if cxTabSheet1.Visible then
  begin

  IBQuery1.Close;
  IBQuery1.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
  IBQuery1.open;

  cxCheckBox1.Checked:=false;
  cxCheckBox1PropertiesChange(cxCheckBox1);

    if IBQuery1.RecordCount<>0 then
    begin
      cxDateEdit8.EditValue:=IBQuery1.FieldByName('date_pok').Value;
      if IBQuery1.FieldByName('pokazn').IsNull then
        cxCalcEdit5.Text:='0'
      else
        cxCalcEdit5.Text:=IBQuery1.FieldByName('pokazn').Value;

end;

  end;

end;

end.
