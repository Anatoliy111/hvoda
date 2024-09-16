unit ViberSendOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, IBCustomDataSet, IBQuery;

type
  TFormViberSendOrders = class(TForm)
    Panel2: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxButton8: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGridDBTableView3ID: TcxGridDBColumn;
    cxGridDBTableView3DATE_SEND: TcxGridDBColumn;
    cxGridDBTableView3KOLSEND: TcxGridDBColumn;
    cxGridDBTableView3SMALLTEXT: TcxGridDBColumn;
    IBQuery1: TIBQuery;
    cxGridDBTableView3DATA: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormViberSendOrders: TFormViberSendOrders;

implementation

uses main, ViberSend;

{$R *.dfm}

procedure TFormViberSendOrders.cxButton1Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.SQL.Text:='insert into viber_send (data, text, smalltext) select :new_data, text, smalltext from viber_send where id=:id';
IBQuery1.ParamByName('new_data').Value:=now();
IBQuery1.ParamByName('id').Value:=MainForm.viber_sendID.Value;
IBQuery1.ExecSQL;
MainForm.viber_send.Close;
MainForm.viber_send.Open;
//MainForm.viber_send
//

end;

procedure TFormViberSendOrders.cxButton2Click(Sender: TObject);
begin
  if application.MessageBox('Ви дійсно бажаєте видалити повідомлення?','Підтвердження',MB_YESNO)=IDYES then
     MainForm.viber_send.Delete;


end;

procedure TFormViberSendOrders.cxButton8Click(Sender: TObject);
begin
MainForm.viber_send.Append;
MainForm.viber_sendDATA.Value:=now();
MainForm.viber_send.Post;
MainForm.viber_send.Close;
MainForm.viber_send.Open;
FormViberSend.cxMemo1.Text:=MainForm.viber_sendTEXT.Value;
FormViberSend.Show;
end;

procedure TFormViberSendOrders.cxGridDBTableView3DblClick(Sender: TObject);
begin
  FormViberSend.Show;
  FormViberSend.cxMemo1.Text:=MainForm.viber_sendTEXT.Value;
end;

procedure TFormViberSendOrders.FormShow(Sender: TObject);
begin
if not MainForm.viber_send.Active then
  MainForm.viber_send.Open;

if not MainForm.viber_send.Active then
  MainForm.viber_send.Open;
  
end;

end.
