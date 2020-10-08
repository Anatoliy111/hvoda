unit delkart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxPC,
  cxControls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxGraphics, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, IBCustomDataSet;

type
  TFormDelkart = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxTextEdit11: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel22: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel12: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxDateEdit7: TcxDateEdit;
    cxLabel29: TcxLabel;
    IBVIDZN: TIBDataSet;
    IBVIDZNID: TIntegerField;
    IBVIDZNVID_ZN: TIBStringField;
    IBVIDZNVID_OB: TIntegerField;
    VIDZNSource: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vidspr:integer;
  end;

var
  FormDelkart: TFormDelkart;

implementation

{$R *.dfm}

procedure TFormDelkart.FormShow(Sender: TObject);
begin
  IBVIDZN.Close;
  IBVIDZN.ParamByName('vid').Value:=vidspr;
  IBVIDZN.Open;
end;

end.
