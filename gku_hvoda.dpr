program gku_hvoda;

uses
  Forms,
  main in 'main.pas' {MainForm},
  inpedpro in 'inpedpro.pas' {FormInplaces},
  edexpr in 'edexpr.pas' {FormEdExpr},
  mytools in 'mytools.pas',
  import in 'import.pas' {Form1},
  progress in 'progress.pas' {FormProgress},
  myform in 'myform.pas' {MyForm},
  itoghvd in 'itoghvd.pas' {FormItogHvd},
  edplomb in 'edplomb.pas' {FormEdPlomb},
  kart in 'kart.pas' {Form2},
  lichall in 'lichall.pas' {Form3},
  iimport in 'iimport.pas' {Form4},
  addkart in 'addkart.pas' {FormAddkart},
  delkart in 'delkart.pas' {FormDelkart},
  sprzn in 'sprzn.pas' {SPR_ZN};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFormInplaces, FormInplaces);
  Application.CreateForm(TFormEdExpr, FormEdExpr);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormProgress, FormProgress);
  Application.CreateForm(TFormItogHvd, FormItogHvd);
  Application.CreateForm(TFormEdPlomb, FormEdPlomb);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFormAddkart, FormAddkart);
  Application.CreateForm(TFormDelkart, FormDelkart);
  Application.CreateForm(TSPR_ZN, SPR_ZN);
  Application.Run;
end.
