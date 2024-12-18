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
    procedure FormCreate(Sender: TObject);
    procedure cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsers: TFormUsers;
  iniFile:TIniFile;

implementation

uses main, SHFolder;

{$R *.dfm}

procedure TFormUsers.cxButton1Click(Sender: TObject);
var strdt:string;

begin
if (cxLookupComboBox1.EditValue <> null) or (Length(cxLookupComboBox1.EditValue)<>0) then
begin
     strdt:=datetostr(now());
     if not MainForm.imp.Active then
       MainForm.imp.Open;

     if (now()>strtodate('01.01.2025')) and (MainForm.impEDRPOU.AsInteger=0) then
     begin
       if MainForm.USERS.Locate('USER_NAIM','Перегляд',[]) then
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
       begin
         MainForm.users.Append;
         MainForm.usersUSER_NAIM.Value:='Перегляд';
          MainForm.usersADDLICH.Value:=0;
          MainForm.usersADDPOKAZ.Value:=0;
          MainForm.usersADDPLOMB.Value:=0;
          MainForm.usersENDMES.Value:=0;
          MainForm.usersADM.Value:=0;
          MainForm.usersADDSPIS.Value:=0;
          MainForm.users.Post;
          MainForm.IBTransaction1.CommitRetaining;
          MainForm.ActiveUser:=MainForm.usersID.Value;
          MainForm.dxBarEdit3.Text:=MainForm.usersUSER_NAIM.Value;
          MainForm.Update;
          MainForm.startprog;
          MainForm.fl_startprog:=false;
          MainForm.Enabled:=true;
          FormUsers.Hide;
       end;
     end
     else
       if MainForm.USERS.Locate('USER_NAIM',cxLookupComboBox1.EditValue,[]) then
       begin
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
       begin
         if MainForm.users.RecordCount=0 then
         begin
           MainForm.users.Append;
           MainForm.usersUSER_NAIM.Value:='admin';
            MainForm.usersADDLICH.Value:=1;
            MainForm.usersADDPOKAZ.Value:=1;
            MainForm.usersADDPLOMB.Value:=1;
            MainForm.usersENDMES.Value:=1;
            MainForm.usersADM.Value:=1;
            MainForm.users.Post;
            MainForm.IBTransaction1.CommitRetaining;
            MainForm.ActiveUser:=MainForm.usersID.Value;
            MainForm.dxBarEdit3.Text:=MainForm.usersUSER_NAIM.Value;

            if iniFile<>nil then
              IniFile.WriteString('User','Login',trim('admin'));

            ShowMessage('Додано користувачa admin!');
         end
         else
           ShowMessage('Користувачa '+cxLookupComboBox1.EditValue+' не знайдено!');


         MainForm.Update;
         MainForm.startprog;
         MainForm.fl_startprog:=false;
         MainForm.Enabled:=true;
         FormUsers.Hide;
       end;
end
else
     ShowMessage('Виберіть користувача!');

end;

procedure TFormUsers.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormUsers.cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then cxButton1.Click;
end;

procedure TFormUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//MainForm.Enabled:=true;
MainForm.close;
end;

procedure TFormUsers.FormCreate(Sender: TObject);
const
  SHGFP_TYPE_CURRENT = 0;
var folder : integer;
    Result:string;
path: array [0..MAX_PATH] of char;
begin
folder:=2;
  if SUCCEEDED(SHGetFolderPath(0,folder,0,SHGFP_TYPE_CURRENT,@path[0])) then
  begin
    iniFile:=TIniFile.Create(path+'hv.ini');
    Result:=iniFile.ReadString('User','Login','');
    cxLookupComboBox1.EditValue:=Result;
  end;
end;

procedure TFormUsers.FormShow(Sender: TObject);
begin
MainForm.Enabled:=false;
end;

end.
