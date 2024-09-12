unit import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, IBCustomDataSet,
  IBQuery, IBDatabase, cxControls, cxContainer, cxEdit, cxProgressBar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,mytools, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCheckBox, Menus, cxButtons;

type
  TForm1 = class(TForm)
    hvd: TIBDataSet;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Button2: TButton;
    IBTransaction1: TIBTransaction;
    qry: TIBQuery;
    cxProgressBar2: TcxProgressBar;
    Label3: TLabel;
    hvdKL: TIntegerField;
    hvdPLOMB: TSmallintField;
    hvdSCH_CUR: TIBBCDField;
    hvdSCH_OLD: TIBBCDField;
    hvdSCHET: TIBStringField;
    hvdYEARMON: TIntegerField;
    hvdWID: TSmallintField;
    hvdFIO: TIBStringField;
    hvdKOLI_P0: TIntegerField;
    hvdKOLI_P: TIBBCDField;
    hvdKOLI_P1: TIntegerField;
    Button3: TButton;
    hvdKOLI_F: TLargeintField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PW: TcxGridDBColumn;
    cxGrid1DBTableView1ADDLICH: TcxGridDBColumn;
    cxGrid1DBTableView1ADDPOKAZ: TcxGridDBColumn;
    cxGrid1DBTableView1ADDPLOMB: TcxGridDBColumn;
    cxGrid1DBTableView1ENDMES: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAIM: TcxGridDBColumn;
    Button4: TButton;
    hvdDOM: TIBStringField;
    hvdKVART: TIBStringField;
    hvdN_SCH: TIBStringField;
    hvdSCH_RAZN: TIBBCDField;
    hvdSCH_RAZN2: TIBBCDField;
    hvdNOR_RAZN: TIBBCDField;
    hvdGRP_RAZN: TIBBCDField;
    hvdPERE_DAY: TIntegerField;
    hvdPERE_RAZN: TIBBCDField;
    hvdID_KONTR: TSmallintField;
    hvdUL: TIBStringField;
    hvdN_DOM: TIBStringField;
    hvdKV: TIBStringField;
    hvdNOTE: TIBStringField;
    hvdRASCH_KUB: TIBBCDField;
    hvdRASCH_NOR: TIBBCDField;
    hvdPOD: TIntegerField;
    hvdRASCH_NOTE: TIBStringField;
    hvdDATE_POK: TDateField;
    hvdVID_POK: TIntegerField;
    hvdKUB_MES: TIBBCDField;
    hvdLICH_POV: TDateField;
    hvdORG: TIntegerField;
    hvdVID_RN: TIntegerField;
    hvdFILTR: TIntegerField;
    hvdPOMPA: TIntegerField;
    hvdZN_LICH: TIntegerField;
    hvdZNOLD_LICH: TIntegerField;
    hvdDATE_ZN: TDateField;
    hvdLICH_TO: TIntegerField;
    hvdKLNTAR: TIntegerField;
    hvdTARIF_NAME: TIBStringField;
    hvdNORMA: TFloatField;
    hvdOLD_NORM: TFloatField;
    hvdDEL_NORM: TFloatField;
    hvdPREV_NORM: TFloatField;
    hvdLICH_YEARMON: TIntegerField;
    hvdEDRPOU: TIntegerField;
    hvdKL_UL: TIntegerField;
    hvdR_NACH: TIBStringField;
    hvdNORM_BLICH: TFloatField;
    hvdKUB_NOBALANS: TFloatField;
    hvdKUB_ALL: TFloatField;
    hvdPLOSCH_UR: TFloatField;
    hvdPERERAH: TFloatField;
    cxGrid1DBTableView1ADM: TcxGridDBColumn;
    users: TIBDataSet;
    usersSource: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    usersID: TIntegerField;
    usersUSER_NAIM: TIBStringField;
    usersPW: TIBStringField;
    usersADDLICH: TIntegerField;
    usersADDPOKAZ: TIntegerField;
    usersADDPLOMB: TIntegerField;
    usersENDMES: TIntegerField;
    usersDEL: TIntegerField;
    usersADM: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure usersADMChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure exec(s:string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses dbf, main,FileCtrl, iimport, addkart;
var hh,kk,oo:TDbf;

procedure TForm1.exec(s:string);
begin
  qry.SQL.Clear;
  qry.SQL.Add(s);
  qry.ExecSQL;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if users.State in [dsInsert,dsEdit] then users.Post;
mainform.IBTransaction1.CommitRetaining;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
users.Close;
users.Open;
end;

procedure TForm1.usersADMChange(Sender: TField);
begin
  if usersADM.Value=1 then
  begin
  users.Edit;
  usersADDLICH.Value:=1;
  usersADDPOKAZ.Value:=1;
  usersADDPLOMB.Value:=1;
  usersENDMES.Value:=1;
  users.Post;
  end
  else
  begin
  users.Edit;
  usersADDLICH.Value:=0;
  usersADDPOKAZ.Value:=0;
  usersADDPLOMB.Value:=0;
  usersENDMES.Value:=0;
  users.Post;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var dir:string;
begin
  hh:=TDbf.Create(self);
  kk:=TDbf.Create(self);
  oo:=TDbf.Create(self);

  Dir := ExtractFilePath(ParamStr(0));
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],0) then
    Label1.Caption := Dir;

  kk.TableName:=dir+'\kart.dbf';
//  hh.TableName:=dir+'\h_voda.dbf';
//  oo.TableName:=dir+'\obor.dbf';
  hh.TableName:=dir+'\hhh.dbf';


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
    ibtransaction1.StartTransaction;

//    kk.Open;
//    hh.Open;
//    oo.Open;

    exec('delete from prop');
    exec('delete from hvgrp');
    exec('delete from h_voda');
    exec('delete from dom');

    exec('SET GENERATOR GEN_PROP_ID TO 1');
    exec('SET GENERATOR GEN_H_VODA_ID TO 1');
    exec('SET GENERATOR GEN_HVGRP_ID TO 1');
    exec('SET GENERATOR GEN_DOM_ID TO 1');



    hvd.Open;

    kk.Open;
    hh.Open;
//    oo.Open;

{    hh.First;
    while not hh.Eof do
    begin
      hvd.Insert;
      hvdSCH_CUR.Value:=hh.fieldbyname('new').AsFloat;
      hvdSCH_OLD.Value:=hh.fieldbyname('old').AsFloat;

      hvdSCH_CUR.Value:=hh.fieldbyname('old').AsFloat+hh.fieldbyname('razn').AsFloat;

      hvdSchet.Value:=hh.fieldbyname('schet').AsString;
      hvdYEARMON.Value:=MainForm.curYM;
      hvdWID.Value:=1;
      hvd.Post;
      hh.Next;
      cxProgressBar2.Position:=hh.RecNo/hh.RecordCount*100;
      application.ProcessMessages;
    end;


    oo.First;
    while not oo.Eof do
    begin
      if oo.FieldByName('wid').AsString='hv' then
      begin
        kk.Locate('schet',oo.FieldByName('schet').AsString,[]);
        if not hvd.Locate('schet',oo.FieldByName('schet').AsString,[]) then
        begin
          hvd.Insert;
          hvdSchet.Value:=oo.fieldbyname('schet').AsString;
          hvdYEARMON.Value:=MainForm.curYM;
          hvdWID.Value:=2;
          hvdKOLI_P1.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P0.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P.Value:=kk.FieldByName('koli_p').AsInteger;
          hvd.Post;
        end;

        hvd.Edit;
        hvdFIO.Value:=kk.fieldbyname('fio').AsString;
        hvd.Post;
      end;
      cxProgressBar1.Position:=oo.RecNo/oo.RecordCount*100;
      application.ProcessMessages;
      oo.Next;
    end;


}

    hh.First;
    while not hh.Eof do
    begin
      hvd.Insert;
      hvdSCH_CUR.Value:=hh.fieldbyname('old').AsFloat;
      hvdSCH_OLD.Value:=hh.fieldbyname('old').AsFloat;

//      hvdSCH_CUR.Value:=hh.fieldbyname('old').AsFloat+hh.fieldbyname('razn').AsFloat;

      hvdSchet.Value:=dos2win(hh.fieldbyname('schet').AsString);
      hvdYEARMON.Value:=MainForm.curYM;
      hvdWID.Value:=hh.fieldbyname('norm').AsInteger;
      hvdFIO.Value:=dos2win(hh.fieldbyname('fio').AsString);

      if not hh.fieldbyname('prop').isnull then
      begin
        hvdKOLI_P.Value:=hh.fieldbyname('prop').AsInteger;
        hvdKOLI_P1.Value:=hh.fieldbyname('prop').AsInteger;
        hvdKOLI_P0.Value:=hh.fieldbyname('prop').AsInteger;
      end;

      if ((hvdKOLI_P.Value=0) and (kk.Locate('schet',win2dos(hh.FieldByName('schet').AsString),[]))) then
      begin
          hvdKOLI_P1.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P0.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P.Value:=kk.FieldByName('koli_p').AsInteger;

      end;


      hvd.Post;



      hh.Next;
      cxProgressBar2.Position:=hh.RecNo/hh.RecordCount*100;
      application.ProcessMessages;
    end;


    exec(format('insert into dom (dom,yearmon) select substring(schet from 1 for 4) dom,%d from h_voda group by substring(schet from 1 for 4)',[MainForm.curYM]));
//    exec('update h_voda set koli_p=(select koli_p from kart where h_voda.schet=kart.schet)');

    ibtransaction1.Commit;
  except
    ibtransaction1.Rollback;
  end;

  hh.Active:=false;
  kk.Active:=false;
  oo.Active:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
var pok:integer;                        
    sch,sss,tarnam:string;
    hh,kk,oo,oo1,hvd1,ntar:TDbf;
begin
 MainForm.hvdall.Close;
 MainForm.hvdall.ParamByName('yearmon').Value:=MainForm.period;
 MainForm.hvdall.Open;


 Form4.Show;
 Form4.Label1.Caption:='Start -'+DateTimeToStr(now());
 MainForm.Enabled:=false;

 Form4.Label2.Caption:='Перевірка підключення до бази даних.Зачекайте...';
   try

     oo1:=TDbf.Create(self);
     oo1.TableName:=main.MainForm.PathKvart+'obor.dbf';
     oo1.Open;



    Form4.Label2.Caption:='Оновлення даних. Зачекайте...';
    oo1.First;
    sss:= MainForm.hvdall.SelectSQL.Text;

    while not MainForm.hvdall.Eof do
    begin
       if oo1.fieldbyname('wid').AsString='hv' then
       begin
       sch:=dos2win(trim(oo1.fieldbyname('schet').AsString));

       MainForm.hvdall.First;
       if not MainForm.hvdall.Locate('schet',sch,[loCaseInsensitive, loPartialKey]) then
       begin
          MainForm.hvdall.Insert;
          MainForm.hvdall.edit;
          MainForm.hvdallSCHET.Value:=sch;
          MainForm.hvdallKLNTAR.Value:=oo1.fieldbyname('kl_ntar').AsInteger;
          MainForm.hvdallYEARMON.Value:=main.MainForm.dataYEARMON.Value;
          MainForm.hvdallORG.Value:=0;
          MainForm.hvdall.post;
          hvd1.first;
          pok:=0;
          while (not hvd1.Eof) and (pok=0) do
          begin
             if (hvd1.fieldbyname('schet').AsString=sch) and (hvd1.fieldbyname('fl').AsString<>'n') then
             begin

               FormAddkart.calcpok(MainForm.hvdallSCHET.Value);
               pok:=1;
             end;
             hvd1.Next;
          end;
 //         if hvd1.Locate('fl;schet',VarArrayOf([null,MainForm.hvdallSCHET.Value]),[]) then
       end
       else
            if (oo1.fieldbyname('kl_ntar').AsInteger<>MainForm.hvdallKLNTAR.Value) then
            begin
              MainForm.hvdall.edit;
              MainForm.hvdallKLNTAR.Value:=oo1.fieldbyname('kl_ntar').AsInteger;
              MainForm.hvdall.post;
            end;
       end;
      oo1.Next;
      Form4.cxProgressBar1.Position:=oo1.RecNo/oo1.RecordCount*100;
      application.ProcessMessages;
    end;

     oo1.Free;

     MainForm.IBTransaction1.CommitRetaining;

        MainForm.hvd.close;
    MainForm.hvd.open;




  except
   on E : Exception do
   begin
    messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
    Application.Terminate;
   end;


  end;
  Form4.Label1.Caption:=Form4.Label1.Caption+' End-'+DateTimeToStr(now());
  Form4.Close;
   MainForm.Enabled:=true;


end;

procedure TForm1.cxButton1Click(Sender: TObject);
begin
users.Append;
usersADDLICH.Value:=0;
usersADDPOKAZ.Value:=0;
usersADDPLOMB.Value:=0;
usersENDMES.Value:=0;
usersADM.Value:=0;
users.Post;

end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
users.Edit;
usersDEL.Value:=1;
users.Post;
users.close;
users.open
end;

end.
