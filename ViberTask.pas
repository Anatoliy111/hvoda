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
    IBQuery2: TIBQuery;
    cxGridDBTableView3VID: TcxGridDBColumn;
    procedure cxButton8Click(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormViberTask: TFormViberTask;

implementation

uses main, mytools, ViberPok, iimport, SitePok, ViberPokDmkg;

{$R *.dfm}

procedure TFormViberTask.cxButton8Click(Sender: TObject);
var HTTP1 :TIdHttp;
    JsonToSend: TStringStream;
    sResponse,stdata,s,dt: string;
    cur,stroka,strmes,strye,pp,strdd:string;
    res,js: TlkJSONobject;
    id,i,CurrentDay,CurMonth,kolpok, CurYear:integer;
    jsparce : TlkJSONbase;
    FST,FS: TFormatSettings;
     Day, Month, Year: Word;
     pDay, pMonth, pYear: Word;
     dd:TDate;


begin

    DecodeDate(now, Year, Month, Day);
    dt:= IntToStr(MainForm.curYM);
    CurMonth:=StrtoInt(copy(IntToStr(MainForm.curYM),5,2));
    CurYear:=StrtoInt(copy(IntToStr(MainForm.curYM),1,4));

    if (Day>MainForm.impIMPLASTDAY.Value) and (Month=CurMonth) and (Year=CurYear) then
    begin
      cxLabel1.Caption:='Приймання показників закрито. Термін приймання встановлено до '+IntToStr(MainForm.impIMPLASTDAY.Value)+' числа поточного місяця!!!';
      exit;
    end;

    if (Month<>CurMonth) then
    begin
      cxLabel1.Caption:='Приймання показників закрито. Можливо ви не перейшли на новий місяць!!!';
      exit;
    end;

    if (Year<>CurYear) then
    begin
      cxLabel1.Caption:='Приймання показників закрито. Можливо ви не перейшли на новий місяць або у вас не правильна дата на комп"ютері!!!';
      exit;
    end;

    kolpok:=0;

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
            Form4.Label2.Caption:='VIBER - Відправка запиту на сайт';
            Application.ProcessMessages;

            HTTP1.Request.ContentType := 'application/json';
            HTTP1.Request.ContentEncoding := 'utf-8';
            FST.ShortDateFormat := 'yyyy-mm-dd';
            Fst.ShortTimeFormat := 'hh24:mi:ss';
            Fst.TimeSeparator := ':';
            FST.DateSeparator := '-';
             FS.ShortDateFormat := 'yyyy-mm-dd';
             FS.DateSeparator := '-';

      try
        sResponse := HTTP1.Post(MainForm.url, JsonToSend);
        if Length(sResponse)<>0 then
        begin
          jsparce := TlkJSON.ParseText(sResponse);

          MainForm.viber_task.Append;
          MainForm.viber_taskDATA.Value:=now();
          MainForm.viber_taskYEARMON.Value:=MainForm.period;
          MainForm.viber_taskALLPOKAZN.Value:=Pred(jsparce.Count)+1;
          MainForm.viber_taskVID.Value:='kpcentr';
          MainForm.viber_task.Post;

          MainForm.viber_pokazn.Close;
          MainForm.viber_pokazn.ParamByName('id_task').Value:=MainForm.viber_taskID.Value;
          MainForm.viber_pokazn.Open;

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
            inc(kolpok);
          end;

          FormViberPok.cxButton8.Click;
          MainForm.viber_task.Close;
          MainForm.viber_task.Open;
          jsparce.Free();
        end;



        Form4.Close;
//      WriteLog2('Response kppokazn: '+sResponse);
//            cxLabel1.Caption:='Імпорт даних завершено';
        Application.ProcessMessages;

      except
        on E: Exception do
        begin
          ShowMessage('Error on request: '#13#10 + e.Message);
//          WriteLog2('Error on request kppokazn: '#13#10 + e.Message);
        end;
      end;



      JsonToSend.Free();

      HTTP1.Free;

    //-----------------------------------------------------

       Form4.Label2.Caption:='Формування JSON запиту';
       Application.ProcessMessages;

       IBQuery2.Close;
       IBQuery2.Open;

       if IBQuery2.FieldByName('id_site').Value = null then id:=0
       else id:=IBQuery2.FieldByName('id_site').Value;

       js := TlkJSONobject.Create;
       js.Add('model','sitepokazn');
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
            Form4.Label2.Caption:='SITE - Відправка запиту на сайт';
            Application.ProcessMessages;

            HTTP1.Request.ContentType := 'application/json';
            HTTP1.Request.ContentEncoding := 'utf-8';
            FST.ShortDateFormat := 'yyyy-mm-dd';
            Fst.ShortTimeFormat := 'hh24:mi:ss';
            Fst.TimeSeparator := ':';
            FST.DateSeparator := '-';
             FS.ShortDateFormat := 'yyyy-mm-dd';
             FS.DateSeparator := '-';
      try
        sResponse := HTTP1.Post(MainForm.url, JsonToSend);
        if Length(sResponse)<>0 then
        begin
          jsparce := TlkJSON.ParseText(sResponse);


          DecodeDate(StrToDate(jsparce.Child[I].Field['data'].Value,FS), pYear, pMonth, pDay);

          if (pYear<>CurYear) and (pMonth <> CurMonth) then
          begin
            cxLabel1.Caption:='Приймання показників закрито так як дата показника не відповідає поточному періоду!!!';
            exit;
          end;


          MainForm.viber_task.Append;
          MainForm.viber_taskDATA.Value:=now();
          MainForm.viber_taskYEARMON.Value:=MainForm.period;
          MainForm.viber_taskALLPOKAZN.Value:=Pred(jsparce.Count)+1;
          MainForm.viber_taskVID.Value:='dmkg';
          MainForm.viber_task.Post;

          MainForm.IBTransaction1.CommitRetaining;

          MainForm.site_pokazn.Close;
          MainForm.site_pokazn.ParamByName('id_task').Value:=MainForm.viber_taskID.Value;
          MainForm.site_pokazn.Open;

          for I := 0 to Pred(jsparce.Count) do
          begin

            MainForm.site_pokazn.Append;
            MainForm.site_pokaznID_SITE.Value := jsparce.Child[I].Field['id'].Value;
        //  MainForm.viber_pokaznDATE_INS.AsDateTime := StrToDateTime(jsparce.Child[I].Field['date_ins'].Value,FST);
//          MainForm.viber_pokaznDATE_INS.AsDateTime := StrToDateTime(StringReplace(jsparce.Child[I].Field['date_ins'].Value,'-','/',[rfReplaceAll, rfIgnoreCase]));
//            strdd:=jsparce.Child[I].Field['data].Value;
//            dd:=StrToDate(strdd,FS);
            MainForm.site_pokaznDATA.Value := StrToDate(jsparce.Child[I].Field['data'].Value,FS);
            MainForm.site_pokaznSCHET.Value := jsparce.Child[I].Field['schet'].Value;
            MainForm.site_pokaznPOKAZN.Value := jsparce.Child[I].Field['pokazn'].Value;
            MainForm.site_pokaznNAME.Value := jsparce.Child[I].Field['name'].Value;
            MainForm.site_pokaznVID.Value := jsparce.Child[I].Field['vid'].Value;
            MainForm.site_pokaznID_TASK.Value:=MainForm.viber_taskID.Value;

            MainForm.site_pokazn.Post;
            inc(kolpok);
          end;

          FormViberPokDmkg.cxButton8.Click;
          MainForm.viber_task.Close;
          MainForm.viber_task.Open;
          jsparce.Free();

        end;

        if kolpok<>0 then cxLabel1.Caption:='Завантажено '+IntToStr(i)+' показників'
        else cxLabel1.Caption:='Нових показників немає!!!';

        MainForm.IBTransaction1.CommitRetaining;

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

        JsonToSend.Free();

        HTTP1.Free;

    //------------------------------------------------

    Form4.Close;
    Application.ProcessMessages;



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
if MainForm.viber_taskVID.Value='kpcentr' then
begin
MainForm.viber_pokazn.Close;
MainForm.viber_pokazn.ParamByName('id_task').Value:=MainForm.viber_taskID.Value;
MainForm.viber_pokazn.Open;
FormViberPok.Show;
end;

if MainForm.viber_taskVID.Value='dmkg' then
begin
MainForm.site_pokazn.Close;
MainForm.site_pokazn.ParamByName('id_task').Value:=MainForm.viber_taskID.Value;
MainForm.site_pokazn.Open;
FormViberPokDmkg.Show;
end;

end;

procedure TFormViberTask.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.Enabled:=true;
end;

procedure TFormViberTask.FormShow(Sender: TObject);
begin
MainForm.Enabled:=false;
end;

end.
