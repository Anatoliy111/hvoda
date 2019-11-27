unit edexpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxDropDownEdit,
  cxCheckBox, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, IBDatabase,
  IBCustomDataSet, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, fs_iibxrtti, fs_synmemo, fs_iinterpreter, fs_ipascal, fs_icpp,
  fs_ijs, dxBar, StdCtrls, fs_idbrtti, dxBarExtItems, cxImageComboBox,
  DBTables, cxCalc, dxDockControl, dxDockPanel, cxTL, cxMaskEdit,
  cxInplaceContainer, cxDBTL, cxTLData, cxPropertiesStore, ExtCtrls,
  IBQuery;

type
  TFormEdExpr = class(TForm)
    Grid: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    expr: TIBDataSet;
    IBTransaction1: TIBTransaction;
    exprSource: TDataSource;
    GridKL: TcxGridDBColumn;
    GridNOTES: TcxGridDBColumn;
    GridWID: TcxGridDBColumn;
    fsPascal1: TfsPascal;
    fsScript1: TfsScript;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    exprEXPR: TMemoField;
    exprKL: TIntegerField;
    exprNOTES: TIBStringField;
    exprWID: TIBStringField;
    fsDBRTTI1: TfsDBRTTI;
    prop: TIBDataSet;
    IBTransactionScript: TIBTransaction;
    dxBarButton2: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    dxBarStatic4: TdxBarStatic;
    hvd: TIBDataSet;
    grps: TIBDataSet;
    data: TIBDataSet;
    dxBarEdit2: TdxBarEdit;
    dxDockSite1: TdxDockSite;
    dxDockPanel1: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    fsSyntaxMemo1: TfsSyntaxMemo;
    cxDBTreeList1: TcxDBTreeList;
    help: TIBDataSet;
    helpSource: TDataSource;
    cxDBTreeList1TITLE: TcxDBTreeListColumn;
    helpKL: TIntegerField;
    helpNOTE: TMemoField;
    helpNPP: TIntegerField;
    helpOWNER: TIntegerField;
    helpTITLE: TIBStringField;
    dxDockingManager1: TdxDockingManager;
    helpADDI: TIBStringField;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    dxDockPanel3: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxBarDockControl1: TdxBarDockControl;
    exprBIN: TBlobField;
    GridEXPR: TcxGridDBColumn;
    helpTEMPL: TIBStringField;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarButton3: TdxBarButton;
    Timer1: TTimer;
    dxBarButton4: TdxBarButton;
    qry: TIBQuery;
    fsScriptCalc: TfsScript;
    hvd_rep: TIBDataSet;
    hvd_repDOM: TIBStringField;
    hvd_repGRP_RAZN: TIBBCDField;
    hvd_repKL: TIntegerField;
    hvd_repKOLI_P: TIBBCDField;
    hvd_repNOR_RAZN: TIBBCDField;
    hvd_repSCH_CUR: TIBBCDField;
    hvd_repSCH_OLD: TIBBCDField;
    hvd_repSCH_RAZN: TIBBCDField;
    hvd_repSCHET: TIBStringField;
    hvd_repKVART: TIBStringField;
    hvd_repPLOMB: TSmallintField;
    hvd_repFIO: TIBStringField;
    hvd_repWID: TSmallintField;
    hvd_repYEARMON: TIntegerField;
    dom: TIBDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure exprAfterScroll(DataSet: TDataSet);
    procedure exprBeforePost(DataSet: TDataSet);
    procedure fsSyntaxMemo1Change(Sender: TObject);
    procedure propBeforeOpen(DataSet: TDataSet);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hvdBeforeOpen(DataSet: TDataSet);
    procedure grpsBeforeOpen(DataSet: TDataSet);
    procedure GridCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure exprBeforeScroll(DataSet: TDataSet);
    procedure cxDBTreeList1DblClick(Sender: TObject);
    procedure dataBeforeOpen(DataSet: TDataSet);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure hvd_repBeforeOpen(DataSet: TDataSet);
    procedure domBeforeOpen(DataSet: TDataSet);
    procedure dxBarButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Compile(s:String);
  public
    { Public declarations }
    function CallMethod(Instance: TObject; ClassType: TClass; const MethodName: string; var Params: Variant):Variant;
    function getCalcRes(func:string;const Values:Variant):double; //
    function Exec(func:string;cmd:string=''):variant;
  end;

var
  FormEdExpr: TFormEdExpr;

implementation

uses main, mytools,Clipbrd,fs_itools, progress,dbf;

{$R *.dfm}

type
  TData = class(TIBDataSet)
    public
      function RecordCount:integer;
  end;

function TData.RecordCount:integer;
begin
  FetchAll;
  Result:=inherited recordcount;
end;



function TFormEdExpr.Exec(func:string;cmd:string):variant;
begin
  result:=0;
  try
    IBtransaction1.StartTransaction;
    expr.Open;
    if expr.Locate('wid',func,[]) then
    begin
      IBTransactionScript.StartTransaction;
      Compile(exprExpr.Value);
      if cmd='' then fsScript1.Execute
      else result:=fsScript1.Evaluate(cmd);
    end;
    IBTransactionScript.Commit;
  finally
    expr.Close;
    IBTransaction1.Commit;
    if IBTransactionScript.InTransaction then IBTransactionScript.Rollback;
  end;
end;


procedure TFormEdExpr.Compile(s:String);
begin
  fsScript1.Clear;
  fsScript1.Lines.Text :=s;
  fsScript1.Parent:=fsGlobalUnit;

  if not fsScript1.Compile then
    raise Exception.Create(fsScript1.ErrorMsg+' at '+fsScript1.ErrorPos);
end;


function TFormEdExpr.CallMethod(Instance: TObject; ClassType: TClass; const MethodName: string; var Params: Variant):Variant;
var d:double;
  i:integer;
  s:string;
begin
  if ClassType = TDbf then
  begin
    if MethodName='CREATETABLE' then
    begin
      TDbf(Instance).CreateTable;
    end;
  end
  else if ClassType = TData then
  begin
    if MethodName='RECNO' then
      result := TData(Instance).Recno
    else if MethodName='RECORDCOUNT' then
      result:=TData(Instance).RecordCount
    else
      raise Exception.Create('ѕопытка вызвать неизвестную функцию '+MethodName);
  end
  else
  begin
    if MethodName='OPENDATA' then
    begin
      if UpperCase(Params[0])='PROP' then
      begin
        prop.Active:=false;
        prop.ParamByName('schet').AsString:=Params[1];
        prop.Open;
        result:=integer(prop);
      end
      else if UpperCase(Params[0])='GRPS' then
      begin
        grps.Active:=false;
        grps.Open;
        result:=integer(grps);
      end
      else if UpperCase(Params[0])='DATA' then
      begin
        data.Active:=false;
        data.Open;
        result:=integer(data);
      end
      else if UpperCase(Params[0])='DOM' then
      begin
        dom.Active:=false;
        dom.Open;
        result:=integer(dom);
      end
      else if UpperCase(Params[0])='HVD_REP' then
      begin
        hvd_rep.Active:=false;
        hvd_rep.Open;
        result:=integer(hvd_rep);
      end
      else if UpperCase(Params[0])='HVD' then
      begin
        hvd.Active:=false;
        hvd.ParamByName('sch0').AsString:=Params[1];
        hvd.ParamByName('sch1').AsString:=Params[2];
        if hvd.ParamByName('sch1').AsString='' then
          if Params[1]='' then hvd.ParamByName('sch1').AsString:='€€€€€€€€€€'
          else hvd.ParamByName('sch1').AsString:=Params[1];
        hvd.Open;
        hvd.FetchAll;
        result:=integer(hvd);
      end
      else
        raise Exception.Create('ѕопытка открыть неизвестную таблицу '+UpperCase(Params[0]));
    end
    else if MethodName='GETPROP' then
    begin

      i:=Params[0];
      s:=Params[1];
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add(format('select koli_p from h_voda where schet=''%s'' and yearmon=%d and wid<>1',[s,i]));
      qry.Open;
      if qry.RecordCount=0 then result:=0
      else result:=qry.Fields[0].AsFloat;
      qry.Close;
    end
    else if MethodName='CURYEARMON' then
    begin
      result:=MainForm.curYM;
    end
    else if MethodName='PREVYEARMON' then
    begin
      i:=MainForm.curYM;
      i:=i-1;
      if (i mod 100)=0 then i:=i-98;
      result:=i;
    end
    else if MethodName='CURDAYSINMON' then
    begin
      result:=DaysPerMonth(MainForm.curYM);
    end
    else if MethodName='PREVDAYSINMON' then
    begin
      i:=MainForm.curYM;
      i:=i-1;
      if (i mod 100)=0 then i:=i-98;
      result:=DaysPerMonth(i);
    end
    else if MethodName='PROGRESS' then
    begin
      d:=Params[0];
      if (d>0) and (d<=100) then
      begin
        if FormProgress.Visible then FormProgress.progress(d,Params[1])
        else FormProgress.progressStart;
      end
      else
        FormProgress.progressClose;
      Result:=FormProgress.cancel;
    end
    else if MethodName='INITCALC' then
    begin
      qry.SQL.Clear;
      qry.SQL.Add(format('update h_voda set nor_razn=0,grp_razn=0 where yearmon=%d',[MainForm.curYM]));
      qry.ExecSQL;

      qry.SQL.Clear;
      qry.SQL.Add(format('update h_voda set wid=2 where wid=3 and yearmon=%d',[MainForm.curYM]));
      qry.ExecSQL;

      qry.SQL.Clear;
      qry.SQL.Add(format('update h_voda set note=null where yearmon=%d',[MainForm.curYM]));
      qry.ExecSQL;
    end
    else
      raise Exception.Create('ѕопытка вызвать неизвестную функцию '+MethodName);
  end;
end;


procedure TFormEdExpr.FormShow(Sender: TObject);
begin
  ibtransaction1.StartTransaction;
  expr.Open;
  help.Open;
  fsScriptCalc.Clear;
end;

procedure TFormEdExpr.FormHide(Sender: TObject);
begin
  if expr.State in [dsEdit,dsInsert] then expr.Post;
  expr.Close;
  help.Close;
  ibtransaction1.Commit;
  if ibtransactionScript.InTransaction then
    ibtransactionScript.Commit;
end;

procedure TFormEdExpr.dxBarButton1Click(Sender: TObject);
var p:TPoint;
begin
  ActiveControl:=fsSyntaxMemo1;
  try
    Compile(fsSyntaxMemo1.Lines.Text);
  except
    on e:exception do
      begin
        ShowMessage(e.Message);
        p := fsPosToPoint(fsScript1.ErrorPos);
        fsSyntaxMemo1.SetPos(p.X, p.Y);
      end;
  end;
end;

procedure TFormEdExpr.exprAfterScroll(DataSet: TDataSet);
begin
  fsSyntaxMemo1.Lines.Text:=exprExpr.Value
end;

procedure TFormEdExpr.exprBeforePost(DataSet: TDataSet);
begin
  exprExpr.Value:=fsSyntaxMemo1.Lines.Text;
  
end;

procedure TFormEdExpr.fsSyntaxMemo1Change(Sender: TObject);
begin
  if not (Expr.State in [dsEdit,dsInsert]) then
    expr.Edit;
end;


function TFormEdExpr.getCalcRes(func:string;const Values:Variant):double;
// получить среднее число людей за мес€ц, проживающих по данному счету
var val:variant;
begin
  result:=0;
  if fsScriptCalc.Statement.Count=0 then
  begin
    IBtransaction1.StartTransaction;
    try
      expr.Open;
      if expr.Locate('wid','Calcs',[]) then
      begin
        fsScriptCalc.Clear;
        fsScriptCalc.Lines.Text :=exprExpr.Value;
        fsScriptCalc.Parent:=fsGlobalUnit;

        if not fsScriptCalc.Compile then
          raise Exception.Create(fsScriptCalc.ErrorMsg+' at '+fsScriptCalc.ErrorPos);
      end;
    finally
      expr.Close;
      if IBTransaction1.InTransaction then IBTransaction1.Commit;
    end;
  end;

  try
    IBTransactionScript.StartTransaction;
    try
      val:=fsScriptCalc.CallFunction(Func,Values);
    except
      on e:Exception do
        ShowMessage(e.Message);
    end;

    try result:=val;except end;

    IBTransactionScript.Commit;
  finally
    if IBTransactionScript.InTransaction then IBTransactionScript.Rollback;
  end;
end;

procedure TFormEdExpr.propBeforeOpen(DataSet: TDataSet);
begin
  prop.ParamByName('yearmon').AsInteger:=MainForm.curYM;
  if prop.ParamByName('schet').AsString='' then
    prop.ParamByName('all').AsInteger:=1
  else
    prop.ParamByName('all').AsInteger:=0;
end;

procedure TFormEdExpr.dxBarButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFormEdExpr.dxBarEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var v:variant;
begin
  if key=VK_RETURN then
  try
    key:=0;
    Compile(fsSyntaxMemo1.Lines.Text);
    v:=fsScript1.Evaluate(dxBarEdit1.Text);
    try
      dxBarEdit2.Text:=v;
    except
    end;
  except
  end;
end;

procedure TFormEdExpr.hvdBeforeOpen(DataSet: TDataSet);
begin
  hvd.ParamByName('yearmon').AsInteger:=MainForm.curYM;

end;

procedure TFormEdExpr.grpsBeforeOpen(DataSet: TDataSet);
begin
  grps.ParamByName('yearmon').AsInteger:=MainForm.curYM;

end;

procedure TFormEdExpr.GridCanSelectRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
//  if ARecord.Values[gridEXPR.Index]<>fsSyntaxMemo1.Lines.Text then
//    ARecord.Values[gridEXPR.Index]:=fsSyntaxMemo1.Lines.Text;

end;

procedure TFormEdExpr.exprBeforeScroll(DataSet: TDataSet);
begin
  if exprExpr.Value<>fsSyntaxMemo1.Lines.Text then
  begin
    expr.Edit;
    exprExpr.Value:=fsSyntaxMemo1.Lines.Text;
    expr.post;
  end;
end;

procedure TFormEdExpr.cxDBTreeList1DblClick(Sender: TObject);
var s:string;
begin
  s:=helpTEMPL.value;
  if s<>'' then
  begin
    clipboard.SetTextBuf(pchar(s));
    fsSyntaxMemo1.PasteFromClipboard;
//    dxDockPanel2.Hide;
  end;
end;

procedure TFormEdExpr.dataBeforeOpen(DataSet: TDataSet);
begin
  data.ParamByName('yearmon').AsInteger:=MainForm.curYM;

end;

procedure TFormEdExpr.domBeforeOpen(DataSet: TDataSet);
begin
  dom.ParamByName('yearmon').AsInteger:=MainForm.curYM;

end;

procedure TFormEdExpr.dxBarButton3Click(Sender: TObject);
begin
  fsScript1.Terminate;
end;

procedure TFormEdExpr.dxBarButton4Click(Sender: TObject);
begin
  try
    begin
      IBTransactionScript.StartTransaction;
      Compile(exprExpr.Value);
      fsScript1.Execute;
    end;
    IBTransactionScript.Commit;
  finally
    if IBTransactionScript.InTransaction then IBTransactionScript.Rollback;
  end;
end;

procedure TFormEdExpr.FormCreate(Sender: TObject);
begin
  fsScriptCalc.Clear;
  with fsGlobalUnit do
  begin
    AddedBy := Self;
    AddMethod('function OpenData(Data:string;Schet:string='''';Schet1:string=''''):TData',CallMethod);
    AddMethod('function GetProp(ym:integer;Schet:string):double',CallMethod);
    AddMethod('function CurYearMon:integer',CallMethod);
    AddMethod('function CurDaysInMon:integer',CallMethod);
    AddMethod('function PrevYearMon:integer',CallMethod);
    AddMethod('function PrevDaysInMon:integer',CallMethod);
    AddMethod('function Progress(p:double;s:string=''''):boolean',CallMethod);
    AddMethod('procedure InitCalc',CallMethod);

    with AddClass(TData, 'TDataSet') do
    begin
      AddMethod('function RecNo:integer', CallMethod);
      AddMethod('function RecordCount:integer', CallMethod);
    end;
    with AddClass(TDbf, 'TDataSet') do
    begin
      AddMethod('procedure CreateTable', CallMethod);
    end;
  end;
end;


procedure TFormEdExpr.hvd_repBeforeOpen(DataSet: TDataSet);
begin
  hvd_rep.ParamByName('yearmon').AsInteger := MainForm.CurYM;

end;

end.



