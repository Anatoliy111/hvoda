unit ViberSend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, ExtCtrls, cxDBEdit
  ,uLkJSON,IdHTTP, cxRichEdit, cxListBox;

type
  TFormViberSend = class(TForm)
    Panel2: TPanel;
    cxButton8: TcxButton;
    cxMemo1: TcxMemo;
    cxLabel1: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormViberSend: TFormViberSend;

implementation

uses main, ViberSendOrders;

{$R *.dfm}

procedure TFormViberSend.cxButton8Click(Sender: TObject);
var HTTP1 :TIdHttp;
    JsonToSend: TStringStream;
    sResponse,stdata,s: string;
    cur,stroka,strmes,strye,pp:string;
    res,js: TlkJSONobject;
    id,i:integer;
    jsparce : TlkJSONbase;
    FST,FS: TFormatSettings;
begin

       js := TlkJSONobject.Create;
       js.Add('org','dmkg');
       js.Add('vidmess','mess');
       js.Add('mess',cxMemo1.Text);
//       js.Add('mess','testtest');
       s:=TlkJSON.GenerateText(js);
       js.Free;

        HTTP1 := TIdHTTP.Create;
        HTTP1.Request.ContentType := 'application/json';
        HTTP1.Request.ContentEncoding := 'utf-8';

            FST.ShortDateFormat := 'yyyy-mm-dd';
            Fst.ShortTimeFormat := 'hh24:mi:ss';
            Fst.TimeSeparator := ':';
            FST.DateSeparator := '-';
             FS.ShortDateFormat := 'yyyy-mm-dd';
             FS.DateSeparator := '-';

        JsonToSend := TStringStream.Create(s);

    try
      sResponse := HTTP1.Post(MainForm.urlsend, JsonToSend);
      if sResponse='OK' then
      begin
        cxLabel1.Caption:='Повідомлення успішно відправлено';
       MainForm.viber_send.Edit;
       MainForm.viber_sendDATE_SEND.Value:=now();
       MainForm.viber_sendKOLSEND.Value:=MainForm.viber_sendKOLSEND.Value+1;
       MainForm.viber_send.Post;

      end
      else cxLabel1.Caption:='Помилка відправки '+sResponse;



//      WriteLog2('Response kppokazn: '+sResponse);
//            cxLabel1.Caption:='Імпорт даних завершено';
  Application.ProcessMessages;

    except
      on E: Exception do
      begin
        ShowMessage('Error on request: '#13#10 + e.Message);
//        WriteLog2('Error on request kppokazn: '#13#10 + e.Message);
      end;
    end;

    jsparce.Free();

    JsonToSend.Free();

    HTTP1.Free;



       MainForm.viber_send.Edit;
       MainForm.viber_sendTEXT.Value:=cxMemo1.Text;
       MainForm.viber_sendSMALLTEXT.Value:=Copy(cxMemo1.Text,1,50);
       MainForm.viber_send.Post;
end;

procedure TFormViberSend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//if MainForm.viber_send.State in dsInsert,dsEdit then
//begin
  FormViberSendOrders.Enabled:=true;

  if MainForm.viber_sendTEXT.Value<>cxMemo1.Text then
  begin
     if application.MessageBox('Зберегти зміни?','Підтвердження',MB_YESNO)=IDYES then
      begin
       MainForm.viber_send.Edit;
       MainForm.viber_sendTEXT.Value:=cxMemo1.Text;
       MainForm.viber_sendSMALLTEXT.Value:=Copy(StringReplace(cxMemo1.Text, #13#10, ' ',[rfReplaceAll, rfIgnoreCase]),1,50);
       MainForm.viber_send.Post;

      end;
  end;

//     MainForm.viber_send.roPost;

//end;

end;

procedure TFormViberSend.FormShow(Sender: TObject);
begin
  cxLabel1.Caption:='';
  FormViberSendOrders.Enabled:=false;

end;

end.
