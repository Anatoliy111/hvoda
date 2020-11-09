unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TSplashForm = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Label3: TLabel;
  end;

var
  SplashForm: TSplashForm;

implementation

uses mytools;

{$R *.DFM}

end.
