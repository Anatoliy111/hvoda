unit progress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxLabel, cxControls,
  cxContainer, cxEdit, cxProgressBar;

type
  TFormProgress = class(TForm)
    cxProgressBar1: TcxProgressBar;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cancel:boolean;
    procedure progressStart;
    procedure progress(p:double;s:string='');
    procedure progressClose;
  end;

var
  FormProgress: TFormProgress;

implementation

{$R *.dfm}
procedure TFormProgress.progressStart;
begin
  cxProgressBar1.Position:=0;
  cxLabel1.Caption:='';
  cancel:=false;
  show;
end;

procedure TFormProgress.progress(p:double;s:string);
begin
  if cxLabel1.Caption<>s then cxLabel1.Caption:=s;
  cxProgressBar1.Position:=p;
  Application.ProcessMessages;
end;

procedure TFormProgress.progressClose;
begin
  hide;
end;

procedure TFormProgress.cxButton1Click(Sender: TObject);
begin
  cancel:=true;
end;

end.
