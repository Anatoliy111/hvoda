unit ViberTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,IdHTTP, cxContainer,
  cxLabel,uLkJSON, IBQuery, IBCustomDataSet;

type
  TFormViberTask = class(TForm)
    Panel2: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxButton8: TcxButton;
    cxLabel1: TcxLabel;
    IBQuery1: TIBQuery;
    cxGridDBTableView3ERR: TcxGridDBColumn;
    cxGridDBTableView3DATA: TcxGridDBColumn;
    cxGridDBTableView3ALLPOKAZN: TcxGridDBColumn;
    cxGridDBTableView3ACCESSPOKAZN: TcxGridDBColumn;
    cxGridDBTableView3ID: TcxGridDBColumn;
    procedure cxButton8Click(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormViberTask: TFormViberTask;

implementation

uses main, mytools, ViberPok, iimport;

{$R *.dfm}

procedure TFormViberTask.cxButton8Click(Sender: TObject);
var HTTP1 :TIdHttp;
    JsonToSend: TStringStream;
    sResponse,stdata,s: string;
    cur,stroka,strmes,strye,pp:string;
    res,js: TlkJSONobject;
    id,i:integer;
    jsparce : TlkJSONbase;
    FST,FS: TFormatSettings;
begin
       Form4.Show;
  try

           Form4.Label2.Caption:='Формування JSON запиту';
  Application.ProcessMessages;

       IBQuery1.Close;
       IBQuery1.Open;

       if IBQuery1.FieldByName('id_viber').Value = null then id:=0
       else id:=IBQuery1.FieldByName('id_viber').Value;

       js := TlkJSONobject.Create;
       js.Add('model','kpviberpokazn');
       js.Add('lastid',id);
       s:=TlkJSON.GenerateText(js);
       js.Free;


       Application.ProcessMessages;
//       memo1.Text:=json.ToString;

       HTTP1 := TIdHTTP.Create;
//       if proxyenable='1' then
//       begin
//       HTTP1.ProxyParams.ProxyServer:=proxyserver;
//       HTTP1.ProxyParams.ProxyPort:=str2int(proxyport);
//       end;

//      JsonToSend := TStringStream.Create(TlkJSON.GenerateText(js),TEncoding.UTF8);
        JsonToSend := TStringStream.Create(s);


//      JsonToSend := TStringStream.Create('{"period":"01.02.2021","model":"kppokazn","kol":"3580","data":[{"schet":"0084060","date_pok":"27.01.2021","pokazn":"326"},{"schet":"0088028","date_pok":"01.10.2020","pokazn":"8"},{"schet":"0088043","date_pok":"28.01.2021","pokazn":"441"}]}',TEncoding.UTF8);
            Form4.Label2.Caption:='Відправка запиту на сайт';
  Application.ProcessMessages;

    HTTP1.Request.ContentType := 'application/json';
    HTTP1.Request.ContentEncoding := 'utf-8';
    FST.ShortDateFormat := 'yyyy-mm-dd';
    Fst.ShortTimeFormat := 'hh24:mi:ss';
    Fst.TimeSeparator := ':';
    FST.DateSeparator := '-';
     FS.ShortDateFormat := 'yyyy-mm-dd';
     FS.DateSeparator := '-';
//    WriteLog2('start post kppokazn');
    try
      sResponse := HTTP1.Post(MainForm.url, JsonToSend);
      if Length(sResponse)<>0 then
      begin
        jsparce := TlkJSON.ParseText(sResponse);

        MainForm.viber_task.Append;
        MainForm.viber_taskDATA.Value:=now();
        MainForm.viber_taskYEARMON.Value:=MainForm.period;
        MainForm.viber_taskALLPOKAZN.Value:=Pred(jsparce.Count)+1;
        MainForm.viber_task.Post;

        for I := 0 to Pred(jsparce.Count) do
        begin
          MainForm.viber_pokazn.Append;
          MainForm.viber_pokaznID_VIBER.Value := jsparce.Child[I].Field['id'].Value;
        //  MainForm.viber_pokaznDATE_INS.AsDateTime := StrToDateTime(jsparce.Child[I].Field['date_ins'].Value,FST);
//          MainForm.viber_pokaznDATE_INS.AsDateTime := StrToDateTime(StringReplace(jsparce.Child[I].Field['date_ins'].Value,'-','/',[rfReplaceAll, rfIgnoreCase]));
          MainForm.viber_pokaznDATA.Value := StrToDate(jsparce.Child[I].Field['data'].Value,FS);
          MainForm.viber_pokaznSCHET.Value := jsparce.Child[I].Field['schet'].Value;
          MainForm.viber_pokaznPOKAZN.Value := jsparce.Child[I].Field['pokazn'].Value;
          MainForm.viber_pokaznVIBER_NAME.Value := iif(jsparce.Child[I].Field['viber_name'].Value<>null,jsparce.Child[I].Field['viber_name'].Value,'');
          MainForm.viber_pokaznID_TASK.Value:=MainForm.viber_taskID.Value;

          MainForm.viber_pokazn.Post;
        end;

        cxLabel1.Caption:='Завантажено '+IntToStr(i)+' показників';
        FormViberPok.cxButton8.Click;
        MainForm.viber_task.Close;
        MainForm.viber_task.Open;

      end
      else cxLabel1.Caption:='Нових показників немає!!!';



      Form4.Close;
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


       except
       on E : Exception do
       begin
        //Application.Terminate;
        messagedlg('Помилка - '+E.Message,mtError,[mbCancel],0);
       // ShowMessage('Помилка при підключенні до бази даних '+s+'!!! - '+E.Message);
//        WriteLog2('Помилка при підключенні до бази даних '+s+'!!! - '+E.Message);
        Application.Terminate;
        exit;
       end;
     end;
end;

procedure TFormViberTask.cxGridDBTableView3DblClick(Sender: TObject);
begin
MainForm.viber_pokazn.Close;
MainForm.viber_pokazn.ParamByName('id_task').Value:=MainForm.viber_taskID.Value;
MainForm.viber_pokazn.Open;
FormViberPok.Show;
end;

end.
