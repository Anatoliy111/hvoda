unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg, GIFImg, cxControls, cxContainer,
  cxEdit, cxImage;

type
  TSplashForm = class(TForm)
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
        private
      Gif: TGifImage;
  end;

var
  SplashForm: TSplashForm;


implementation

uses mytools;

{$R *.DFM}

procedure TSplashForm.FormCreate(Sender: TObject);
begin
   // Gif := TGifImage.Create;
   // Gif.LoadFromFile('loading.gif');
   // Gif.Animate := True;
   // Gif.AnimateLoop := glEnabled;
  //  GIFImageDefaultAnimate := True;
//Image2.Picture.LoadFromFile('loading.gif');
 // ( Image2.Picture.Graphic as TGIFImage ).Animate := True;// gets it goin'

 /// ( Image2.Picture.Graphic as TGIFImage ).AnimationSpeed:= 50;// adjust your speed

 // SplashForm.DoubleBuffered := True;// stops flickering


end;

procedure TSplashForm.FormShow(Sender: TObject);
begin
  ( Image2.Picture.Graphic as TGIFImage ).Animate := True;// gets it goin'

  ( Image2.Picture.Graphic as TGIFImage ).AnimationSpeed:= 50;// adjust your speed

  SplashForm.DoubleBuffered := True;// stops flickering

end;

end.
