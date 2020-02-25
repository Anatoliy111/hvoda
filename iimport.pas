unit iimport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxProgressBar;

type
  TForm4 = class(TForm)
    cxProgressBar1: TcxProgressBar;
    Timer1: TTimer;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
        procedure ImKart;
    procedure ImPokaz;
  end;

var
  Form4: TForm4;

implementation

uses main,dbf,dbf_lang,mytools, kart;
var hh,kk,oo,oo1:TDbf;

{$R *.dfm}

procedure TForm4.Timer1Timer(Sender: TObject);
begin
ImKart;
end;

procedure TForm4.ImKart;
begin
 MainForm.hvdall.Close;
 MainForm.hvdall.Open;
 Form4.Show;
 MainForm.Enabled:=false;
 Timer1.Enabled:=false;
 Form4.Label2.Caption:='Перевірка підключення до бази даних.Зачекайте...';
   try

     oo1:=TDbf.Create(self);
     oo1.TableName:=main.MainForm.PathKvart+'obor.dbf';
     oo1.Open;

    Form4.Label2.Caption:='Оновлення даних. Зачекайте...';
    oo1.First;
    while not oo1.Eof do
    begin
       if oo1.fieldbyname('wid').AsString='hv' then
       begin
       MainForm.hvdall.First;
       if not MainForm.hvdall.Locate('schet',dos2win(oo1.fieldbyname('schet').AsString),[]) then
       begin
          MainForm.hvdall.Insert;
          MainForm.hvdall.edit;
          MainForm.hvdallSCHET.Value:=dos2win(oo1.fieldbyname('schet').AsString);
          MainForm.hvdallYEARMON.Value:=main.MainForm.dataYEARMON.Value;
          MainForm.hvdall.post;
       end;
       end;
      oo1.Next;
      cxProgressBar1.Position:=oo1.RecNo/oo1.RecordCount*100;
      application.ProcessMessages;
    end;





     kk:=TDbf.Create(self);
     kk.TableName:=main.MainForm.PathKvart+'kart.dbf';
     kk.Open;

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
//    MessageDlg('Імпорт виконано', mtConfirmation, [mbOK], 0);
    MainForm.hvd.Close;
    MainForm.hvd.Open;


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
    MainForm.hvd.Close;
    MainForm.hvd.Open;


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
