unit kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, ExtCtrls, cxStyles, cxEdit,
  cxControls, cxContainer, cxTextEdit, cxPC, IBCustomDataSet, IBQuery,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,DateUtils, cxGroupBox, cxLabel, cxDBLabel, cxMemo;

type
  TForm2 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid1DBTableView1TIP: TcxGridDBColumn;
    cxGrid1DBTableView1N_LICH: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_VIP: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_POV: TcxGridDBColumn;
    cxGrid1DBTableView1N_INPLOMB: TcxGridDBColumn;
    cxGrid1DBTableView1N_MGPLOMB: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_INP: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_MGP: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    Panel3: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxTabSheet7: TcxTabSheet;
    Panel4: TPanel;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    Label1: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid2DBTableView1SCHET: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_VS: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_ZN: TcxGridDBColumn;
    cxGrid2DBTableView1NOTE: TcxGridDBColumn;
    cxGrid2DBTableView1N_PLOMB: TcxGridDBColumn;
    cxGridDBTableView2SCHET: TcxGridDBColumn;
    cxGridDBTableView2TIP: TcxGridDBColumn;
    cxGridDBTableView2N_LICH: TcxGridDBColumn;
    cxGridDBTableView2DATA_VIP: TcxGridDBColumn;
    cxGridDBTableView2DATA_ZN: TcxGridDBColumn;
    cxGridDBTableView1SCHET: TcxGridDBColumn;
    cxGridDBTableView1TIP: TcxGridDBColumn;
    cxGridDBTableView1N_LICH: TcxGridDBColumn;
    cxGridDBTableView1DATA_VIP: TcxGridDBColumn;
    cxGridDBTableView1DATA_POV: TcxGridDBColumn;
    cxGridDBTableView1NOTE: TcxGridDBColumn;
    cxGridDBTableView2NOTE: TcxGridDBColumn;
    Panel5: TPanel;
    cxButton1: TcxButton;
    cxGridDBTableView1DATA_VIG: TcxGridDBColumn;
    cxGridDBTableView2DATA_VIG: TcxGridDBColumn;
    cxGridDBTableView3YEARMON: TcxGridDBColumn;
    cxGridDBTableView3POKAZN: TcxGridDBColumn;
    cxGridDBTableView3DATE_POK: TcxGridDBColumn;
    cxGridDBTableView2ZN: TcxGridDBColumn;
    cxGrid2DBTableView1PL: TcxGridDBColumn;
    cxGrid2DBTableView1ZN: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1SCHET: TcxGridDBColumn;
    cxGrid3DBTableView1PL: TcxGridDBColumn;
    cxGrid3DBTableView1N_PLOMB: TcxGridDBColumn;
    cxGrid3DBTableView1DATE_VS: TcxGridDBColumn;
    cxGrid3DBTableView1NOTE: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label3: TLabel;
    cxGridDBTableView3PKZ: TcxGridDBColumn;
    cxGridDBTableView3LICH: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxGridDBTableView1DATA_STPOV: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    IBQuery1: TIBQuery;
    cxDBTextEdit1: TcxDBTextEdit;
    IBQuery2: TIBQuery;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    Label8: TLabel;
    cxDBLabel1: TcxDBLabel;
    IBQuery5: TIBQuery;
    Label11: TLabel;
    cxGridDBTableView2RASCH_DAY: TcxGridDBColumn;
    cxButton10: TcxButton;
    Shape1: TShape;
    Label13: TLabel;
    cxTabSheet8: TcxTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    cxButton11: TcxButton;
    cxGrid7: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxMemo1: TcxMemo;
    Label16: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxButton5: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxGroupBox2: TcxGroupBox;
    Label12: TLabel;
    Label20: TLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxGridDBTableView3DATE_USER: TcxGridDBColumn;
    Label22: TLabel;
    cxDBLabel6: TcxDBLabel;
    Label23: TLabel;
    cxDBLabel7: TcxDBLabel;
    Label21: TLabel;
    cxDBLabel8: TcxDBLabel;
    cxGridDBTableView4ID: TcxGridDBColumn;
    cxGridDBTableView4NOTE: TcxGridDBColumn;
    cxGridDBTableView4DATE_USER: TcxGridDBColumn;
    cxGridDBTableView4VID_ZN: TcxGridDBColumn;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      LichPost:boolean;

      function CubAvg12(sch:string):currency;
      procedure Find(sch:string);
      procedure calclich(DS:TIBDataSet);
      procedure calcpok2(DS:TIBDataSet;tip:integer);
      procedure kub_all(DS:TIBDataSet);



  end;

var
  Form2: TForm2;




implementation

uses main, addkart, delkart, mytools, math;

{$R *.dfm}

procedure TForm2.kub_all(DS:TIBDataSet);
var sum,sum2:Currency;
begin
//  sum:=DS.FieldByName('SCH_RAZN').AsCurrency+
//  DS.FieldByName('NOR_RAZN').AsCurrency+
//  DS.FieldByName('NORM_BLICH').AsCurrency;
//
//  sum2:=DS.FieldByName('KUB_ALL').AsCurrency-DS.FieldByName('KUB_NOBALANS').AsCurrency;
//
//  DS.Edit;
//  if sum<>sum2 then
//     DS.FieldByName('KUB_NOBALANS').AsCurrency:=0;

  sum:=DS.FieldByName('SCH_RAZN').AsCurrency+
  DS.FieldByName('NOR_RAZN').AsCurrency+
  DS.FieldByName('NORM_BLICH').AsCurrency+
  DS.FieldByName('DEL_NORM').AsCurrency+
  DS.FieldByName('KUB_NOBALANS').AsCurrency;
  DS.Edit;
  DS.FieldByName('KUB_ALL').AsCurrency:=SimpleRoundTo(sum,-3);

  DS.Post;

end;

procedure TForm2.calcpok2(DS:TIBDataSet;tip:integer);
var kol,kol2,lastpokazn,endpokazn,nextkub,vid,daymonth,inpokazn:integer;
    date:tdate;
    kub12,kubavg:Currency;
begin
  inpokazn:=0;
  lastpokazn:=0;
  kol:=0;
  kol2:=0;


  if tip=1 then
  begin

    IBQuery5.Close;
    IBQuery5.SQL.Text:='select first 1 schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon<:per and schet=:sch order by date_pok desc,id desc';
    IBQuery5.ParamByName('per').Value:=MainForm.period;
    IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
    IBQuery5.Open;


    if IBQuery5.RecordCount<>0 then
    begin
       if IBQuery5.FieldByName('POKAZN').IsNull then
          lastpokazn:=0
       else
          lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;

          date:=IBQuery5.FieldByName('date_pok').Value;
          vid:=IBQuery5.FieldByName('VID_POK').Value;
    end;



    IBQuery6.Close;
    IBQuery6.SQL.Text:='select * from pokazn where yearmon=:per and schet=:sch order by date_pok,id';
    IBQuery6.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
    IBQuery6.ParamByName('per').Value:=MainForm.period;
    IBQuery6.Open;

     while not IBQuery6.eof do
     begin
       if (IBQuery6.FieldByName('VID_POK').Value<>17) and (IBQuery6.FieldByName('VID_POK').Value<>26) then
           kol:=kol+IBQuery6.FieldByName('POKAZN').Value-lastpokazn;

       lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;
          date:=IBQuery6.FieldByName('date_pok').Value;
          vid:=IBQuery6.FieldByName('VID_POK').Value;
          inpokazn:=1;
       IBQuery6.Next;
     end;
  end
  else
  begin

    if IBQuery6.RecordCount<>0 then
    begin
      IBQuery6.first;
//      if (IBQuery6.FieldByName('schet').Value<>trim(DS.FieldByName('schet').value)) then
          IBQuery6.Locate('schet',trim(DS.FieldByName('schet').value),[]);
      while (not IBQuery6.eof) and (IBQuery6.FieldByName('schet').Value=trim(DS.FieldByName('schet').value)) do
      begin
         if IBQuery6.FieldByName('yearmon').Value<>MainForm.period then
         begin
           if IBQuery6.FieldByName('POKAZN').IsNull then
              lastpokazn:=0
           else
              lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;

              date:=IBQuery6.FieldByName('date_pok').Value;
              vid:=IBQuery6.FieldByName('VID_POK').Value;
         end
         else
         begin
           if (IBQuery6.FieldByName('VID_POK').Value<>17) and (IBQuery6.FieldByName('VID_POK').Value<>26) then
               kol:=kol+IBQuery6.FieldByName('POKAZN').Value-lastpokazn;
              inpokazn:=1;
              lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;
              date:=IBQuery6.FieldByName('date_pok').Value;
              vid:=IBQuery6.FieldByName('VID_POK').Value;


         end;

      IBQuery6.Next;
      end;
    end;

  //  IBQuery6.Prior;

  end;

//    IBQuery5.Close;
//    IBQuery5.SQL.Text:='select pkk.id,pkk.schet,pkk.yearmon,pkk.pokazn,pkk.vid_pok,pkk.date_pok from pokazn pkk '+
//                       'join (select schet, max(date_pok) date_pok, max(id) id from pokazn where yearmon<:per and schet=:sch group by schet) as pok1 on pok1.id=pkk.id';
//    IBQuery5.ParamByName('per').Value:=MainForm.period;
//    IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//    IBQuery5.Open;
//
//    lastpokazn:=0;
//    if IBQuery5.RecordCount<>0 then
//    begin
//       if IBQuery5.FieldByName('POKAZN').IsNull then
//          lastpokazn:=0
//       else
//          lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;
//
//          date:=IBQuery5.FieldByName('date_pok').Value;
//          vid:=IBQuery5.FieldByName('VID_POK').Value;
//    end;
//
//
//
//    IBQuery6.Close;
//    IBQuery6.SQL.Text:='select * from pokazn where yearmon=:per and schet=:sch order by date_pok,id';
//    IBQuery6.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//    IBQuery6.ParamByName('per').Value:=MainForm.period;
//    IBQuery6.Open;
//
//    kol:=0;
//    kol2:=0;
//     while not IBQuery6.eof do
//     begin
//
//
//     if (IBQuery6.FieldByName('VID_POK').Value<>17) and (IBQuery6.FieldByName('VID_POK').Value<>26) then
//         kol:=kol+IBQuery6.FieldByName('POKAZN').Value-lastpokazn;
//
//     lastpokazn:=IBQuery6.FieldByName('POKAZN').Value;
//        date:=IBQuery6.FieldByName('date_pok').Value;
//        vid:=IBQuery6.FieldByName('VID_POK').Value;
//     IBQuery6.Next;
//     end;


//    IBQuery5.Close;
//    IBQuery5.SQL.Text:='select * from '+
//                       '(select schet,yearmon,pokazn,vid_pok,date_pok from (select first 1 schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon<:per and schet=:sch order by date_pok desc,id desc)'+
//                       'union all '+
//                       'select schet,yearmon,pokazn,vid_pok,date_pok from (select schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon=:per and schet=:sch order by date_pok,id))';
//
//    IBQuery5.ParamByName('per').Value:=MainForm.period;
//    IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//    IBQuery5.Open;
//
//    lastpokazn:=0;
//    kol:=0;
//    kol2:=0;
//    inpokazn:=0;
//    if IBQuery5.RecordCount<>0 then
//    begin
//      while not IBQuery5.eof do
//      begin
//         if IBQuery5.FieldByName('yearmon').Value<>MainForm.period then
//         begin
//           if IBQuery5.FieldByName('POKAZN').IsNull then
//              lastpokazn:=0
//           else
//              lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;
//
//              date:=IBQuery5.FieldByName('date_pok').Value;
//              vid:=IBQuery5.FieldByName('VID_POK').Value;
//         end
//         else
//         begin
//           if (IBQuery5.FieldByName('VID_POK').Value<>17) and (IBQuery5.FieldByName('VID_POK').Value<>26) then
//               kol:=kol+IBQuery5.FieldByName('POKAZN').Value-lastpokazn;
//              inpokazn:=1;
//              lastpokazn:=IBQuery5.FieldByName('POKAZN').Value;
//              date:=IBQuery5.FieldByName('date_pok').Value;
//              vid:=IBQuery5.FieldByName('VID_POK').Value;
//
//
//         end;
//
//      IBQuery5.Next;
//      end;
//    end;

//select * from
//(select pkk.id,pkk.schet,pkk.yearmon,pkk.pokazn,pkk.vid_pok,pkk.date_pok from pokazn pkk
//join (select schet, max(date_pok) date_pok, max(id) id from pokazn where yearmon<:per group by schet) as pok1 on pok1.id=pkk.id
//union all
//select id,schet,yearmon,pokazn,vid_pok,date_pok from pokazn where yearmon=:per)
//order by schet,date_pok,id

    DS.Edit;

       DS.FieldByName('VID_POK').Value:=vid;
       DS.FieldByName('DATE_POK').Value:=date;
       DS.FieldByName('SCH_CUR').Value:=lastpokazn;
       DS.FieldByName('R_NACH').Value:='';
       DS.FieldByName('R_NOBAL').Value:='';

       //46,47,48
       if (DS.FieldByName('WID').Value>=46) then
       begin
       if (DS.FieldByName('WID').Value>46) then
            DS.FieldByName('KUB_ALL').Value:=0;
            DS.FieldByName('KUB_NOBALANS').Value:=0;
            DS.FieldByName('NORM_BLICH').Value:=0;
            DS.FieldByName('NOR_RAZN').Value:=0;
            DS.FieldByName('R_NACH').Value:='';
            DS.FieldByName('SCH_RAZN').Value:=0;

         if DS.FieldByName('DEL_NORM').Value<0 then
                  begin
                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                  DS.FieldByName('DEL_NORM').Value:=0;
                  end;
       end
       else
       begin //41,42,43,44,45
         if (DS.FieldByName('LICH_TO').AsInteger=0) or (DS.FieldByName('LICH_TO').Value=Null) then
                  DS.FieldByName('WID').Value:=42
         else
         begin
            if DS.FieldByName('WID').Value=42 then
               DS.FieldByName('WID').Value:=41;
         end;




         if (not DS.FieldByName('LICH_YEARMON').IsNull) and (DS.FieldByName('LICH_YEARMON').Value<MainForm.period) and (DS.FieldByName('WID').Value<>43) and (DS.FieldByName('WID').Value<>42) then
                  DS.FieldByName('WID').Value:=45;

         //45,42
         if (DS.FieldByName('WID').Value=45) or (DS.FieldByName('WID').Value=42) then
         begin

//                if DS.FieldByName('ORG').Value=0 then
//                begin
                  if DS.FieldByName('KUB_NOBALANS').AsFloat=0 then
                  begin
                    DS.FieldByName('SCH_RAZN').Value:=0;
                    DS.FieldByName('NORM_BLICH').Value:=iif(DS.FieldByName('KOLI_P').AsInteger<>0,DS.FieldByName('KOLI_P').AsInteger,1)*DS.FieldByName('NORMA').Value;
                    DS.FieldByName('NOR_RAZN').Value:=0;
                    DS.FieldByName('R_NACH').Value:='Споживання по нормі: к-ть людей або квартира('+inttostr(DS.FieldByName('KOLI_P').Value)+') * норма('+CurrToStr(DS.FieldByName('NORMA').Value)+')';
                  end;
                  //                end
//                else
//                begin
//                  kub12:=Form2.CubAvg12(trim(DS.FieldByName('schet').value));
//                  daymonth:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
//                  kubavg:=SimpleRoundTo(kub12*daymonth,-3);
//                  DS.FieldByName('NOR_RAZN').Value:=kubavg;
//                  DS.FieldByName('NORM_BLICH').Value:=0;
//                  DS.FieldByName('R_NACH').Value:='Середнє споживання: к-ть днів за місяць('+inttostr(daymonth)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
//                end;
                if DS.FieldByName('DEL_NORM').Value<0 then
                    begin
                    DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                    DS.FieldByName('DEL_NORM').Value:=0;
                    end;

         end
         else if (inpokazn<>0) then  //41,43,44
         begin
               if DS.FieldByName('PREV_NORM').Value>0 then
               begin
                  DS.FieldByName('DEL_NORM').Value:=DS.FieldByName('PREV_NORM').Value*-1;
                  DS.FieldByName('PREV_NORM').Value:=0;
               end;


                  DS.FieldByName('SCH_RAZN').Value:=kol;
             //   if (DS.FieldByName('WID').Value<>43) then
             //   begin
                  DS.FieldByName('NOR_RAZN').Value:=0;
                  DS.FieldByName('NORM_BLICH').Value:=0;
                  DS.FieldByName('R_NACH').Value:='';
                  DS.FieldByName('WID').Value:=41;
              //  end;

         end
         else
         begin      //41,43,44
            DS.FieldByName('SCH_RAZN').Value:=0;
               if DS.FieldByName('DEL_NORM').Value<0 then
                  begin
                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                  DS.FieldByName('DEL_NORM').Value:=0;
                  end;



         //   if (DS.FieldByName('WID').Value<>43) then
         //   begin
//               if DS.FieldByName('ORG').Value=0 then
//               begin
//                 IBQuery7.Close;
//                 IBQuery7.SQL.Text:='select yearmon from pokazn where schet=:sch and yearmon>=(select first 1 skip 3 yearmon from data order by yearmon desc)';
//                 IBQuery7.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
//                 IBQuery7.Open;

                 if DS.FieldByName('DATE_POK').Value>YearMon2Date(MainForm.back3month) then
                 begin
                  kub12:=Form2.CubAvg12(trim(DS.FieldByName('schet').value));
                  daymonth:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
                  kubavg:=SimpleRoundTo(kub12*daymonth,-3);
                  DS.FieldByName('NOR_RAZN').Value:=kubavg;
                  DS.FieldByName('NORM_BLICH').Value:=0;
                  DS.FieldByName('R_NACH').Value:='Середнє споживання: к-ть днів за місяць('+inttostr(daymonth)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
                 end
                 else
                 begin
                   DS.FieldByName('NOR_RAZN').Value:=iif(DS.FieldByName('KOLI_P').AsInteger<>0,DS.FieldByName('KOLI_P').AsInteger,1)*DS.FieldByName('NORMA').Value;
                   DS.FieldByName('NORM_BLICH').Value:=0;
                   DS.FieldByName('R_NACH').Value:='Споживання по нормі коли 3 міс. не було показників: к-ть людей або квартир('+inttostr(DS.FieldByName('KOLI_P').Value)+') * норма('+CurrToStr(DS.FieldByName('NORMA').Value)+')';
                 end;
//               end;
//               else
//               begin
//                  kub12:=Form2.CubAvg12(trim(DS.FieldByName('schet').value));
//                  daymonth:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
//                  kubavg:=SimpleRoundTo(kub12*daymonth,-3);
//                  DS.FieldByName('NOR_RAZN').Value:=kubavg;
//                  DS.FieldByName('NORM_BLICH').Value:=0;
//                  DS.FieldByName('R_NACH').Value:='Середнє споживання: к-ть днів за місяць('+inttostr(daymonth)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
//               end;

         //   end;


            if (DS.FieldByName('WID').Value=41) then
                   DS.FieldByName('WID').Value:=44;
         end;

       end;

       DS.Post;
       kub_all(DS);

      // MainForm.IBTransaction1.CommitRetaining;

end;

procedure TForm2.calclich(DS:TIBDataSet);
var date_zn,date_vs,date_stzn,lastdate_zn:TDate;
    kol,kol_to,vs,zn,daynorm,raschday,kolmes,lastmes,firstmes,fl_adderr,newlich:integer;
    kub12,kubavg,kubavgday,kubnorm:currency;
    lastvid:string;
    startvs:boolean;
    LFactor: Double;

begin

//if trim(DS.FieldByName('schet').value)='0024007' then
  //   IBQuery5.Close;

//  IBQuery5.Close;
//  IBQuery5.SQL.Text:='select count(*) kol from lich where lich.schet=:sch and data_zn is null';
//  IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
////  IBQuery5.ParamByName('ym').Value:=MainForm.curYM;
//  IBQuery5.Open;

  if (DS.FieldByName('wid').Value=45) or (DS.FieldByName('wid').Value=42) or (DS.FieldByName('wid').Value>=46) then exit;

  MainForm.lichzn.Close;
  MainForm.lichzn.Open;

  kol_to:=DS.FieldByName('lich_to').value;

  IBQuery3.Close;
  IBQuery3.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
  IBQuery3.ParamByName('yy').Value:=copy(IntToStr(MainForm.curYM),1,4);
  IBQuery3.ParamByName('mm').Value:=copy(IntToStr(MainForm.curYM),5,2);
  IBQuery3.Open;

  kol:=0;
  date_vs:=0;
  date_zn:=0;
  lastdate_zn:=0;
  date_stzn:=0;
  daynorm:=0;
  startvs:=true;
  newlich:=0;

  fl_adderr:=0;
  if DS.FieldByName('znold_lich').AsInteger>0 then
  begin
     date_zn:=YearMon2Date(MainForm.period);
     kol:=DS.FieldByName('znold_lich').AsInteger;
     date_stzn:=date_zn-1;
     lastdate_zn:=date_zn;
  end;


  while not IBQuery3.eof do
  begin

//    if (kol<0) and (startvs) then
//    begin
//       daynorm:=DaysBetween(date_zn,StartOfTheMonth(date_zn));
//       //date_zn:=0;
//       //kol:=0
//    end;

  //         DS.Edit;
   //        DS.FieldByName('PERE_DAY').Value:=0;
   //        DS.FieldByName('NOR_RAZN').Value:=0;
   //        DS.FieldByName('WID').Value:=43;
   //        DS.Post;


    if (IBQuery3.FieldByName('vid').Value='zn') then
    begin
     // lastdate_zn:=IBQuery3.FieldByName('data_l').Value;
      if (IBQuery3.FieldByName('vid_zn').Value<>6) then
      begin
        fl_adderr:=fl_adderr+1;
        lastdate_zn:=IBQuery3.FieldByName('data_l').Value;
        kol:=kol+1;
        if (kol_to>0) and (kol>kol_to) then kol:=kol_to;
        
        if date_zn<>0 then
        begin
           daynorm:=daynorm+DaysBetween(date_zn,IBQuery3.FieldByName('data_l').Value)
        end;
//      if (IBQuery3.FieldByName('data_l').Value<date_zn) or (date_zn=0) then
         date_zn:=IBQuery3.FieldByName('data_l').Value;
      end;
    end;

    if (IBQuery3.FieldByName('vid').Value='vs') and (IBQuery3.FieldByName('vid_zn').Value<>6) then
    begin
       if kol>0 then
       begin
          kol:=kol-1;
          date_vs:=IBQuery3.FieldByName('data_l').Value;
       end;
//       if (IBQuery3.FieldByName('data_l').Value>date_vs) then
    end;

    if kol=0 then
    begin
        if date_stzn>0 then daynorm:=DaysBetween(date_stzn,date_vs)
          else
             if DaysBetween(date_zn,date_vs)>0 then daynorm:=daynorm+DaysBetween(date_zn,date_vs);

       date_vs:=0;
       date_zn:=0;
       date_stzn:=0;
    end;



//    lastvid:=IBQuery3.FieldByName('vid').Value;

    IBQuery3.Next;
  end;




//  and (IBQuery3.FieldByName('vid').Value='zn')

  IBQuery5.Close;
  IBQuery5.SQL.Text:='select first 1 h_voda.*,(select count(*) kol from lich where lich.schet=h_voda.schet and data_zn is null) lichkol from h_voda where schet=:sch and yearmon=:ym order by kl desc';
  IBQuery5.ParamByName('sch').Value:=trim(DS.FieldByName('schet').value);
  IBQuery5.ParamByName('ym').Value:=MainForm.period;
  IBQuery5.Open;

  if IBQuery5.FieldByName('lichkol').AsInteger<IBQuery5.FieldByName('lich_to').AsInteger then
  begin
//           DS.Edit;
//           DS.FieldByName('ZN_LICH').Value:=IBQuery5.FieldByName('lich_to').Value-IBQuery5.FieldByName('lichkol').Value;
//           DS.Post;
           Label11.Visible:=true;
           kol:=IBQuery5.FieldByName('lich_to').AsInteger-IBQuery5.FieldByName('lichkol').AsInteger;
           date_zn:=lastdate_zn;
  end
  else Label11.Visible:=false;



  if (kol>0)  then
  begin
//    StartOfTheMonth(date_vs)
    if date_stzn>0 then daynorm:=DaysBetween(date_stzn,EndOfTheMonth(date_zn))
    else
      daynorm:=daynorm+DaysBetween(date_zn,EndOfTheMonth(date_zn));

//    if DS.FieldByName('zn_lich').Value<1 then
//    begin
//           DS.Edit;
//           DS.FieldByName('zn_lich').Value:=1;
//           DS.Post;
//    end;
     

    date_stzn:=0;
    date_zn:=0;
  end;


  if daynorm>0 then
  begin


           DS.Edit;
           DS.FieldByName('PERE_DAY').Value:=daynorm;
   //        if IBQuery5.FieldByName('lichkol').Value=IBQuery5.FieldByName('lich_to').Value then
         //     DS.FieldByName('wid').Value:=41
        //   else
              DS.FieldByName('wid').Value:=43;

              kub12:=CubAvg12(trim(DS.FieldByName('schet').value));

              if kub12>0 then
              begin
                kubavgday:=daynorm*(kub12);
                kubavg:=SimpleRoundTo(kubavgday,-3);
                DS.FieldByName('R_NACH').Value:='Середнє споживання: дні повірки('+inttostr(daynorm)+') * середнє спожив. в день за рік('+CurrToStr(kub12)+')';
              end
              else
              begin
                kubnorm:=iif(DS.FieldByName('KOLI_P').AsInteger<>0,DS.FieldByName('KOLI_P').AsInteger,1)*DS.FieldByName('NORMA').Value;
                raschday:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
                kubavgday:=(kubnorm/raschday);
                kubavg:=SimpleRoundTo(daynorm*kubavgday,-3);
                DS.FieldByName('R_NACH').Value:='Споживання по нормі: дні повірки('+inttostr(daynorm)+') * спожив. в день по нормі('+CurrToStr(kubavgday)+')';
              end;

              DS.FieldByName('NOR_RAZN').Value:=kubavg;
              DS.FieldByName('NORM_BLICH').Value:=0;
              DS.Post;


  end
  else
  begin

      if (IBQuery3.RecordCount>0) and (DS.FieldByName('lich_to').AsInteger>0) then newlich:=1;



           DS.Edit;
             if newlich=1 then
             begin
               DS.FieldByName('WID').Value:=43;
               DS.FieldByName('NOR_RAZN').Value:=0;
               DS.FieldByName('NORM_BLICH').Value:=0;
               DS.FieldByName('NOR_RAZN').Value:=0;
               DS.FieldByName('KUB_ALL').Value:=0;
               DS.FieldByName('KUB_NOBALANS').Value:=0;
               DS.FieldByName('R_NACH').Value:='';
             end;



           DS.FieldByName('PERE_DAY').Value:=0;

        //   DS.FieldByName('NOR_RAZN').Value:=0;
        //   DS.FieldByName('WID').Value:=41;
           DS.Post;

  end;

  kub_all(DS);


  //MainForm.IBTransaction1.CommitRetaining;

end;

function TForm2.CubAvg12(sch:string):currency;
var kub12,kubavg,kubavg12day:currency;
    kolmes,lastmes,firstmes,raschday:integer;
begin

           IBQuery4.Close;
           IBQuery4.ParamByName('sch').Value:=sch;
           IBQuery4.ParamByName('ym').Value:=MainForm.period;
           IBQuery4.Open;
           kub12:=0;
           kolmes:=0;
           kubavg12day:=0;

           if IBQuery4.RecordCount>0 then
           begin
             IBQuery4.Last;
             firstmes:=IBQuery4.FieldByName('yearmon').Value;
             IBQuery4.First;
             lastmes:=IBQuery4.FieldByName('yearmon').Value;
           end;


           while not IBQuery4.eof do
           begin
             kub12:=kub12+IBQuery4.FieldByName('kub').Value;
             kolmes:=kolmes+1;
           IBQuery4.Next;
           end;

           if (kub12>0) and (kolmes>0) then
           begin
             raschday:=DaysBetween(YearMon2Date(firstmes),EndOfTheMonth(YearMon2Date(lastmes)));
             kubavg12day:=SimpleRoundTo(kub12/raschday,-3);
           end;

           Result:=kubavg12day;

//           if (kub12>0) then
//           begin
//             raschday:=DaysBetween(YearMon2Date(firstmes),EndOfTheMonth(YearMon2Date(lastmes)));
////             kubavg:=;
//             kubavgday:=daynorm*(kub12/raschday);
//             kubavg:=SimpleRoundTo(kubavgday,-3);
//             DS.Edit;
//             DS.FieldByName('NOR_RAZN').Value:=kubavg;
//             DS.Post;
//           end
//           else
//           begin
//             kub12:=DS.FieldByName('KOLI_P').Value*DS.FieldByName('NORMA').Value;
//             raschday:=DaysBetween(YearMon2Date(MainForm.period),EndOfTheMonth(YearMon2Date(MainForm.period)));
//             kubavgday:=daynorm*(kub12/raschday);
//             kubavg:=SimpleRoundTo(kubavgday,-3);
//             DS.Edit;
//             DS.FieldByName('NOR_RAZN').Value:=kubavg;
//             DS.Post;
//           end;

end;

procedure TForm2.cxButton10Click(Sender: TObject);
begin
    IBQuery5.close;
    IBQuery5.SQL.Text:='execute procedure calc_pok :schet';
    IBQuery5.ParamByName('schet').Value:=MainForm.DSet.FieldByName('SCHET').Value;
    IBQuery5.ExecSQL;
    IBQuery5.close;
    MainForm.DSet.close;
    MainForm.DSet.open;

end;

procedure TForm2.cxButton11Click(Sender: TObject);
begin
if cxLookupComboBox1.EditValue=null then
begin
   ShowMessage('Виберіть вид нарахування!');
   exit;
end;

if Length(trim(cxMemo1.Text))=0 then
begin
   ShowMessage('Введіть причину зміни!');
   exit;
end;

    MainForm.DSet.Edit;
    MainForm.DSet.FieldByName('WID').Value:=cxLookupComboBox1.EditValue;
    MainForm.DSet.Post;

    MainForm.why_pok.Append;
    MainForm.why_pok.Edit;
    MainForm.why_pokWID.Value:=cxLookupComboBox1.EditValue;
    MainForm.why_pokNOTE.Value:=cxMemo1.Text;
    MainForm.why_pokSCHET.Value:=MainForm.DSet.FieldByName('SCHET').Value;
    MainForm.why_pok.Post;

    MainForm.IBTransaction1.CommitRetaining;    

    MainForm.why_pok.Close;
    MainForm.why_pok.Open;




    cxLookupComboBox1.EditValue:=null;
    cxMemo1.Clear;
    Form2.calcpok2(MainForm.DSet,1);

 // if cxCalcEdit6.EditValue<>0 then
    Form2.calclich(MainForm.DSet);

  MainForm.IBTransaction1.CommitRetaining;

end;

procedure TForm2.cxButton1Click(Sender: TObject);
begin
if MainForm.lich.RecordCount>=2 then
begin
    ShowMessage('Можливо додати максимум два лічильники');
    exit;
end;

if MainForm.lich.RecordCount=MainForm.DSet.FieldByName('LICH_TO').AsInteger then
  if application.MessageBox('Ви дійсно бажаєте додати нову точку обліку?','Підтвердження',MB_YESNO)=IDNO then
    exit;

if MainForm.lichzn.RecordCount<>0 then
begin
if MainForm.lich.Lookup('schet;n_lich',VarArrayOf([MainForm.lichznSCHET.Value,MainForm.lichznN_LICH.Value]),'schet')<>null then
begin
    ShowMessage('Лічильник з номером '+MainForm.lichznN_LICH.Value+' вже встановлено');
    exit;
end;

FormAddkart.cxCheckBox1.Visible:=true;
FormAddkart.cxlabel26.Visible:=true;

FormAddkart.addznlich:=true;
FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.Show;
FormAddkart.cxDateEdit2.Visible:=true;
//FormAddkart.cxLabel33.Visible:=false;
FormAddkart.cxTextEdit2.Text:=MainForm.lichznTIP.Value;
FormAddkart.cxTextEdit3.Text:=MainForm.lichznN_LICH.Value;
FormAddkart.cxDateEdit1.EditValue:=MainForm.lichznDATA_VIG.Value;
FormAddkart.cxTextEdit4.Text:=MainForm.lichznNOTE.Value;

    if FormAddkart.IBQuery1.RecordCount<>0 then
    begin
      FormAddkart.cxDateEdit7.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
      FormAddkart.cxCalcEdit5.EditValue:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;
    end;
end;
end;

procedure TForm2.cxButton2Click(Sender: TObject);
begin
if MainForm.lich.RecordCount=0 then
begin
  ShowMessage('Немає лічильників!');
  exit;
end;

FormAddkart.cxCheckBox1.Visible:=false;
FormAddkart.cxlabel26.Visible:=false;


FormAddkart.addznlich:=false;
FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.Show;
FormAddkart.cxTextEdit2.Text:=MainForm.lichTIP.Value;
FormAddkart.cxTextEdit3.Text:=MainForm.lichN_LICH.Value;
FormAddkart.cxDateEdit1.EditValue:=MainForm.lichDATA_VIG.Value;
FormAddkart.cxDateEdit2.Visible:=false;
//FormAddkart.cxLabel33.Visible:=true;
//FormAddkart.cxLabel33.Caption:=DateToStr(MainForm.lichDATA_VIP.Value);
FormAddkart.cxDateEdit9.EditValue:=MainForm.lichDATA_STPOV.Value;
FormAddkart.cxDateEdit3.EditValue:=MainForm.lichDATA_POV.Value;

end;

procedure TForm2.cxButton3Click(Sender: TObject);
begin
if MainForm.lich.RecordCount>=2 then
begin
    ShowMessage('Можливо додати максимум два лічильники');
    exit;
end;

if MainForm.lich.RecordCount=MainForm.DSet.FieldByName('LICH_TO').AsInteger then
  if application.MessageBox('Ви дійсно бажаєте додати нову точку обліку?','Підтвердження',MB_YESNO)=IDNO then
    exit;



FormAddkart.addznlich:=true;

FormAddkart.cxCheckBox1.Visible:=true;
FormAddkart.cxlabel26.Visible:=true;

FormAddkart.cxTabSheet1.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet1;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.cxDateEdit2.Visible:=true;
//FormAddkart.cxLabel33.Visible:=false;

FormAddkart.Show;
if FormAddkart.IBQuery1.RecordCount<>0 then
begin
  FormAddkart.cxDateEdit7.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
  FormAddkart.cxCalcEdit5.Text:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;
end;
end;

procedure TForm2.cxButton4Click(Sender: TObject);
begin
if MainForm.lich.RecordCount=0 then
begin
  ShowMessage('Немає лічильників!');
  exit;
end;

FormDelkart.cxTabSheet1.TabVisible:=true;
FormDelkart.cxTabSheet1.Show;
FormDelkart.cxTabSheet2.TabVisible:=false;
FormDelkart.cxTabSheet3.TabVisible:=false;
FormDelkart.cxTextEdit1.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormDelkart.cxLabel17.Caption:=MainForm.DSet.FieldByName('FIO').Value;

FormDelkart.Show;





FormDelkart.cxTextEdit2.Text:=MainForm.lichTIP.Value;
FormDelkart.cxTextEdit3.Text:=MainForm.lichN_LICH.Value;
FormDelkart.cxDateEdit2.EditValue:=MainForm.lichDATA_VIP.Value;

end;

procedure TForm2.cxButton5Click(Sender: TObject);
begin
Form2.calcpok2(MainForm.DSet,1);
Form2.calclich(MainForm.DSet);
ShowMessage('Розрахунок завершено!');


end;

procedure TForm2.cxButton6Click(Sender: TObject);
begin

FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=true;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet2;
FormAddkart.cxTabSheet3.TabVisible:=false;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxTextEdit5.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel16.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.Show;
end;

procedure TForm2.cxButton7Click(Sender: TObject);
begin
FormDelkart.cxTabSheet1.TabVisible:=false;
FormDelkart.cxTabSheet2.TabVisible:=true;
FormDelkart.cxTabSheet2.Show;
//FormAddkart.cxTabSheet2.ShowHint:=true;
FormDelkart.cxTabSheet3.TabVisible:=false;
FormDelkart.cxTextEdit5.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormDelkart.cxLabel16.Caption:=MainForm.DSet.FieldByName('FIO').Value;

FormDelkart.Show;

FormDelkart.cxTextEdit6.Text:=MainForm.plombsPL.Value;
FormDelkart.cxTextEdit7.Text:=MainForm.plombsN_PLOMB.Value;
FormDelkart.cxDateEdit4.EditValue:=MainForm.plombsDATE_VS.Value;

end;

procedure TForm2.cxButton8Click(Sender: TObject);
begin

   if MainForm.DSet.FieldByName('WID').Value=45 then
   begin
     ShowMessage('Лічильник не повірений! Введення показників закрито');
     exit;
   end;

   if MainForm.DSet.FieldByName('WID').Value=42 then
   begin
     ShowMessage('Лічильник не встановлений! Введення показників закрито');
     exit;
   end;

   if MainForm.DSet.FieldByName('WID').Value>=46 then
   begin
     ShowMessage('При цьому виді нарахувань введення показників не пердбачувано! Введення показників закрито');
     exit;
   end;


FormAddkart.cxTabSheet1.TabVisible:=false;
FormAddkart.cxTabSheet2.TabVisible:=false;
FormAddkart.cxTabSheet3.TabVisible:=true;
FormAddkart.cxTabSheet4.TabVisible:=false;
FormAddkart.cxTabSheet5.TabVisible:=false;
FormAddkart.cxPageControl1.ActivePage:=FormAddkart.cxTabSheet3;
FormAddkart.cxTextEdit9.Text:=MainForm.DSet.FieldByName('SCHET').Value;
FormAddkart.cxLabel15.Caption:=MainForm.DSet.FieldByName('FIO').Value;
FormAddkart.cxCalcEdit6.EditValue:=MainForm.DSet.FieldByName('NOR_RAZN').Value;

  if (FormAddkart.cxTabSheet3.Visible) and (MainForm.DSet.FieldByName('LICH_TO').AsInteger=0) then
  begin
    ShowMessage('Ви не можете додати показник, так як немає точки обліку!!!');
    exit;
  end;

FormAddkart.Show;

if FormAddkart.IBQuery1.RecordCount<>0 then
begin
  FormAddkart.cxDateEdit5.EditValue:=FormAddkart.IBQuery1.FieldByName('date_pok').Value;
  if FormAddkart.IBQuery1.FieldByName('pokazn').IsNull then
    FormAddkart.cxCalcEdit2.Text:='0'
  else
    FormAddkart.cxCalcEdit2.Text:=FormAddkart.IBQuery1.FieldByName('pokazn').Value;

end;



end;

procedure TForm2.cxButton9Click(Sender: TObject);
begin
  if (MainForm.pokaznYEARMON.Value<MainForm.period) then
  begin
    ShowMessage('Неможливо видалити показник попереднього періоду');
    exit;
  end;


   if (MainForm.pokaznID_LICH.Value<>0) then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from pokazn where yearmon=:per and schet=:sch and id>=:id order by date_pok';
  IBQuery1.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
  IBQuery1.ParamByName('per').Value:=MainForm.period;
  IBQuery1.ParamByName('id').Value:=MainForm.pokaznID.Value;
  IBQuery1.Open;
  IBQuery1.last;
    if IBQuery1.RecordCount>1 then
    begin
      ShowMessage('Неможливо видалити показник, бо існують показники після показника встановлення ');
      exit;
    end;
  end;

  if (MainForm.pokaznID_LICH.Value<>0) then
  begin
  IBQuery1.Close;
  IBQuery1.SQL.Text:='select * from lich where schet=:sch and id=:id and DATA_ZN is null';
  IBQuery1.ParamByName('sch').Value:=MainForm.DSet.FieldByName('SCHET').Value;
  IBQuery1.ParamByName('id').Value:=MainForm.pokaznID_LICH.Value;
  IBQuery1.Open;

    if IBQuery1.RecordCount<>0 then
    begin
      ShowMessage('Видаліть спочатку лічильник цього показника - тип '+IBQuery1.FieldByName('tip').Value+' №'+IBQuery1.FieldByName('n_lich').Value+' id'+IntToStr(IBQuery1.FieldByName('id').Value));
      exit;
    end;
  end;


  if application.MessageBox('Ви дійсно бажаєте видалити показник?','Підтвердження',MB_YESNO)=IDYES then
  begin
  if (MainForm.pokazn.RecordCount<>0) then
     MainForm.pokazn.Delete;
     Form2.calcpok2(MainForm.DSet,1);
     Form2.calclich(MainForm.DSet);
  end;
end;

procedure TForm2.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
       if (AViewInfo.GridRecord.Values[cxGridDBTableView2ZN.Index] = 'помилкове введення') then
    ACanvas.Brush.Color := clRed;
end;

procedure TForm2.Find(sch:string);
begin


    MainForm.lich.SelectSQL.Text:=MainForm.lchSQL+' and schet=:sch order by data_vip,id desc';
    MainForm.lich.ParamByName('sch').Value:=sch;
    MainForm.lich.Close;
    MainForm.lich.open;

    MainForm.lichzn.SelectSQL.Text:=MainForm.lchznSQL+' and schet=:sch order by data_zn,id desc';
    MainForm.lichzn.ParamByName('sch').Value:=sch;
    MainForm.lichzn.Close;
    MainForm.lichzn.open;

    MainForm.plombs.SelectSQL.Text:=MainForm.plSQL+' and schet=:sch order by date_vs desc';
    MainForm.plombs.ParamByName('sch').Value:=sch;
    MainForm.plombs.Close;
    MainForm.plombs.open;

    MainForm.plombszn.SelectSQL.Text:=MainForm.plznSQL+' and schet=:sch order by date_zn desc';
    MainForm.plombszn.ParamByName('sch').Value:=sch;
    MainForm.plombszn.Close;
    MainForm.plombszn.open;

    MainForm.pokazn.SelectSQL.Text:=MainForm.pokSQL+' where pokazn.schet=:sch order by id desc';
    MainForm.pokazn.ParamByName('sch').Value:=sch;
    MainForm.pokazn.Close;
    MainForm.pokazn.open;

    MainForm.why_pok.SelectSQL.Text:=MainForm.why_pokSQL+' where why_pok.schet=:sch order by id desc';
    MainForm.why_pok.ParamByName('sch').Value:=sch;
    MainForm.why_pok.Close;
    MainForm.why_pok.open;





end;



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if MainForm.lich.State in [dsInsert,dsEdit] then MainForm.lich.Post;
     if MainForm.hvd.State in [dsInsert,dsEdit] then MainForm.hvd.Post;
     if MainForm.org.State in [dsInsert,dsEdit] then MainForm.org.Post;



   MainForm.IBTransaction1.CommitRetaining;
      MainForm.Enabled:=true;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
    MainForm.Enabled:=false;
    LichPost:=false;
    cxPageControl1.ActivePage:=cxTabSheet1;
    cxPageControl2.ActivePage:=cxTabSheet4;
    cxPageControl3.ActivePage:=cxTabSheet5;

    if MainForm.DSet.FieldByName('LICH_TO').AsInteger>MainForm.lich.RecordCount then
       label11.Visible:=true
    else label11.Visible:=false;
    



end;

end.
