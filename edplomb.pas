unit edplomb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, myform, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, IBCustomDataSet, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCalc, cxDropDownEdit,
  cxImageComboBox;

type
  TFormEdPlomb = class(TMyForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    IBDataSet1: TIBDataSet;
    DataSource1: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    IBDataSet1KL: TIntegerField;
    IBDataSet1NAIM: TIBStringField;
    cxGrid1DBTableView1KL: TcxGridDBColumn;
    cxGrid1DBTableView1NAIM: TcxGridDBColumn;
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure IBDataSet1BeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEdPlomb: TFormEdPlomb;

implementation

uses main;

{$R *.dfm}

procedure TFormEdPlomb.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFormEdPlomb.FormShow(Sender: TObject);
begin
  inherited;
  ibdataset1.Open;
end;

procedure TFormEdPlomb.FormHide(Sender: TObject);
begin
  inherited;
  if ibdataset1.State in [dsedit,dsInsert] then ibdataset1.Post;
  ibdataset1.Close;
end;

procedure TFormEdPlomb.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  MainForm.ExportGrid(cxGrid1)

end;

procedure TFormEdPlomb.IBDataSet1BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if IBDataSet1KL.Value<=1 then abort;
end;

end.
