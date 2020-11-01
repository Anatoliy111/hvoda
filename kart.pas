unit kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, ExtCtrls, cxStyles, cxEdit,
  cxControls, cxContainer, cxTextEdit, cxPC;

type
  TForm2 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid1DBTableView1TIP: TcxGridDBColumn;
    cxGrid1DBTableView1N_LICH: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_VIP: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_POV: TcxGridDBColumn;
    cxGrid1DBTableView1N_INPLOMB: TcxGridDBColumn;
    cxGrid1DBTableView1N_MGPLOMB: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_INP: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_MGP: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    Panel3: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxTabSheet7: TcxTabSheet;
    Panel4: TPanel;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    Label1: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid2DBTableView1SCHET: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_VS: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_ZN: TcxGridDBColumn;
    cxGrid2DBTableView1NOTE: TcxGridDBColumn;
    cxGrid2DBTableView1N_PLOMB: TcxGridDBColumn;
    cxGridDBTableView2SCHET: TcxGridDBColumn;
    cxGridDBTableView2TIP: TcxGridDBColumn;
    cxGridDBTableView2N_LICH: TcxGridDBColumn;
    cxGridDBTableView2DATA_VIP: TcxGridDBColumn;
    cxGridDBTableView2DATA_ZN: TcxGridDBColumn;
    cxGridDBTableView1SCHET: TcxGridDBColumn;
    cxGridDBTableView1TIP: TcxGridDBColumn;
    cxGridDBTableView1N_LICH: TcxGridDBColumn;
    cxGridDBTableView1DATA_VIP: TcxGridDBColumn;
    cxGridDBTableView1DATA_POV: TcxGridDBColumn;
    cxGridDBTableView1NOTE: TcxGridDBColumn;
    cxGridDBTableView2NOTE: TcxGridDBColumn;
    Panel5: TPanel;
    cxButton1: TcxButton;
    cxGridDBTableView1DATA_VIG: TcxGridDBColumn;
    cxGridDBTableView2DATA_VIG: TcxGridDBColumn;
    cxGridDBTableView3YEARMON: TcxGridDBColumn;
    cxGridDBTableView3POKAZN: TcxGridDBColumn;
    cxGridDBTableView3DATE_POK: TcxGridDBColumn;
    cxGridDBTableView3N_DOC: TcxGridDBColumn;
    cxGridDBTableView3DATE_ZN: TcxGridDBColumn;
    cxGridDBTableView3VID_ZN: TcxGridDBColumn;
    cxGridDBTableView2ZN: TcxGridDBColumn;
    cxGrid2DBTableView1PL: TcxGridDBColumn;
    cxGrid2DBTableView1ZN: TcxGridDBColumn;
    cxGridDBTableView3PK: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1SCHET: TcxGridDBColumn;
    cxGrid3DBTableView1PL: TcxGridDBColumn;
    cxGrid3DBTableView1N_PLOMB: TcxGridDBColumn;
    cxGrid3DBTableView1DATE_VS: TcxGridDBColumn;
    cxGrid3DBTableView1NOTE: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      procedure Find();

  end;

var
  Form2: TForm2;


implementation

uses main, addkart, delkart;

{$R *.dfm}

procedure TForm2.cxButton1Click(Sender: TObject);
begin
if MainForm.lichzn.RecordCount<>0 then
begin
if MainForm.lich.Lookup('schet;n_lich',VarArrayOf([MainForm.lichznSCHET.Value,MainForm.lichznN_LICH.Value]),'schet')<>null then
begin
    ShowMessage('Лічильник з номером '+MainForm.lichznN_LICH.Value+' вже встановлено');
    exit;
end;

FormAddkart.addznlich:=true;
FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel17.Caption:=MainForm.hvdFIO.Value;
FormAddkart.Show;
FormAddkart.cxTextEdit2.Text:=MainForm.lichznTIP.Value;
FormAddkart.cxTextEdit3.Text:=MainForm.lichznN_LICH.Value;
FormAddkart.cxDateEdit1.EditValue:=MainForm.lichznDATA_VIG.Value;

if FormAddkart.IBQuery1.RecordCount<>0 then
begin
  FormAddkart.cxDateEdit7.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
  FormAddkart.cxCalcEdit5.EditValue:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;
end;
end;
end;

procedure TForm2.cxButton3Click(Sender: TObject);
begin

FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel17.Caption:=MainForm.hvdFIO.Value;
FormAddkart.Show;
if FormAddkart.IBQuery1.RecordCount<>0 then
begin
  FormAddkart.cxDateEdit7.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
  FormAddkart.cxCalcEdit5.Text:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;
end;
end;

procedure TForm2.cxButton4Click(Sender: TObject);
begin

FormDelkart.cxTabSheet1.TabVisible:=true;
FormDelkart.cxTabSheet2.TabVisible:=false;
FormDelkart.cxTabSheet3.TabVisible:=false;
FormDelkart.cxTextEdit1.Text:=MainForm.hvdSCHET.Value;
FormDelkart.cxLabel17.Caption:=MainForm.hvdFIO.Value;

FormDelkart.Show;

FormDelkart.cxTextEdit2.Text:=MainForm.lichTIP.Value;
FormDelkart.cxTextEdit3.Text:=MainForm.lichN_LICH.Value;
FormDelkart.cxDateEdit2.EditValue:=MainForm.lichDATA_VIG.Value;

end;

procedure TForm2.cxButton6Click(Sender: TObject);
begin

FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet2;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTextEdit5.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel16.Caption:=MainForm.hvdFIO.Value;
FormAddkart.Show;
end;

procedure TForm2.cxButton7Click(Sender: TObject);
begin
FormDelkart.cxTabSheet1.TabVisible:=false;
FormDelkart.cxTabSheet2.TabVisible:=true;
FormAddkart.cxTabSheet2.ShowHint:=true;
FormDelkart.cxTabSheet3.TabVisible:=false;
FormDelkart.cxTextEdit5.Text:=MainForm.hvdSCHET.Value;
FormDelkart.cxLabel16.Caption:=MainForm.hvdFIO.Value;

FormDelkart.Show;

FormDelkart.cxTextEdit6.Text:=MainForm.plombsPL.Value;
FormDelkart.cxTextEdit7.Text:=MainForm.plombsN_PLOMB.Value;
FormDelkart.cxDateEdit4.EditValue:=MainForm.plombsDATE_VS.Value;

end;

procedure TForm2.cxButton8Click(Sender: TObject);
begin

FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet3;
FormAddkart.cxTextEdit9.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel15.Caption:=MainForm.hvdFIO.Value;
FormAddkart.Show;
if FormAddkart.IBQuery1.RecordCount<>0 then
begin
  FormAddkart.cxDateEdit5.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
  FormAddkart.cxCalcEdit2.Text:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;
end;



end;

procedure TForm2.cxButton9Click(Sender: TObject);
begin
  if application.MessageBox('Ви дійсно бажаєте видалити показник?','Підтвердження',MB_YESNO)<>IDYES then
  begin
     MainForm.pokazn.Delete;
  end;
end;

procedure TForm2.Find();
begin
    MainForm.lich.SelectSQL.Text:=MainForm.lchSQL+' and schet=:sch order by data_vip desc';
    MainForm.lich.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
    MainForm.lich.Close;
    MainForm.lich.open;

    MainForm.lichzn.SelectSQL.Text:=MainForm.lchznSQL+' and schet=:sch order by data_zn desc';
    MainForm.lichzn.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
    MainForm.lichzn.Close;
    MainForm.lichzn.open;

    MainForm.plombs.SelectSQL.Text:=MainForm.plSQL+' and schet=:sch order by date_vs desc';
    MainForm.plombs.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
    MainForm.plombs.Close;
    MainForm.plombs.open;

    MainForm.plombszn.SelectSQL.Text:=MainForm.plznSQL+' and schet=:sch order by date_zn desc';
    MainForm.plombszn.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
    MainForm.plombszn.Close;
    MainForm.plombszn.open;

    MainForm.pokazn.SelectSQL.Text:=MainForm.pokSQL+' where schet=:sch order by date_pok desc';
    MainForm.pokazn.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
    MainForm.pokazn.Close;
    MainForm.pokazn.open;





end;



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if MainForm.lich.State in [dsInsert,dsEdit] then MainForm.lich.Post;
   MainForm.IBTransaction1.CommitRetaining;
      MainForm.Enabled:=true;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
    MainForm.Enabled:=false;
    cxPageControl1.ActivePage:=cxTabSheet1;
    cxPageControl2.ActivePage:=cxTabSheet4;
    cxPageControl3.ActivePage:=cxTabSheet5;

end;

end.
