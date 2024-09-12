unit Users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxMaskEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,inifiles;

type
  TFormUsers = class(TForm)
    Label16: TLabel;
    Label1: TLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLookupComboBox1: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsers: TFormUsers;
  iniFile:TIniFile;

implementation

uses main;//, SHFolder;

{$R *.dfm}

procedure TFormUsers.cxButton1Click(Sender: TObject);
begin
if (cxLookupComboBox1.EditValue <> null) or (Length(cxLookupComboBox1.EditValue)<>0) then
begin
     MainForm.USERS.Locate('ID',cxLookupComboBox1.EditValue,[]);
     if cxMaskEdit1.Text=MainForm.usersPW.Value then
     begin
     MainForm.ActiveUser:=MainForm.usersID.Value;
     MainForm.dxBarEdit3.Text:=MainForm.usersUSER_NAIM.Value;

        if iniFile<>nil then
        IniFile.WriteString('User','Login',trim(cxLookupComboBox1.Text));

     MainForm.Update;
     MainForm.startprog;
     MainForm.fl_startprog:=false;
     MainForm.Enabled:=true;
     FormUsers.Hide;
     end
     else
     ShowMessage('Неправильний пароль!');
end
else
     ShowMessage('Виберіть користувача!');

end;

procedure TFormUsers.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//MainForm.Enabled:=true;
MainForm.close;
end;

procedure TFormUsers.FormShow(Sender: TObject);
begin
MainForm.Enabled:=false;
end;

end.
