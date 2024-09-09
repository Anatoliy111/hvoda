unit iimport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxProgressBar, DB, IBCustomDataSet, IBQuery, Menus, cxLookAndFeelPainters,
  cxButtons;

type
  TForm4 = class(TForm)
    cxProgressBar1: TcxProgressBar;
    Timer1: TTimer;
    Label2: TLabel;
    IBPokazn: TIBDataSet;
    DSPokazn: TDataSource;
    IBPokaznID: TIntegerField;
    IBPokaznYEARMON: TIntegerField;
    IBPokaznPOKAZN: TIBBCDField;
    IBPokaznDATE_POK: TDateField;
    IBPokaznVID_POK: TIntegerField;
    IBPokaznN_DOC: TIntegerField;
    IBPokaznDATE_ZN: TDateField;
    IBPokaznVID_ZN: TIntegerField;
    IBPokaznSCHET: TIBStringField;
    IBPokaznID_LICH: TIntegerField;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    Label1: TLabel;
    cxButton1: TcxButton;
    Label3: TLabel;
    cxButton2: TcxButton;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
        procedure ImKart;
    procedure ImPokaz;
    procedure DelKart;
  end;

var
  Form4: TForm4;

implementation

uses main,dbf,dbf_lang,mytools, kart, addkart;
var hh,kk,oo,oo1,hvd1,ntar:TDbf;

{$R *.dfm}

procedure TForm4.Timer1Timer(Sender: TObject);
begin
ImKart;
end;

procedure TForm4.ImKart;
var pok:integer;
    sch,sss,tarnam:string;
begin
 MainForm.hvdall.Close;
 MainForm.hvdall.ParamByName('yearmon').Value:=MainForm.period;
 MainForm.hvdall.Open;
 IBPokazn.Open;

 Form4.Show;
 Form4.Label1.Caption:='Start -'+DateTimeToStr(now());
 MainForm.Enabled:=false;
 Timer1.Enabled:=false;
 Form4.Label2.Caption:='Перевірка підключення до бази даних.Зачекайте...';
   try

     oo1:=TDbf.Create(self);
     oo1.TableName:=main.MainForm.PathKvart+'obor.dbf';
     oo1.Open;

  //   hvd1:=TDbf.Create(self);
  //   hvd1.TableName:=main.MainForm.PathKvart+'h_voda.dbf';
  //   hvd1.Open;

     ntar:=TDbf.Create(self);
     ntar.TableName:=main.MainForm.PathKvart+'ntarif.dbf';
     ntar.Open;



    Form4.Label2.Caption:='Оновлення даних. Зачекайте...';
    Form4.Label4.Caption:='Пошук нових абонентів з послугою водопостачання';
    application.ProcessMessages;
    oo1.First;
    sss:= MainForm.hvdall.SelectSQL.Text;
    while not oo1.Eof do
    begin

         if not Form4.Visible then
         begin
            MainForm.IBTransaction1.CommitRetaining;
           // MainForm.Update;
         Break;
         end;

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
          MainForm.hvdallSCH_RAZN.AsCurrency:=0;
          MainForm.hvdallNOR_RAZN.AsCurrency:=0;
          MainForm.hvdallDEL_NORM.AsCurrency:=0;
          MainForm.hvdallNORM_BLICH.AsCurrency:=0;
          MainForm.hvdallPERERAH.AsCurrency:=0;
          MainForm.hvdallKOLI_P.Value:=0;
          MainForm.hvdallKUB_NOBALANS.AsCurrency:=0;
          MainForm.hvdallKUB_ALL.AsCurrency:=0;
 //         if (oo1.fieldbyname('koef').AsInteger=0) then
 //             MainForm.hvdallwid.Value:=48
 //         else
          MainForm.hvdallWID.Value:=0;


          MainForm.hvdallORG.Value:=0;
          MainForm.hvdall.post;
   //       Form2.calcpok2(MainForm.hvdall,1);
   //       hvd1.first;
   //       pok:=0;
   //       while (not hvd1.Eof) and (pok=0) do
   //       begin
   //         if (hvd1.fieldbyname('schet').AsString=sch) and (hvd1.fieldbyname('fl').AsString<>'n') then
   //          begin
   //            IBPokazn.Append;
   //            IBPokazn.Edit;
   //            IBPokaznYEARMON.Value:=MainForm.period;
   //            IBPokaznSCHET.Value:=MainForm.hvdallSCHET.Value;
   //            IBPokaznPOKAZN.Value:=hvd1.fieldbyname('new').Value;
   //            IBPokaznDATE_POK.Value:=YearMon2Date(mainform.dataYEARMON.Value);
   //            IBPokaznVID_POK.Value:=26;
   //            IBPokazn.Post;

   //            FormAddkart.calcpok2(MainForm.hvdall);
   //            pok:=1;
   //          end;
   //          hvd1.Next;
   //       end;
   //         if hvd1.Locate('fl;schet',VarArrayOf([null,MainForm.hvdallSCHET.Value]),[]) then
       end
       else
            if (oo1.fieldbyname('kl_ntar').AsInteger<>MainForm.hvdallKLNTAR.Value) then
            begin
              MainForm.hvdall.edit;
              MainForm.hvdallKLNTAR.Value:=oo1.fieldbyname('kl_ntar').AsInteger;
              MainForm.hvdall.post;
            end;
            if (oo1.fieldbyname('koef').AsInteger=0) and (MainForm.hvdallwid.Value<=46) then
            begin
              MainForm.hvdall.edit;
              MainForm.hvdallwid.Value:=48;
              MainForm.hvdall.post;
              Form2.calcpok2(MainForm.hvdall,1);

            end;
           // if (oo1.fieldbyname('koef').AsInteger=1) and (MainForm.hvdallwid.Value<=46) then
          //  begin
            //  MainForm.hvdall.edit;
           //   MainForm.hvdallwid.Value:=41;
           //   MainForm.hvdall.post;
              //FormAddkart.calcpok2(MainForm.hvdall);
           // end;





       end;
      oo1.Next;
      cxProgressBar1.Position:=oo1.RecNo/oo1.RecordCount*100;
      application.ProcessMessages;
    end;

     oo1.Free;
  //   hvd1.Free;
  //   IBPokazn.Close;
     MainForm.IBTransaction1.CommitRetaining;

     Form4.Label4.Caption:='Оновлення норм та тарифів';
     application.ProcessMessages;

     ntar.First;
     while not ntar.Eof do
     begin
       if ntar.fieldbyname('wid').AsString='hv' then
       begin
          tarnam:=dos2win(trim(ntar.fieldbyname('name').AsString));
          IBQuery2.Close;
          IBQuery2.SQL.Text:='update h_voda set tarif_name=:tn, norma=:nor where yearmon=:ym and klntar=:kltar';
          IBQuery2.ParamByName('tn').AsString:=tarnam;
          IBQuery2.ParamByName('nor').AsCurrency:=ntar.fieldbyname('norma').AsCurrency;
          IBQuery2.ParamByName('ym').AsInteger:=mainform.dataYEARMON.Value;
          IBQuery2.ParamByName('kltar').AsInteger:=ntar.fieldbyname('kl').AsInteger;
          IBQuery2.ExecSQL;
          MainForm.IBTransaction1.CommitRetaining;
       end;
     ntar.next;
     end;

     kk:=TDbf.Create(self);
     kk.TableName:=main.MainForm.PathKvart+'kart.dbf';
     kk.Open;

     MainForm.hvdall.Close;
     MainForm.hvdall.Open;

    Form4.Label2.Caption:='Оновлення даних. Зачекайте...';
    Form4.Label4.Caption:='Оновлення карток';
    application.ProcessMessages;
    kk.First;
    while not kk.Eof do
    begin

         if not Form4.Visible then
         begin
       //     MainForm.IBTransaction1.CommitRetaining;
       //     MainForm.Update;
         Break;
         end;
    //   if  kk.fieldbyname('schet').AsString='0014016' then
     //     MainForm.hvdall.First;

       MainForm.hvdall.First;
       if MainForm.hvdall.Locate('schet',dos2win(kk.fieldbyname('schet').AsString),[loCaseInsensitive, loPartialKey]) then
       begin
          MainForm.hvdall.edit;
          MainForm.hvdallFIO.Value:=dos2win(kk.fieldbyname('fio').AsString+' '+kk.fieldbyname('im').AsString+' '+kk.fieldbyname('ot').AsString);
          MainForm.hvdallKOLI_P.Value:=kk.fieldbyname('koli_p').AsInteger;
          MainForm.hvdallKOLI_F.Value:=kk.fieldbyname('koli_pf').AsInteger;
          MainForm.hvdallUL.Value:=dos2win(kk.fieldbyname('ULNAIM').AsString);
          MainForm.hvdallN_DOM.Value:=dos2win(kk.fieldbyname('NOMDOM').AsString);
          MainForm.hvdallKV.Value:=dos2win(kk.fieldbyname('NOMKV').AsString);
          MainForm.hvdall.post;

          if MainForm.hvdallWID.Value=0 then
          begin
            MainForm.hvdall.Edit;
            MainForm.hvdallWID.Value:=42;
            MainForm.hvdall.Post;
            Form2.calcpok2(MainForm.hvdall,1);
          end;

       end;
      kk.Next;
      cxProgressBar1.Position:=kk.RecNo/kk.RecordCount*100;
      application.ProcessMessages;
    end;

    kk.Free;
    MainForm.IBTransaction1.CommitRetaining;


    MainForm.IBTransaction1.CommitRetaining;

//    MessageDlg('Імпорт виконано', mtConfirmation, [mbOK], 0);
    MainForm.execSQL('execute procedure new_dom');
    MainForm.dom.Close;
    MainForm.dom.Open;


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

procedure TForm4.ImPokaz;
begin
 MainForm.hvdall.Close;
 MainForm.hvdall.Open;
 Form4.Show;
 MainForm.Enabled:=false;
 Timer1.Enabled:=false;
 Form4.Label2.Caption:='Перевірка підключення до бази даних.Зачекайте...';
   try

     hh:=TDbf.Create(self);
     hh.TableName:=main.MainForm.PathKvart+'h_voda.dbf';
     hh.Open;

    Form4.Label2.Caption:='Оновлення даних показників. Зачекайте...';
    hh.First;
    while not hh.Eof do
    begin
       MainForm.hvdall.First;
       if MainForm.hvdall.Locate('schet',hh.fieldbyname('schet').AsString,[]) then
       begin
          MainForm.hvdall.edit;
          MainForm.hvdallSCH_OLD.Value:=hh.fieldbyname('old').AsInteger;
          MainForm.hvdallSCH_CUR.Value:=hh.fieldbyname('new').AsInteger;
          MainForm.hvdall.post;
       end;
      hh.Next;
      cxProgressBar1.Position:=hh.RecNo/hh.RecordCount*100;
      application.ProcessMessages;
    end;
    MainForm.IBTransaction1.CommitRetaining;
//    MessageDlg('Імпорт виконано', mtConfirmation, [mbOK], 0);

    MainForm.hvd.close;
    MainForm.hvd.open;

  except
   on E : Exception do
   begin
    messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
    Application.Terminate;
   end;


  end;
  Form4.Close;
   MainForm.Enabled:=true;
end;


procedure TForm4.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure TForm4.DelKart;
var pok:integer;
begin



 Form4.Show;
 MainForm.Enabled:=false;
 Timer1.Enabled:=false;
 Form4.Label2.Caption:='Перевірка підключення до бази даних.Зачекайте...';
   try

     kk:=TDbf.Create(self);
     kk.TableName:=main.MainForm.PathKvart+'kart.dbf';
     kk.Open;

    Form4.Label2.Caption:='Оновлення даних. Зачекайте...';
    MainForm.hvdall.First;
    while not MainForm.hvdall.Eof do
    begin
       kk.First;
       if not kk.Locate('schet',win2dos(MainForm.hvdall.fieldbyname('schet').AsString),[]) then
       begin
          MainForm.hvdall.delete;
       end
       else
          MainForm.hvdall.Next;
      cxProgressBar1.Position:=MainForm.hvdall.RecNo/MainForm.hvdall.RecordCount*100;
      application.ProcessMessages;
    end;
    MainForm.IBTransaction1.CommitRetaining;


    MainForm.hvdall.Close;
    MainForm.hvdall.Open;

    Form4.Label2.Caption:='Оновлення даних. Зачекайте...';
    kk.First;
    while not kk.Eof do
    begin
       MainForm.hvdall.First;
       if MainForm.hvdall.Locate('schet',dos2win(kk.fieldbyname('schet').AsString),[]) then
       begin
          MainForm.hvdall.edit;
          MainForm.hvdallFIO.Value:=dos2win(kk.fieldbyname('fio').AsString+' '+kk.fieldbyname('im').AsString+' '+kk.fieldbyname('ot').AsString);
          MainForm.hvdallKOLI_P.Value:=kk.fieldbyname('koli_p').AsInteger;
          MainForm.hvdallKOLI_F.Value:=kk.fieldbyname('koli_pf').AsInteger;
          MainForm.hvdallUL.Value:=dos2win(kk.fieldbyname('ULNAIM').AsString);
          MainForm.hvdallN_DOM.Value:=dos2win(kk.fieldbyname('NOMDOM').AsString);
          MainForm.hvdallKV.Value:=dos2win(kk.fieldbyname('NOMKV').AsString);
          MainForm.hvdall.post;
       end;
      kk.Next;
      cxProgressBar1.Position:=kk.RecNo/kk.RecordCount*100;
      application.ProcessMessages;
    end;
    MainForm.IBTransaction1.CommitRetaining;


    kk.Free;




//    MessageDlg('Імпорт виконано', mtConfirmation, [mbOK], 0);
    MainForm.execSQL('execute procedure new_dom');
    MainForm.dom.Close;
    MainForm.dom.Open;



    MainForm.hvd.close;
    MainForm.hvd.open;


  except
   on E : Exception do
   begin
    messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
    Application.Terminate;
   end;


  end;
  Form4.Close;
   MainForm.Enabled:=true;
end;

end.
