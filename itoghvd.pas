unit itoghvd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, myform, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBCustomDataSet, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCalc, cxDropDownEdit,
  cxImageComboBox, dxBar;

type
  TFormItogHvd = class(TMyForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    IBDataSet1: TIBDataSet;
    DataSource1: TDataSource;
    IBDataSet1DOM: TIBStringField;
    IBDataSet1SCH_RAZN: TIBBCDField;
    IBDataSet1NOR_RAZN: TIBBCDField;
    IBDataSet1GRP_RAZN: TIBBCDField;
    IBDataSet1KOLI_P: TIBBCDField;
    cxGrid1DBTableView1DOM: TcxGridDBColumn;
    cxGrid1DBTableView1SCH_RAZN: TcxGridDBColumn;
    cxGrid1DBTableView1NOR_RAZN: TcxGridDBColumn;
    cxGrid1DBTableView1GRP_RAZN: TcxGridDBColumn;
    cxGrid1DBTableView1KOLI_P: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    procedure IBDataSet1BeforeOpen(DataSet: TDataSet);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormItogHvd: TFormItogHvd;

implementation

uses main;

{$R *.dfm}

procedure TFormItogHvd.IBDataSet1BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  IBDataSet1.ParamByName('yearmon').AsInteger := MainForm.curYM;
end;

procedure TFormItogHvd.FormHide(Sender: TObject);
begin
  inherited;
  IBDataset1.Close;
end;

procedure TFormItogHvd.FormShow(Sender: TObject);
begin
  inherited;
  IBDataset1.Open;
end;

procedure TFormItogHvd.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  close;
end;

procedure TFormItogHvd.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  MainForm.ExportGrid(cxGrid1)
end;

procedure TFormItogHvd.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
