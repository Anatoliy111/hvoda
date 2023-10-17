unit kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, ExtCtrls, cxStyles, cxEdit,
  cxControls, cxContainer, cxTextEdit, cxPC, IBCustomDataSet, IBQuery,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,DateUtils, cxGroupBox, cxLabel, cxDBLabel;

type
  TForm2 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label15: TLabel;
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
    cxGridDBTableView2ZN: TcxGridDBColumn;
    cxGrid2DBTableView1PL: TcxGridDBColumn;
    cxGrid2DBTableView1ZN: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1SCHET: TcxGridDBColumn;
    cxGrid3DBTableView1PL: TcxGridDBColumn;
    cxGrid3DBTableView1N_PLOMB: TcxGridDBColumn;
    cxGrid3DBTableView1DATE_VS: TcxGridDBColumn;
    cxGrid3DBTableView1NOTE: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label3: TLabel;
    cxGridDBTableView3PKZ: TcxGridDBColumn;
    cxGridDBTableView3LICH: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxGridDBTableView1DATA_STPOV: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    IBQuery1: TIBQuery;
    cxDBTextEdit1: TcxDBTextEdit;
    IBQuery2: TIBQuery;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    Label8: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxDBLabel2: TcxDBLabel;
    Label9: TLabel;
    cxDBLabel3: TcxDBLabel;
    Label10: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxButton5: TcxButton;
    IBQuery5: TIBQuery;
    Label11: TLabel;
    cxGridDBTableView2RASCH_DAY: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      LichPost:boolean;
      procedure Find(sch:string);
      procedure calclich(DS:TIBDataSet);


  end;

var
  Form2: TForm2;



implementation

uses main, addkart, delkart, mytools, math;

{$R *.dfm}

procedure TForm2.calclich(DS:TIBDataSet);
var date_zn,date_vs,date_stzn,lastdate_zn:TDate;
    kol,vs,zn,daynorm,raschday,kolmes,lastmes,firstmes:integer;
    lastvid:string;
    startvs:boolean;
    kub12,kubavg,kubavgday:currency;
    LFactor: Double;
begin
  if DS.FieldByName('schet').value='0102031' then
  begin
    IBQuery3.Close;
  end;

  IBQuery5.Close;
  IBQuery5.SQL.Text:='update lich set rasch_day=0 where schet=:sch';
  IBQuery5.ParamByName('sch').Value:=DS.FieldByName('schet').value;
  IBQuery5.ExecSQL;

  MainForm.lichzn.Close;
  MainForm.lichzn.Open;

  IBQuery3.Close;
  IBQuery3.ParamByName('sch').Value:=DS.FieldByName('schet').value;
  IBQuery3.ParamByName('yy').Value:=copy(IntToStr(MainForm.curYM),1,4);
  IBQuery3.ParamByName('mm').Value:=copy(IntToStr(MainForm.curYM),5,2);
  IBQuery3.Open;

  kol:=0;
  date_vs:=0;
  date_zn:=0;
  lastdate_zn:=0;
  date_stzn:=0;
  daynorm:=0;
  startvs:=true;
  if DS.FieldByName('ZNOLD_LICH').Value>0 then
  begin
     date_zn:=YearMon2Date(MainForm.period);
     kol:=DS.FieldByName('ZNOLD_LICH').Value;
     date_stzn:=date_zn-1;
     lastdate_zn:=date_zn;
  end;


  while not IBQuery3.eof do
  begin

//    if (kol<0) and (startvs) then
//    begin
//       daynorm:=DaysBetween(date_zn,StartOfTheMonth(date_zn));
//       //date_zn:=0;
//       //kol:=0
//    end;



    if (IBQuery3.FieldByName('vid').Value='zn') then
    begin
      lastdate_zn:=IBQuery3.FieldByName('data_l').Value;
      if (IBQuery3.FieldByName('vid_zn').Value<>6) then
      begin
        kol:=kol+1;
        if date_zn<>0 then
        begin
           daynorm:=daynorm+DaysBetween(date_zn,IBQuery3.FieldByName('data_l').Value)
        end;
//      if (IBQuery3.FieldByName('data_l').Value<date_zn) or (date_zn=0) then
         date_zn:=IBQuery3.FieldByName('data_l').Value;
      end;
    end;

    if (IBQuery3.FieldByName('vid').Value='vs') and (IBQuery3.FieldByName('vid_zn').Value<>6) then
    begin
       if kol>0 then
       begin
          kol:=kol-1;
          date_vs:=IBQuery3.FieldByName('data_l').Value;
       end;
//       if (IBQuery3.FieldByName('data_l').Value>date_vs) then
    end;

    if kol=0 then
    begin
        if date_stzn>0 then daynorm:=daynorm+DaysBetween(date_stzn,date_vs)
          else
             if DaysBetween(date_zn,date_vs)>0 then daynorm:=daynorm+DaysBetween(date_zn,date_vs);

       date_vs:=0;
       date_zn:=0;
       date_stzn:=0;
    end;



//    lastvid:=IBQuery3.FieldByName('vid').Value;

    IBQuery3.Next;
  end;

//  and (IBQuery3.FieldByName('vid').Value='zn')

  IBQuery5.Close;
  IBQuery5.SQL.Text:='select first 1 h_voda.*,(select count(*) kol from lich where lich.schet=h_voda.schet and data_zn is null) lichkol from h_voda where schet=:sch and yearmon=:ym order by kl desc';
  IBQuery5.ParamByName('sch').Value:=DS.FieldByName('schet').value;
  IBQuery5.ParamByName('ym').Value:=MainForm.period;
  IBQuery5.Open;

  if IBQuery5.FieldByName('lichkol').Value<IBQuery5.FieldByName('lich_to').Value then
  begin
           DS.Edit;
           DS.FieldByName('ZN_LICH').Value:=IBQuery5.FieldByName('lich_to').Value-IBQuery5.FieldByName('lichkol').Value;
           DS.Post;
           Label11.Visible:=true;
           kol:=IBQuery5.FieldByName('lich_to').Value-IBQuery5.FieldByName('lichkol').Value;
           date_zn:=lastdate_zn;
  end
  else Label11.Visible:=false;




  if (kol>0)  then
  begin
//    StartOfTheMonth(date_vs)
    if date_stzn>0 then daynorm:=daynorm+DaysBetween(date_stzn,EndOfTheMonth(date_zn))
    else
      daynorm:=daynorm+DaysBetween(date_zn,EndOfTheMonth(date_zn));

//    if DS.FieldByName('zn_lich').Value<1 then
//    begin
//           DS.Edit;
//           DS.FieldByName('zn_lich').Value:=1;
//           DS.Post;
//    end;
     

    date_stzn:=0;
    date_zn:=0;
  end;

  if daynorm>0 then
  begin


           DS.Edit;
           DS.FieldByName('PERE_DAY').Value:=daynorm;
           DS.Post;
           IBQuery4.Close;
           IBQuery4.ParamByName('sch').Value:=DS.FieldByName('schet').value;
           IBQuery4.ParamByName('ym').Value:=MainForm.period;
           IBQuery4.Open;
           kub12:=0;
           kolmes:=0;
           IBQuery4.Last;
           firstmes:=IBQuery4.FieldByName('yearmon').Value;
           IBQuery4.First;
           lastmes:=IBQuery4.FieldByName('yearmon').Value;

           while not IBQuery4.eof do
           begin
             kub12:=kub12+IBQuery4.FieldByName('kub').Value;
             kolmes:=kolmes+1;
           IBQuery4.Next;
           end;

           if (kub12>0) and (kolmes>0) then
           begin
             raschday:=DaysBetween(YearMon2Date(firstmes),EndOfTheMonth(YearMon2Date(lastmes)));
//             kubavg:=;
             kubavgday:=daynorm*(kub12/raschday);
             kubavg:=SimpleRoundTo(kubavgday,-3);
             DS.Edit;
             DS.FieldByName('NOR_RAZN').Value:=kubavg;
             DS.Post;
           end;



  end
  else
  begin
           DS.Edit;
           DS.FieldByName('PERE_DAY').Value:=0;
           DS.FieldByName('NOR_RAZN').Value:=0;
           DS.Post;

  end;

  MainForm.IBTransaction1.CommitRetaining;

end;

procedure TForm2.cxButton1Click(Sender: TObject);
begin
if MainForm.lich.RecordCount>=2 then
begin
    ShowMessage('Можливо додати максимум два лічильники');
    exit;
end;

if MainForm.lich.RecordCount=MainForm.hvdLICH_TO.Value then
  if application.MessageBox('Ви дійсно бажаєте додати нову точку обліку?','Підтвердження',MB_YESNO)=IDNO then
    exit;

if MainForm.lichzn.RecordCount<>0 then
begin
if MainForm.lich.Lookup('schet;n_lich',VarArrayOf([MainForm.lichznSCHET.Value,MainForm.lichznN_LICH.Value]),'schet')<>null then
begin
    ShowMessage('Лічильник з номером '+MainForm.lichznN_LICH.Value+' вже встановлено');
    exit;
end;

FormAddkart.cxCheckBox1.Visible:=true;
FormAddkart.cxlabel26.Visible:=true;

FormAddkart.addznlich:=true;
FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel17.Caption:=MainForm.hvdFIO.Value;
FormAddkart.Show;
FormAddkart.cxDateEdit2.Visible:=true;
//FormAddkart.cxLabel33.Visible:=false;
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

procedure TForm2.cxButton2Click(Sender: TObject);
begin
FormAddkart.cxCheckBox1.Visible:=false;
FormAddkart.cxlabel26.Visible:=false;


FormAddkart.addznlich:=false;
FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel17.Caption:=MainForm.hvdFIO.Value;
FormAddkart.Show;
FormAddkart.cxTextEdit2.Text:=MainForm.lichTIP.Value;
FormAddkart.cxTextEdit3.Text:=MainForm.lichN_LICH.Value;
FormAddkart.cxDateEdit1.EditValue:=MainForm.lichDATA_VIG.Value;
FormAddkart.cxDateEdit2.Visible:=false;
//FormAddkart.cxLabel33.Visible:=true;
//FormAddkart.cxLabel33.Caption:=DateToStr(MainForm.lichDATA_VIP.Value);
FormAddkart.cxDateEdit9.EditValue:=MainForm.lichDATA_STPOV.Value;
FormAddkart.cxDateEdit3.EditValue:=MainForm.lichDATA_POV.Value;

end;

procedure TForm2.cxButton3Click(Sender: TObject);
begin
if MainForm.lich.RecordCount>=2 then
begin
    ShowMessage('Можливо додати максимум два лічильники');
    exit;
end;

if MainForm.lich.RecordCount=MainForm.hvdLICH_TO.Value then
  if application.MessageBox('Ви дійсно бажаєте додати нову точку обліку?','Підтвердження',MB_YESNO)=IDNO then
    exit;



FormAddkart.addznlich:=true;

FormAddkart.cxCheckBox1.Visible:=true;
FormAddkart.cxlabel26.Visible:=true;

FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel17.Caption:=MainForm.hvdFIO.Value;
FormAddkart.cxDateEdit2.Visible:=true;
//FormAddkart.cxLabel33.Visible:=false;

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
FormDelkart.cxTabSheet1.Show;
FormDelkart.cxTabSheet2.TabVisible:=false;
FormDelkart.cxTabSheet3.TabVisible:=false;
FormDelkart.cxTextEdit1.Text:=MainForm.hvdSCHET.Value;
FormDelkart.cxLabel17.Caption:=MainForm.hvdFIO.Value;

FormDelkart.Show;

FormDelkart.cxTextEdit2.Text:=MainForm.lichTIP.Value;
FormDelkart.cxTextEdit3.Text:=MainForm.lichN_LICH.Value;
FormDelkart.cxDateEdit2.EditValue:=MainForm.lichDATA_VIP.Value;

end;

procedure TForm2.cxButton5Click(Sender: TObject);
begin
Form2.calclich(MainForm.hvd);
end;

procedure TForm2.cxButton6Click(Sender: TObject);
begin

FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet2;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTextEdit5.Text:=MainForm.hvdSCHET.Value;
FormAddkart.cxLabel16.Caption:=MainForm.hvdFIO.Value;
FormAddkart.Show;
end;

procedure TForm2.cxButton7Click(Sender: TObject);
begin
FormDelkart.cxTabSheet1.TabVisible:=false;
FormDelkart.cxTabSheet2.TabVisible:=true;
FormDelkart.cxTabSheet2.Show;
//FormAddkart.cxTabSheet2.ShowHint:=true;
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
FormAddkart.cxTabSheet4.TabVisible:=false;
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
  if (MainForm.pokaznYEARMON.Value<>MainForm.period) then
  begin
    ShowMessage('Неможливо видалити показник попереднього періоду');
    exit;
  end;


   if (MainForm.pokaznID_LICH.Value<>0) then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from pokazn where yearmon=:per and schet=:sch and id>=:id order by date_pok';
  IBQuery1.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
  IBQuery1.ParamByName('per').Value:=MainForm.period;
  IBQuery1.ParamByName('id').Value:=MainForm.pokaznID.Value;
  IBQuery1.Open;
  IBQuery1.last;
    if IBQuery1.RecordCount>1 then
    begin
      ShowMessage('Неможливо видалити показник, бо існують показники після показника встановлення ');
      exit;
    end;
  end;

  if (MainForm.pokaznID_LICH.Value<>0) then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from lich where schet=:sch and id=:id and DATA_ZN is null';
  IBQuery1.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
  IBQuery1.ParamByName('id').Value:=MainForm.pokaznID_LICH.Value;
  IBQuery1.Open;

    if IBQuery1.RecordCount<>0 then
    begin
      ShowMessage('Видаліть спочатку лічильник цього показника - тип '+IBQuery1.FieldByName('tip').Value+' №'+IBQuery1.FieldByName('n_lich').Value+' id'+IntToStr(IBQuery1.FieldByName('id').Value));
      exit;
    end;
  end;


  if application.MessageBox('Ви дійсно бажаєте видалити показник?','Підтвердження',MB_YESNO)=IDYES then
  begin
  if (MainForm.pokazn.RecordCount<>0) then
     MainForm.pokazn.Delete;
     FormAddkart.calcpok(MainForm.hvdSCHET.Value);
  end;
end;

procedure TForm2.Find(sch:string);
begin
    MainForm.lich.SelectSQL.Text:=MainForm.lchSQL+' and schet=:sch order by data_vip,id desc';
    MainForm.lich.ParamByName('sch').Value:=sch;
    MainForm.lich.Close;
    MainForm.lich.open;

    MainForm.lichzn.SelectSQL.Text:=MainForm.lchznSQL+' and schet=:sch order by data_zn,id desc';
    MainForm.lichzn.ParamByName('sch').Value:=sch;
    MainForm.lichzn.Close;
    MainForm.lichzn.open;

    MainForm.plombs.SelectSQL.Text:=MainForm.plSQL+' and schet=:sch order by date_vs desc';
    MainForm.plombs.ParamByName('sch').Value:=sch;
    MainForm.plombs.Close;
    MainForm.plombs.open;

    MainForm.plombszn.SelectSQL.Text:=MainForm.plznSQL+' and schet=:sch order by date_zn desc';
    MainForm.plombszn.ParamByName('sch').Value:=sch;
    MainForm.plombszn.Close;
    MainForm.plombszn.open;

    MainForm.pokazn.SelectSQL.Text:=MainForm.pokSQL+' where pokazn.schet=:sch order by id desc';
    MainForm.pokazn.ParamByName('sch').Value:=sch;
    MainForm.pokazn.Close;
    MainForm.pokazn.open;





end;



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if MainForm.lich.State in [dsInsert,dsEdit] then MainForm.lich.Post;
     if MainForm.hvd.State in [dsInsert,dsEdit] then MainForm.hvd.Post;
     if MainForm.org.State in [dsInsert,dsEdit] then MainForm.org.Post;

     if LichPost then
     begin
     IBQuery2.Close;
     IBQuery2.SQL.Text:='select first 1 * from lich where schet=:sch and vid_zn is null order by data_pov NULLS FIRST';
     IBQuery2.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
     IBQuery2.Open;


       if IBQuery2.RecordCount<>0 then
       begin
          if MainForm.hvdDATE_POK.Value<>IBQuery2.FieldByName('data_pov').Value then
          begin
          MainForm.hvd.Edit;
          MainForm.hvdLICH_POV.Value:=IBQuery2.FieldByName('data_pov').Value;
          MainForm.hvd.Post;
          end;
       end
       else
       begin
          if MainForm.hvdDATE_POK.Value<>IBQuery2.FieldByName('data_pov').Value then
          begin
          MainForm.hvd.Edit;
          MainForm.hvdLICH_POV.Clear;
          MainForm.hvd.Post;
          end;

       end;
     end;



   MainForm.IBTransaction1.CommitRetaining;
      MainForm.Enabled:=true;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
    MainForm.Enabled:=false;
    LichPost:=false;
    cxPageControl1.ActivePage:=cxTabSheet1;
    cxPageControl2.ActivePage:=cxTabSheet4;
    cxPageControl3.ActivePage:=cxTabSheet5;

    if MainForm.hvdLICH_TO.Value>MainForm.lich.RecordCount then
       label11.Visible:=true
    else label11.Visible:=false;
    



end;

end.
