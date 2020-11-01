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
    cxLookupComboBox1: TcxLookupComboBox;
    IBVIDZN: TIBDataSet;
    IBVIDZNID: TIntegerField;
    IBVIDZNVID_OB: TIntegerField;
    VIDZNSource: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel23: TcxLabel;
    IBQuery1: TIBQuery;
    cxCalcEdit2: TcxCalcEdit;
    cxCalcEdit3: TcxCalcEdit;
    IBVIDZNVID_ZN: TIBStringField;
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit4: TcxCalcEdit;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    cxDateEdit7: TcxDateEdit;
    cxLabel25: TcxLabel;
    cxCalcEdit5: TcxCalcEdit;
    IBVIDZNVID_SP: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDateEdit2PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxCalcEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    addznlich:boolean;
    { Public declarations }
    function AddPokaz(sch:string;data:TDateTime;vid:integer;pok:double):boolean;

  end;

var
  FormAddkart: TFormAddkart;
  spvidSQL:string;



implementation

uses delkart, main, mytools;

{$R *.dfm}

function TFormAddkart.AddPokaz(sch:string;data:TDateTime;vid:integer;pok:double):boolean;
begin

//  IBQuery1.Close;
//  IBQuery1.SQL.Text:='select * pokaz where yearmon=:per and schet=:sch and date_pok=:data';
  MainForm.pokazn.First;
//  if MainForm.pokazn.Lookup('date_pok',data,'date_pok')=null then
  if data<=FormAddkart.IBQuery1.FieldByName('date_pok').Value then
  begin
    ShowMessage('Дата нового показника не може бути меньшою або рівно дати останнього показника');
    exit;
  end;

  MainForm.pokazn.Append;
  MainForm.pokazn.Edit;
  MainForm.pokaznYEARMON.Value:=MainForm.period;
  MainForm.pokaznSCHET.Value:=sch;
  MainForm.pokaznPOKAZN.Value:=pok;
  MainForm.pokaznDATE_POK.Value:=data;
  MainForm.pokaznVID_POK.Value:=vid;
  MainForm.pokazn.Post;



  result:=true;
end;

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
   and (cxDateEdit1.EditValue<>null)
   and (cxDateEdit2.EditValue<>null)
   and (cxCalcEdit4.EditValue<>0)
  then
  begin

  if not AddPokaz(trim(cxTextEdit1.Text),cxDateEdit2.EditValue,17,cxCalcEdit4.EditValue) then exit;

  MainForm.lich.Append;
  MainForm.lich.Edit;
  MainForm.lichSCHET.Value:=trim(cxTextEdit1.Text);
  MainForm.lichTIP.Value:=trim(cxTextEdit2.Text);
  MainForm.lichN_LICH.Value:=trim(cxTextEdit3.Text);
  MainForm.lichDATA_VIG.Value:=cxDateEdit1.EditValue;
  MainForm.lichDATA_VIP.Value:=cxDateEdit2.EditValue;
  MainForm.lichDATA_POV.Value:=cxDateEdit3.EditValue;
  MainForm.lichNOTE.Value:=cxTextEdit4.Text;
  MainForm.lich.Post;

  MainForm.pokazn.Edit;
  MainForm.pokaznID_LICH.Value:=MainForm.lichID.Value;
  MainForm.pokazn.Post;

  MainForm.pokazn.Close;
  MainForm.pokazn.Open;


  MainForm.hvd.Edit;
  MainForm.hvdSCH_CUR.Value:=cxCalcEdit4.EditValue;
  MainForm.hvdSCH_OLD.Value:=cxCalcEdit4.EditValue;
  MainForm.hvdSCH_RAZN.Value:=0;
  MainForm.hvdDATE_POK.Value:=cxDateEdit2.EditValue;
  MainForm.hvdVID_POK.Value:=17;
  MainForm.hvd.Post;




  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

if cxTabSheet2.TabVisible then
begin
  if (cxLookupComboBox1.EditValue<>null)
   and (cxTextEdit7.Text<>'')
   and (cxDateEdit4.EditValue<>null)
  then
  begin
  MainForm.plombs.Append;
  MainForm.plombsSCHET.Value:=trim(cxTextEdit5.Text);
  MainForm.plombsVID_PL.Value:=cxLookupComboBox1.EditValue;
  MainForm.plombsN_PLOMB.Value:=trim(cxTextEdit7.Text);
  MainForm.plombsDATE_VS.Value:=cxDateEdit4.EditValue;
  MainForm.plombsNOTE.Value:=cxTextEdit8.Text;
  MainForm.plombs.Post;

  MainForm.plombs.Close;
  MainForm.plombs.Open;

  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

if cxTabSheet3.TabVisible then
begin
//  if cxDateEdit6.EditValue<cxDateEdit5.EditValue then
//  begin
//    ShowMessage('Дата нового показника не може бути меньшою за дату останнього показника');
//    exit;
//  end;
  if cxCalcEdit1.EditValue<cxCalcEdit2.EditValue then
  begin
    ShowMessage('Новий показник не може бути меньшим за останній показник');
    exit;
  end;
  if cxCalcEdit1.EditValue-cxCalcEdit2.EditValue>150 then
  begin
    ShowMessage('Перевірте правильність введених даних');
    exit;
  end;


  if (cxTextEdit9.Text<>'')
   and (cxLookupComboBox2.EditValue<>null)
   and (cxDateEdit6.EditValue<>null)
   and (cxCalcEdit1.Value<>0)
  then
  begin

  if not AddPokaz(trim(cxTextEdit9.Text),cxDateEdit6.EditValue,cxLookupComboBox2.EditValue,cxCalcEdit1.Value) then exit;

  MainForm.hvd.Edit;
  MainForm.hvdSCH_CUR.Value:=cxCalcEdit1.Value;
  MainForm.hvdSCH_OLD.Value:=cxCalcEdit2.Value;
  MainForm.hvdSCH_RAZN.Value:=cxCalcEdit1.Value-cxCalcEdit2.Value;
  MainForm.hvdDATE_POK.Value:=cxDateEdit6.EditValue;
  MainForm.hvdVID_POK.Value:=cxLookupComboBox2.EditValue;
  MainForm.hvd.Post;

  MainForm.pokazn.Close;
  MainForm.pokazn.Open

  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

close;

end;

procedure TFormAddkart.cxCalcEdit1PropertiesEditValueChanged(Sender: TObject);
begin
cxCalcEdit3.EditValue:=cxCalcEdit1.EditValue-cxCalcEdit2.EditValue;
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



procedure TFormAddkart.FormCreate(Sender: TObject);
begin
spvidSQL:=IBVIDZN.SelectSQL.Text;
end;

procedure TFormAddkart.FormShow(Sender: TObject);
begin
  IBVIDZN.Close;
  if cxTabSheet2.Visible then IBVIDZN.SelectSQL.Text:=spvidSQL+' where vid_sp=''pl''';
  if cxTabSheet3.Visible then IBVIDZN.SelectSQL.Text:=spvidSQL+' where vid_sp=''addpk'' and id<>17 and id<>20';
  IBVIDZN.Open;

  FormAddkart.IBQuery1.Close;
  FormAddkart.IBQuery1.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
  FormAddkart.IBQuery1.open;

end;

end.
