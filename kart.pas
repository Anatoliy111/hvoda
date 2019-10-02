unit kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, ExtCtrls, cxStyles, cxEdit,
  cxControls, cxContainer, cxTextEdit;

type
  TForm2 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
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
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxGrid1DBTableView1DATA_INP: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_MGP: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      procedure Find();
  end;

var
  Form2: TForm2;

implementation

uses main;

{$R *.dfm}

procedure TForm2.cxButton1Click(Sender: TObject);
begin
     if MessageDlg('Видалити запис ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
     then MainForm.lich.Delete;
end;

procedure TForm2.cxButton2Click(Sender: TObject);
begin
 MainForm.lich.Insert;
// MainForm.lichSCHET.Value:=MainForm.hvdSCHET.Value;
// MainForm.lich.Post;
// MainForm.IBTransaction1.CommitRetaining;
end;

procedure TForm2.Find();
begin
    MainForm.lich.SelectSQL.Text:=MainForm.lchSQL+' where schet=:sch';
    MainForm.lich.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
    MainForm.lich.Close;
    MainForm.lich.open;

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
end;

end.
