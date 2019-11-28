unit import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, IBCustomDataSet,
  IBQuery, IBDatabase, cxControls, cxContainer, cxEdit, cxProgressBar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,mytools;

type
  TForm1 = class(TForm)
    hvd: TIBDataSet;
    DBGrid1: TDBGrid;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Button2: TButton;
    IBTransaction1: TIBTransaction;
    qry: TIBQuery;
    cxProgressBar1: TcxProgressBar;
    cxProgressBar2: TcxProgressBar;
    Label3: TLabel;
    hvdKL: TIntegerField;
    hvdPLOMB: TSmallintField;
    hvdSCH_CUR: TIBBCDField;
    hvdSCH_OLD: TIBBCDField;
    hvdSCHET: TIBStringField;
    hvdYEARMON: TIntegerField;
    hvdWID: TSmallintField;
    hvdFIO: TIBStringField;
    hvdKOLI_P0: TIntegerField;
    hvdKOLI_P: TIBBCDField;
    hvdKOLI_P1: TIntegerField;
    Button3: TButton;
    hvdKOLI_F: TLargeintField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure exec(s:string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses dbf, main,FileCtrl, iimport;
var hh,kk,oo:TDbf;

procedure TForm1.exec(s:string);
begin
  qry.SQL.Clear;
  qry.SQL.Add(s);
  qry.ExecSQL;
end;

procedure TForm1.Button1Click(Sender: TObject);
var dir:string;
begin
  hh:=TDbf.Create(self);
  kk:=TDbf.Create(self);
  oo:=TDbf.Create(self);

  Dir := ExtractFilePath(ParamStr(0));
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],0) then
    Label1.Caption := Dir;

  kk.TableName:=dir+'\kart.dbf';
//  hh.TableName:=dir+'\h_voda.dbf';
//  oo.TableName:=dir+'\obor.dbf';
  hh.TableName:=dir+'\hhh.dbf';


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
    ibtransaction1.StartTransaction;

//    kk.Open;
//    hh.Open;
//    oo.Open;

    exec('delete from prop');
    exec('delete from hvgrp');
    exec('delete from h_voda');
    exec('delete from dom');

    exec('SET GENERATOR GEN_PROP_ID TO 1');
    exec('SET GENERATOR GEN_H_VODA_ID TO 1');
    exec('SET GENERATOR GEN_HVGRP_ID TO 1');
    exec('SET GENERATOR GEN_DOM_ID TO 1');



    hvd.Open;

    kk.Open;
    hh.Open;
//    oo.Open;

{    hh.First;
    while not hh.Eof do
    begin
      hvd.Insert;
      hvdSCH_CUR.Value:=hh.fieldbyname('new').AsFloat;
      hvdSCH_OLD.Value:=hh.fieldbyname('old').AsFloat;

      hvdSCH_CUR.Value:=hh.fieldbyname('old').AsFloat+hh.fieldbyname('razn').AsFloat;

      hvdSchet.Value:=hh.fieldbyname('schet').AsString;
      hvdYEARMON.Value:=MainForm.curYM;
      hvdWID.Value:=1;
      hvd.Post;
      hh.Next;
      cxProgressBar2.Position:=hh.RecNo/hh.RecordCount*100;
      application.ProcessMessages;
    end;


    oo.First;
    while not oo.Eof do
    begin
      if oo.FieldByName('wid').AsString='hv' then
      begin
        kk.Locate('schet',oo.FieldByName('schet').AsString,[]);
        if not hvd.Locate('schet',oo.FieldByName('schet').AsString,[]) then
        begin
          hvd.Insert;
          hvdSchet.Value:=oo.fieldbyname('schet').AsString;
          hvdYEARMON.Value:=MainForm.curYM;
          hvdWID.Value:=2;
          hvdKOLI_P1.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P0.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P.Value:=kk.FieldByName('koli_p').AsInteger;
          hvd.Post;
        end;

        hvd.Edit;
        hvdFIO.Value:=kk.fieldbyname('fio').AsString;
        hvd.Post;
      end;
      cxProgressBar1.Position:=oo.RecNo/oo.RecordCount*100;
      application.ProcessMessages;
      oo.Next;
    end;


}

    hh.First;
    while not hh.Eof do
    begin
      hvd.Insert;
      hvdSCH_CUR.Value:=hh.fieldbyname('old').AsFloat;
      hvdSCH_OLD.Value:=hh.fieldbyname('old').AsFloat;

//      hvdSCH_CUR.Value:=hh.fieldbyname('old').AsFloat+hh.fieldbyname('razn').AsFloat;

      hvdSchet.Value:=dos2win(hh.fieldbyname('schet').AsString);
      hvdYEARMON.Value:=MainForm.curYM;
      hvdWID.Value:=hh.fieldbyname('norm').AsInteger;
      hvdFIO.Value:=dos2win(hh.fieldbyname('fio').AsString);

      if not hh.fieldbyname('prop').isnull then
      begin
        hvdKOLI_P.Value:=hh.fieldbyname('prop').AsInteger;
        hvdKOLI_P1.Value:=hh.fieldbyname('prop').AsInteger;
        hvdKOLI_P0.Value:=hh.fieldbyname('prop').AsInteger;
      end;

      if ((hvdKOLI_P.Value=0) and (kk.Locate('schet',win2dos(hh.FieldByName('schet').AsString),[]))) then
      begin
          hvdKOLI_P1.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P0.Value:=kk.FieldByName('koli_p').AsInteger;
          hvdKOLI_P.Value:=kk.FieldByName('koli_p').AsInteger;

      end;


      hvd.Post;



      hh.Next;
      cxProgressBar2.Position:=hh.RecNo/hh.RecordCount*100;
      application.ProcessMessages;
    end;


    exec(format('insert into dom (dom,yearmon) select substring(schet from 1 for 4) dom,%d from h_voda group by substring(schet from 1 for 4)',[MainForm.curYM]));
//    exec('update h_voda set koli_p=(select koli_p from kart where h_voda.schet=kart.schet)');

    ibtransaction1.Commit;
  except
    ibtransaction1.Rollback;
  end;

  hh.Active:=false;
  kk.Active:=false;
  oo.Active:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form4.ImKart;
Form4.ImPokaz;
end;

end.
