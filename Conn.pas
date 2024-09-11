unit Conn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxLabel, ExtCtrls;

type
  TFormConn = class(TForm)
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Timer1: TTimer;
    procedure cxButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    procedure TestConn;
    { Public declarations }
  end;

var
  FormConn: TFormConn;
  sec:integer;

implementation

uses main;

{$R *.dfm}

procedure TFormConn.cxButton1Click(Sender: TObject);
begin
  MainForm.Close;
end;

procedure TFormConn.TestConn;
begin
   cxButton1.Visible:=false;

   if not MainForm.IBDatabase.TestConnected then
   begin

     MainForm.Timer1.Enabled:=false;
     if (FormConn.Visible) or (not MainForm.IBDatabase.Connected) then
     begin
        try
           MainForm.IBDatabase.Open;
           MainForm.IBTransaction1.Active:=true;
           MainForm.dom.Open;
           MainForm.data.Open;
           if MainForm.fl_startprog then
             MainForm.Update;
           FormConn.close;
           MainForm.Enabled:=true;
           MainForm.Timer1.Enabled:=true;
          // result:=true;

        except
          MainForm.Enabled:=false;
          FormConn.Show;
           sec:=11;
           Timer1.Enabled:=true;
          // result:=false;
        end;

     end
     else
        begin
          MainForm.Enabled:=false;
          FormConn.Show;
          sec:=11;
          Timer1.Enabled:=true;
         // result:=false;
        end;
   end;
 

end;

procedure TFormConn.Timer1Timer(Sender: TObject);
begin
   cxButton1.Visible:=true;
   sec:=sec-1;
   cxLabel2.Caption:='Наступна спроба підключення через - '+IntToStr(sec)+' сек.';
   if sec=0 then
   begin
     timer1.Enabled:=false;
     cxLabel2.Caption:='Підключення до бази даних...';
     Application.ProcessMessages;
     TestConn;
   end;

end;

end.
