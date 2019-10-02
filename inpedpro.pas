unit inpedpro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxListBox, cxDBEdit, cxCheckBox, StdCtrls,
  cxContainer, cxTextEdit, ExtCtrls, cxCurrencyEdit, cxDropDownEdit,
  cxLookAndFeelPainters, cxButtons, IBDatabase, IBCustomDataSet, cxGroupBox,
  cxSpinEdit, cxImageComboBox, cxCalc, Menus, cxLookAndFeels;

type
  TFormInplaces = class(TForm)
    pnlEdProp: TPanel;
    DBGrid1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    prop: TIBDataSet;
    propSource: TDataSource;
    IBTransaction1: TIBTransaction;
    propKL: TIntegerField;
    propKOLI: TSmallintField;
    propYEARMON: TIntegerField;
    propDD: TSmallintField;
    DBGrid1SCHET: TcxGridDBColumn;
    DBGrid1KL: TcxGridDBColumn;
    DBGrid1KOLI: TcxGridDBColumn;
    DBGrid1YEARMON: TcxGridDBColumn;
    DBGrid1DD: TcxGridDBColumn;
    propSCHET: TIBStringField;
    cxButton3: TcxButton;
    procedure propNewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure propBeforeOpen(DataSet: TDataSet);
    procedure propDDSetText(Sender: TField; const Text: String);
    procedure propKOLISetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure onPopupProp;
    procedure onCloseupProp;
  end;

var
  FormInplaces: TFormInplaces;

implementation

uses main, edexpr, mytools;

{$R *.dfm}

procedure TFormInplaces.propNewRecord(DataSet: TDataSet);
begin
  propSCHET.Value:=MainForm.hvdSCHET.Value;
  propYearmon.AsInteger:=MainForm.curYM;

end;

procedure TFormInplaces.onPopupProp;
begin
//  if not ibtransaction1.InTransaction then
  ibtransaction1.StartTransaction;
  prop.Open;
end;

procedure TFormInplaces.onCloseupProp;
var val:double;
begin
//  if ibtransaction1.InTransaction then
  begin
    if (ModalResult=mrOk) then
    begin
      if prop.State in [dsEdit,dsInsert] then prop.Post;
      prop.Close;
      if ibtransaction1.InTransaction then ibtransaction1.Commit;

// сначала сбрасываем все изменения в MainForm.hvd
// чтобы в скрипте можно было менять данные в hvd и не было deadlock
      if (MainForm.hvd.State in [dsEdit,dsInsert]) then
      begin
        MainForm.hvd.post;
      end;
      MAinForm.IBTransaction1.CommitRetaining;

      val:=0;
      val:=FormEdExpr.getCalcRes('AvgProp',VarArrayOf([MainForm.hvdSCHET.Value]));

      MainForm.hvd.Edit;
      MainForm.hvdKOLI_P.Value:=val;




    end
    else
      ibtransaction1.Rollback;
  end;
end;

procedure TFormInplaces.cxButton1Click(Sender: TObject);
begin
  ModalResult:=(Sender as TcxButton).ModalResult;
end;

procedure TFormInplaces.propBeforeOpen(DataSet: TDataSet);
begin
  prop.ParamByName('schet').AsString:=MainForm.hvdSCHET.Value;
  prop.ParamByName('yearmon').AsInteger:=MainForm.curYM;
end;

var vv:boolean;
procedure TFormInplaces.propDDSetText(Sender: TField; const Text: String);
begin
  if (str2int(Text)<1) or (str2int(Text)>31) then
    Sender.AsInteger:=1
  else
    Sender.AsString:=Text;

end;

procedure TFormInplaces.propKOLISetText(Sender: TField;
  const Text: String);
begin
  if (str2int(Text)<-8) or (str2int(Text)>8) then
    Sender.AsInteger:=0
  else
    Sender.AsString:=Text;

end;

end.
