unit addkart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxPC,
  cxControls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxGraphics, DB, IBCustomDataSet, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox,DateUtils, IBQuery, cxCalc;

type
  TFormAddkart = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxLabel12: TcxLabel;
    cxTextEdit8: TcxTextEdit;
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
    cxLabel21: TcxLabel;
    cxTextEdit13: TcxTextEdit;
    cxLabel22: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    IBVIDZN: TIBDataSet;
    IBVIDZNID: TIntegerField;
    IBVIDZNVID_ZN: TIBStringField;
    IBVIDZNVID_OB: TIntegerField;
    VIDZNSource: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel23: TcxLabel;
    cxCalcEdit1: TcxCalcEdit;
    IBQuery1: TIBQuery;
    cxCalcEdit2: TcxCalcEdit;
    cxCalcEdit3: TcxCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDateEdit2PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxCalcEdit1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddkart: TFormAddkart;

implementation

uses delkart, main, mytools;

{$R *.dfm}

procedure TFormAddkart.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormAddkart.cxButton3Click(Sender: TObject);
begin

if cxTabSheet1.TabVisible then
begin
  if (cxTextEdit2.Text<>'')
   and (cxTextEdit3.Text<>'')
   and (cxTextEdit13.Text<>'')
   and (cxDateEdit1.EditValue<>null)
   and (cxDateEdit2.EditValue<>null)
  then
  begin
  MainForm.lich.Append;
  MainForm.lichSCHET.Value:=trim(cxTextEdit1.Text);
  MainForm.lichTIP.Value:=trim(cxTextEdit2.Text);
  MainForm.lichN_LICH.Value:=trim(cxTextEdit3.Text);
  MainForm.lichDATA_VIG.Value:=cxDateEdit1.EditValue;
  MainForm.lichDATA_VIP.Value:=cxDateEdit2.EditValue;
  MainForm.lichDATA_POV.Value:=cxDateEdit3.EditValue;
  MainForm.lichNOTE.Value:=cxTextEdit4.Text;
  MainForm.lich.Post;

  MainForm.pokazn.Append;
  MainForm.pokaznYEARMON.Value:=MainForm.period;
  MainForm.pokaznSCHET.Value:=trim(cxTextEdit1.Text);
  MainForm.pokaznPOKAZN.Value:=str2float(trim(cxTextEdit13.Text));
  MainForm.pokaznDATE_POK.Value:=cxDateEdit2.EditValue;
  MainForm.pokaznVID_POK.Value:=17;
  MainForm.pokazn.Post;


  end
  else
    ShowMessage('Заповніть всі поля, виділені сірим кольором');
end;

if cxTabSheet2.TabVisible then
begin
  if (cxLookupComboBox1.EditValue<>'')
   and (cxTextEdit7.Text<>'')
   and (cxDateEdit4.EditValue<>null)
  then
  begin
  MainForm.plombs.Append;
  MainForm.plombsSCHET.Value:=trim(cxTextEdit5.Text);
  MainForm.plombsVID_PLOMB.Value:=trim(cxLookupComboBox1.EditValue);
  MainForm.plombsN_PLOMB.Value:=trim(cxTextEdit7.Text);
  MainForm.plombsDATE_VS.Value:=cxDateEdit4.EditValue;
  MainForm.plombsNOTE.Value:=cxTextEdit8.Text;
  MainForm.plombs.Post;
  end
  else
    ShowMessage('Заповніть всі поля, виділені сірим кольором');
end;

if cxTabSheet3.TabVisible then
begin
  if cxDateEdit6.EditValue<cxDateEdit5.EditValue then
  begin
    ShowMessage('Дата нового показника не може бути меньшою за дату останнього показника');
    exit;
  end;
  if cxCalcEdit1.EditValue<cxCalcEdit2.EditValue then
  begin
    ShowMessage('Новий показник не може бути меньшим за останній показник');
    exit;
  end;



  if (cxTextEdit9.Text<>'')
   and (cxLookupComboBox2.EditValue<>'')
   and (cxDateEdit6.EditValue<>null)
  then
  begin
  MainForm.pokazn.Append;
  MainForm.pokaznSCHET.Value:=trim(cxTextEdit9.Text);
  MainForm.pokaznYEARMON.Value:=MainForm.period;
  MainForm.pokaznPOKAZN.Value:=str2float(trim(cxTextEdit9.Text));
  MainForm.pokaznDATE_POK.Value:=cxDateEdit6.EditValue;
  MainForm.pokaznVID_POK.Value:=cxLookupComboBox2.EditValue;
  MainForm.pokazn.Post;

  MainForm.hvd.Edit;
  MainForm.hvdSCH_CUR.Value:=cxCalcEdit1.Value;
  MainForm.hvdSCH_OLD.Value:=cxCalcEdit2.Value;
  MainForm.hvdDATE_POK.Value:=cxDateEdit6.EditValue;
  MainForm.hvdVID_POK.Value:=cxCalcEdit2.Value;
  MainForm.hvd.Post;

  end
  else
    ShowMessage('Заповніть всі поля, виділені сірим кольором');
end;

end;

procedure TFormAddkart.cxCalcEdit1PropertiesChange(Sender: TObject);
begin
cxCalcEdit3.EditValue:=cxCalcEdit1.EditValue=cxCalcEdit2.EditValue;
end;

procedure TFormAddkart.cxDateEdit2PropertiesChange(Sender: TObject);
begin

if cxDateEdit2.EditValue<>null then
   cxDateEdit3.EditValue:=IncYear(cxDateEdit2.EditValue,4)
else cxDateEdit3.EditValue:=null;

end;

procedure TFormAddkart.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin

for i := 0 to ComponentCount - 1 do
   if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text:='';

for i := 0 to ComponentCount - 1 do
   if Components[i] is TcxdateEdit then
      (Components[i] as TcxdateEdit).EditValue:=null;

end;



procedure TFormAddkart.FormShow(Sender: TObject);
begin
  IBVIDZN.Close;
//  IBVIDZN.ParamByName('vid').Value:=vidspr;
  IBVIDZN.Open;
end;

end.
