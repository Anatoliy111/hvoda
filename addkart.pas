unit addkart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxPC,
  cxControls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxGraphics, DB, IBCustomDataSet, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox,DateUtils, IBQuery, cxCalc, cxCheckBox;

type
  TFormAddkart = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxLabel12: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxLabel21: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    IBVIDZN: TIBDataSet;
    IBVIDZNID: TIntegerField;
    IBVIDZNVID_OB: TIntegerField;
    VIDZNSource: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel23: TcxLabel;
    IBQuery1: TIBQuery;
    cxCalcEdit2: TcxCalcEdit;
    cxCalcEdit3: TcxCalcEdit;
    IBVIDZNVID_ZN: TIBStringField;
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit4: TcxCalcEdit;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    cxDateEdit7: TcxDateEdit;
    cxLabel25: TcxLabel;
    cxCalcEdit5: TcxCalcEdit;
    IBVIDZNVID_SP: TIBStringField;
    IBQuery2: TIBQuery;
    cxCheckBox1: TcxCheckBox;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxDateEdit9: TcxDateEdit;
    cxTabSheet4: TcxTabSheet;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel30: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    ULQuery: TIBQuery;
    ULQueryUL: TIBStringField;
    UlSource: TDataSource;
    cxTextEdit11: TcxTextEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxTextEdit12: TcxTextEdit;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    cxCalcEdit6: TcxCalcEdit;
    cxLabel33: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDateEdit2PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxCalcEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxDateEdit9Exit(Sender: TObject);
  private
    { Private declarations }
  public
    addznlich,reglich:boolean;
    { Public declarations }
    function AddPokaz(sch:string;data:TDateTime;vid:integer;pok:double):boolean;
    procedure calcpok(sch:string);
    procedure calcpok2(DS:TIBDataSet);

  end;

var
  FormAddkart: TFormAddkart;
  spvidSQL:string;



implementation

uses delkart, main, mytools, kart;

{$R *.dfm}

function TFormAddkart.AddPokaz(sch:string;data:TDateTime;vid:integer;pok:double):boolean;
begin
   result:=false;
//  IBQuery1.Close;
//  IBQuery1.SQL.Text:='select * pokaz where yearmon=:per and schet=:sch and date_pok=:data';
  FormAddkart.IBQuery1.close;
  FormAddkart.IBQuery1.Open;

  MainForm.pokazn.First;
//  if MainForm.pokazn.Lookup('date_pok',data,'date_pok')=null then
  if data<=FormAddkart.IBQuery1.FieldByName('date_pok').Value then
  begin
    ShowMessage('Дата нового показника не може бути меньшою або рівно дати останнього показника');
    exit;
  end;

  MainForm.pokazn.Append;
  MainForm.pokazn.Edit;
  MainForm.pokaznYEARMON.Value:=Mainform.period;
  MainForm.pokaznSCHET.Value:=sch;
  MainForm.pokaznPOKAZN.Value:=pok;
  MainForm.pokaznDATE_POK.Value:=data;
  MainForm.pokaznVID_POK.Value:=vid;
  MainForm.pokazn.Post;



  result:=true;
end;

procedure TFormAddkart.calcpok(sch:string);
var kol,lastpokazn,endpokazn,vid:integer;
    date:tdate;

begin

  if trim(MainForm.hvdSCHET.Value)=trim(sch) then
  begin
     calcpok2(MainForm.hvd);
  end
  else
  begin                                     
    IBQuery3.close;
    IBQuery3.SQL.Text:='execute procedure calc_pok :schet';
    IBQuery3.ParamByName('schet').Value:=sch;
    IBQuery3.ExecSQL;
  end;



end;

procedure TFormAddkart.calcpok2(DS:TIBDataSet);
var kol,kol2,lastpokazn,endpokazn,nextkub,vid:integer;
    date:tdate;

begin


    IBQuery2.Close;
    IBQuery2.SQL.Text:='select first 1 * from pokazn where yearmon<:per and schet=:sch order by date_pok desc, id desc';
    IBQuery2.ParamByName('per').Value:=MainForm.period;
    IBQuery2.ParamByName('sch').Value:=DS.FieldByName('schet').value;
    IBQuery2.Open;

    lastpokazn:=0;
    if IBQuery2.RecordCount<>0 then
    begin
       if IBQuery2.FieldByName('POKAZN').IsNull then
          lastpokazn:=0
       else
          lastpokazn:=IBQuery2.FieldByName('POKAZN').Value;

          date:=IBQuery2.FieldByName('date_pok').Value;
          vid:=IBQuery2.FieldByName('VID_POK').Value;
    end;



    IBQuery3.Close;
    IBQuery3.SQL.Text:='select * from pokazn where yearmon=:per and schet=:sch order by date_pok,id';
//  IBQuery2.SQL.Text:='select * from pokazn where schet=:sch order by date_pok';
    IBQuery3.ParamByName('sch').Value:=DS.FieldByName('schet').value;
    IBQuery3.ParamByName('per').Value:=MainForm.period;
    IBQuery3.Open;

    kol:=0;
    kol2:=0;
     while not IBQuery3.eof do
     begin
//  if (IBQuery2.FieldByName('VID_POK').Value=17) or (lastpokazn=0) then

     if (IBQuery3.FieldByName('VID_POK').Value<>17) and (IBQuery3.FieldByName('VID_POK').Value<>26) then
         kol:=kol+IBQuery3.FieldByName('POKAZN').Value-lastpokazn;

     lastpokazn:=IBQuery3.FieldByName('POKAZN').Value;
        date:=IBQuery3.FieldByName('date_pok').Value;
        vid:=IBQuery3.FieldByName('VID_POK').Value;
     IBQuery3.Next;
     end;

 //   IBQuery2.Close;
 //   IBQuery2.SQL.Text:='select first 1 * from pokazn where yearmon>:per and schet=:sch order by date_pok desc, id desc';
 //   IBQuery2.ParamByName('per').Value:=MainForm.period;
 //   IBQuery2.ParamByName('sch').Value:=DS.FieldByName('schet').value;
 //   IBQuery2.Open;





    DS.Edit;
 //       if IBQuery2.RecordCount<>0 then
 //          if not IBQuery2.FieldByName('POKAZN').IsNull then
 //          begin
 //             DS.FieldByName('SCH_RAZN2').Value:=IBQuery2.FieldByName('POKAZN').Value-lastpokazn;
 //             date:=IBQuery2.FieldByName('date_pok').Value;
 //             vid:=IBQuery2.FieldByName('VID_POK').Value;
 //             lastpokazn:=IBQuery2.FieldByName('POKAZN').Value;
 //          end
 //          else
  //            DS.FieldByName('SCH_RAZN2').Value:=0
  //      else
  //         if DS.FieldByName('SCH_RAZN2').Value<>0 then
   //           DS.FieldByName('SCH_RAZN2').Value:=0;

//            if IBQuery3.RecordCount>0 then
//            begin
//               if DS.FieldByName('PREV_NORM').Value>0 then
//               begin
//                  DS.FieldByName('DEL_NORM').Value:=DS.FieldByName('PREV_NORM').Value*-1;
//                  DS.FieldByName('PREV_NORM').Value:=0;
//               end;
//            end
//            else
//               if DS.FieldByName('DEL_NORM').Value<0 then
//                  begin
//                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
//                  DS.FieldByName('DEL_NORM').Value:=0;
//                  end;

       DS.FieldByName('VID_POK').Value:=vid;
       DS.FieldByName('DATE_POK').Value:=date;
       DS.FieldByName('SCH_CUR').Value:=lastpokazn;

//       if (DS.FieldByName('WID').Value>=46) then
//       begin
//         if (DS.FieldByName('WID').Value>46) then
//             DS.FieldByName('NOR_RAZN').Value:=0;
//         DS.FieldByName('SCH_RAZN').Value:=0;
//       end
//       else
//       begin
//         if (IBQuery3.RecordCount<>0) then
//         begin
//               if DS.FieldByName('PREV_NORM').Value>0 then
//               begin
//                  DS.FieldByName('DEL_NORM').Value:=DS.FieldByName('PREV_NORM').Value*-1;
//                  DS.FieldByName('PREV_NORM').Value:=0;
//               end;
//
//
//            if (DS.FieldByName('WID').Value=45) or (DS.FieldByName('WID').Value=42) then
//            begin
//                DS.FieldByName('SCH_RAZN').Value:=0;
//                DS.FieldByName('NOR_RAZN').Value:=DS.FieldByName('KOLI_P').Value*DS.FieldByName('NORMA').Value;
//            end
//            else
//            begin
//                  DS.FieldByName('SCH_RAZN').Value:=kol;
//                if (DS.FieldByName('WID').Value<>43) then
//                begin
//                  DS.FieldByName('NOR_RAZN').Value:=0;
//                  DS.FieldByName('WID').Value:=41;
//                end;
//            end;
//         end
//         else
//         begin
//            DS.FieldByName('SCH_RAZN').Value:=0;
//               if DS.FieldByName('DEL_NORM').Value<0 then
//                  begin
//                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
//                  DS.FieldByName('DEL_NORM').Value:=0;
//                  end;
//
//
//
//            if (DS.FieldByName('WID').Value<>43) then
//                DS.FieldByName('NOR_RAZN').Value:=DS.FieldByName('KOLI_P').Value*DS.FieldByName('NORMA').Value;
//
//
//
//              if (DS.FieldByName('LICH_TO').Value=0) then
//                   DS.FieldByName('WID').Value:=42
//
//              else if (DS.FieldByName('WID').Value=41) then
//                   DS.FieldByName('WID').Value:=44;
//         end;
//
//       end;

       //46,47,48
       if (DS.FieldByName('WID').Value>=46) then
       begin
       if (DS.FieldByName('WID').Value>46) then
            DS.FieldByName('NOR_RAZN').Value:=0;
         DS.FieldByName('SCH_RAZN').Value:=0;

         if DS.FieldByName('DEL_NORM').Value<0 then
                  begin
                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                  DS.FieldByName('DEL_NORM').Value:=0;
                  end;
       end
       else
       begin //41,42,43,44,45
         if (DS.FieldByName('LICH_TO').Value=0) then
                  DS.FieldByName('WID').Value:=42;

         if (DS.FieldByName('LICH_YEARMON').Value<MainForm.period) and (DS.FieldByName('WID').Value<>43) and (DS.FieldByName('WID').Value<>42) then
                  DS.FieldByName('WID').Value:=45;

         //45,42
         if (DS.FieldByName('WID').Value=45) or (DS.FieldByName('WID').Value=42) then
         begin
                DS.FieldByName('SCH_RAZN').Value:=0;
                DS.FieldByName('NOR_RAZN').Value:=DS.FieldByName('KOLI_P').Value*DS.FieldByName('NORMA').Value;

                if DS.FieldByName('DEL_NORM').Value<0 then
                    begin
                    DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                    DS.FieldByName('DEL_NORM').Value:=0;
                    end;

         end
         else if (IBQuery3.RecordCount<>0) then  //41,43,44
         begin
               if DS.FieldByName('PREV_NORM').Value>0 then
               begin
                  DS.FieldByName('DEL_NORM').Value:=DS.FieldByName('PREV_NORM').Value*-1;
                  DS.FieldByName('PREV_NORM').Value:=0;
               end;


                  DS.FieldByName('SCH_RAZN').Value:=kol;
                if (DS.FieldByName('WID').Value<>43) then
                begin
                  DS.FieldByName('NOR_RAZN').Value:=0;
                  DS.FieldByName('WID').Value:=41;
                end;

         end
         else
         begin      //41,43,44
            DS.FieldByName('SCH_RAZN').Value:=0;
               if DS.FieldByName('DEL_NORM').Value<0 then
                  begin
                  DS.FieldByName('PREV_NORM').Value:=DS.FieldByName('DEL_NORM').Value*-1;
                  DS.FieldByName('DEL_NORM').Value:=0;
                  end;



            if (DS.FieldByName('WID').Value<>43) then
                DS.FieldByName('NOR_RAZN').Value:=DS.FieldByName('KOLI_P').Value*DS.FieldByName('NORMA').Value;

            if (DS.FieldByName('WID').Value=41) then
                   DS.FieldByName('WID').Value:=44;
         end;

       end;



       DS.Post;
       MainForm.IBTransaction1.CommitRetaining;

end;



procedure TFormAddkart.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormAddkart.cxButton3Click(Sender: TObject);
var dd25:TDate;
    strdd:string;
begin

if cxTabSheet1.TabVisible then
begin
  if (cxTextEdit2.Text<>'')
   and (cxTextEdit3.Text<>'')
   and (cxDateEdit1.EditValue<>null)
   and (cxDateEdit9.EditValue<>null)
  then
  begin

  if (addznlich=true) then
  begin
     if (cxDateEdit2.EditValue=null) then
     begin
      ShowMessage('Заповніть всі поля, виділені зеленим кольором');
      exit;
     end;

      if Date2YearMon(cxDateEdit2.EditValue)< MainForm.period  then
      begin
         ShowMessage('Місяць встановлення лічильника не може бути меньше ніж обліковий період');
         exit;
      end;

      if Date2YearMon(cxDateEdit2.EditValue)> MainForm.period  then
      begin
         ShowMessage('Місяць встановлення лічильника не може бути більше ніж обліковий період');
         exit;
      end;

  end;



//  if (cxCheckBox1.Checked) and (cxCalcEdit4.EditValue<>0) then
//  begin
//    ShowMessage('Введіть новий показник');
//    exit;
//  end;




  if (cxCheckBox1.Checked) and (cxCalcEdit4.EditValue=null) then
  begin
    ShowMessage('Введіть новий показник');
    exit;
  end;

  if FormAddkart.addznlich=true then
  begin

  IBQuery4.Close;
//  IBQuery4.SQL.Text:='select first 1 * from lich where schet=:sch order by id desc';
  IBQuery4.SQL.Text:='select first 1 * from lich where schet=:sch and vid_zn<>6 and vid_zn is not null order by data_zn desc';
  IBQuery4.ParamByName('sch').Value:=cxTextEdit1.Text;
  IBQuery4.Open;


  if IBQuery4.RecordCount<>0 then
    if IBQuery4.FieldByName('DATA_ZN').Value>cxDateEdit2.EditValue then
    begin
      ShowMessage('Дата встановлення не може бути меньша ніж дата останнього знятого лічильника-'+DateToStr(IBQuery4.FieldByName('DATA_ZN').Value));
      exit;
    end;

  end;






   if cxCheckBox1.Checked then
  begin
  if not AddPokaz(trim(cxTextEdit1.Text),cxDateEdit2.EditValue,17,cxCalcEdit4.EditValue) then exit;

  end;

  if addznlich=true then
       MainForm.lich.Append;

  MainForm.lich.Edit;
  MainForm.lichSCHET.Value:=trim(cxTextEdit1.Text);
  MainForm.lichTIP.Value:=trim(cxTextEdit2.Text);
  MainForm.lichN_LICH.Value:=trim(cxTextEdit3.Text);
  MainForm.lichDATA_VIG.Value:=cxDateEdit1.EditValue;
  if addznlich=true then MainForm.lichDATA_VIP.Value:=cxDateEdit2.EditValue;
  MainForm.lichDATA_POV.Value:=cxDateEdit3.EditValue;
  MainForm.lichDATA_STPOV.Value:=cxDateEdit9.EditValue;
  MainForm.lichNOTE.Value:=cxTextEdit4.Text;
  MainForm.lich.Post;

  MainForm.hvd.Edit;

  if MainForm.lich.RecordCount>MainForm.hvdLICH_TO.Value then
    MainForm.hvdLICH_TO.Value:=MainForm.hvdLICH_TO.Value+1;

  MainForm.hvdWID.Value:=41;
  MainForm.hvd.Post;


//  IBQuery4.Close;
//  IBQuery4.SQL.Text:='select first 1 h_voda.*, (select count(*) kol from lich where lich.schet=h_voda.schet and lich.vid_zn is null) lichkol from h_voda where schet=:sch and yearmon=:ym order by kl desc';
//  IBQuery4.ParamByName('sch').Value:=cxTextEdit1.Text;
//  IBQuery4.ParamByName('ym').Value:=MainForm.period;
//  IBQuery4.Open;

//  if IBQuery4.FieldByName('lichkol').Value=IBQuery4.FieldByName('lich_to').Value then
//  begin
//      if MainForm.hvdSCHET.Value<>cxTextEdit1.Text then
 //     begin
//        MainForm.hvd.First;
//        MainForm.hvd.Locate('schet',cxTextEdit1.Text,[]);
//      end;
//      if MainForm.hvdSCHET.Value=cxTextEdit1.Text then
//      begin
//         if (MainForm.hvdWID.Value=3) then
//         begin
//           MainForm.hvd.Edit;
//           MainForm.hvdWID.Value:=1;
//           MainForm.hvd.Post;
//         end;
//      end;
//  end;



  MainForm.IBTransaction1.CommitRetaining;

  if cxCheckBox1.Checked then
  begin
 // if not AddPokaz(trim(cxTextEdit1.Text),cxDateEdit2.EditValue,17,cxCalcEdit4.EditValue) then exit;

  MainForm.pokazn.Edit;
  MainForm.pokaznID_LICH.Value:=MainForm.lichID.Value;
  MainForm.pokazn.Post;

  MainForm.pokazn.Close;
  MainForm.pokazn.Open;

  //FormAddkart.calcpok(trim(cxTextEdit1.Text));

  end;

  Form2.cxButton5.Click;

 // FormAddkart.calcpok2(MainForm.hvd);

 // Form2.calclich(MainForm.hvd);



//  MainForm.hvd.Edit;
//  MainForm.hvdSCH_CUR.Value:=cxCalcEdit4.EditValue;
 // MainForm.hvdSCH_OLD.Value:=cxCalcEdit4.EditValue;
//  MainForm.hvdSCH_RAZN.Value:=0;
//  MainForm.hvdDATE_POK.Value:=cxDateEdit2.EditValue;
//  MainForm.hvdVID_POK.Value:=17;
//  MainForm.hvd.Post;




  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

if cxTabSheet2.TabVisible then
begin
  if (cxLookupComboBox1.EditValue<>null)
   and (cxTextEdit7.Text<>'')
   and (cxDateEdit4.EditValue<>null)
  then
  begin
  MainForm.plombs.Append;
  MainForm.plombsSCHET.Value:=trim(cxTextEdit5.Text);
  MainForm.plombsVID_PL.Value:=cxLookupComboBox1.EditValue;
  MainForm.plombsN_PLOMB.Value:=trim(cxTextEdit7.Text);
  MainForm.plombsDATE_VS.Value:=cxDateEdit4.EditValue;
  MainForm.plombsNOTE.Value:=cxTextEdit8.Text;
  MainForm.plombs.Post;

  MainForm.plombs.Close;
  MainForm.plombs.Open;

  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

if cxTabSheet3.TabVisible then
begin



  if cxDateEdit6.EditValue<cxDateEdit5.EditValue then
  begin
    ShowMessage('Дата нового показника не може бути меньшою за дату останнього показника');
    exit;
  end;

  if StrToDate(cxDateEdit6.EditValue)>=IncMonth(YearMon2Date(MainForm.period),1) then
  begin
    ShowMessage('Дата показника не може бути більшою за обліковий період місяця');
    exit;
  end;

  if StrToDate(cxDateEdit6.EditValue)<YearMon2Date(MainForm.period) then
  begin
    ShowMessage('Дата показника не може бути меньшою за дату облікового періоду');
    exit;
  end;

  if cxCalcEdit1.EditValue<cxCalcEdit2.EditValue then
  begin
    ShowMessage('Новий показник не може бути меньшим за останній показник');
    exit;
  end;

  IBQuery4.Close;
  IBQuery4.SQL.Text:='select first 1 h_voda.*, (select count(*) col from LICH where lich.schet=h_voda.schet and lich.data_zn is null) lich_vs from h_voda where schet=:sch and yearmon=:ym order by kl desc';
  IBQuery4.ParamByName('sch').Value:=cxTextEdit9.Text;
  IBQuery4.ParamByName('ym').Value:=MainForm.period;
  IBQuery4.Open;

  if IBQuery4.FieldByName('lich_to').AsInteger=0 then
  begin
    ShowMessage('По цьому рахунку не встановлено точки обліку! Введення показників закрито!');
    exit;
  end;

  if IBQuery4.FieldByName('lich_to').AsInteger>IBQuery4.FieldByName('lich_vs').AsInteger then
  begin
    ShowMessage('По цьому рахунку є знятий лічильник і не встановлений новий! Введення показників закрито!');
    exit;
  end;

 // if cxCalcEdit1.EditValue<cxCalcEdit2.EditValue then
//  begin
 //   if application.MessageBox('Увага!!! Новий показник меньший за останній. Продовжити?','Підтвердження',MB_YESNO)=IDNO then
//    exit;
 // end;

  if cxCalcEdit1.EditValue-cxCalcEdit2.EditValue>150 then
  begin
    ShowMessage('Перевірте правильність введених даних');
    exit;
  end;


  if (cxTextEdit9.Text<>'')
   and (cxLookupComboBox2.EditValue<>null)
   and (cxDateEdit6.EditValue<>null)
   and (cxCalcEdit1.Value<>null)
  then
  begin

  if not AddPokaz(trim(cxTextEdit9.Text),cxDateEdit6.EditValue,cxLookupComboBox2.EditValue,cxCalcEdit1.Value) then exit;

  calcpok2(MainForm.hvd);

 // if cxCalcEdit6.EditValue<>0 then
    Form2.calclich(MainForm.hvd);





  MainForm.pokazn.Close;
  MainForm.pokazn.Open

  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

if cxTabSheet4.TabVisible then
begin
  if (cxLookupComboBox3.EditValue<>null)
   and (cxTextEdit6.Text<>'')
   and (cxTextEdit10.Text<>'')
   and (cxTextEdit11.Text<>'')
  then
  begin
  MainForm.org.Append;
  MainForm.orgSCHET.Value:=cxTextEdit6.Text;
  MainForm.orgYEARMON.Value:=main.MainForm.dataYEARMON.Value;
  MainForm.org.post;

  MainForm.plombs.Close;
  MainForm.plombs.Open;

  end
  else
  begin
    ShowMessage('Заповніть всі поля, виділені зеленим кольором');
    exit;
  end;
end;

  MainForm.IBTransaction1.CommitRetaining;
close;

end;

procedure TFormAddkart.cxCalcEdit1PropertiesEditValueChanged(Sender: TObject);
begin
cxCalcEdit3.EditValue:=cxCalcEdit1.EditValue-cxCalcEdit2.EditValue;
end;

procedure TFormAddkart.cxCheckBox1PropertiesChange(Sender: TObject);
begin
if cxCheckBox1.Checked then
begin
    FormAddkart.cxDateEdit7.Visible:=true;
  FormAddkart.cxCalcEdit5.Visible:=true;
  FormAddkart.cxCalcEdit4.Visible:=true;
  FormAddkart.cxLabel22.Visible:=true;
  FormAddkart.cxLabel24.Visible:=true;
  FormAddkart.cxLabel25.Visible:=true;
end
else
begin
  FormAddkart.cxDateEdit7.Visible:=false;
  FormAddkart.cxCalcEdit5.Visible:=false;
  FormAddkart.cxCalcEdit4.Visible:=false;
  FormAddkart.cxLabel22.Visible:=false;
  FormAddkart.cxLabel24.Visible:=false;
  FormAddkart.cxLabel25.Visible:=false;
end;
end;

procedure TFormAddkart.cxDateEdit2PropertiesChange(Sender: TObject);
begin

//if cxDateEdit2.EditValue<>null then
//   cxDateEdit3.EditValue:=IncYear(cxDateEdit2.EditValue,4)
//else cxDateEdit3.EditValue:=null;

end;

procedure TFormAddkart.cxDateEdit9Exit(Sender: TObject);
begin
if cxDateEdit9.EditValue<>null then
   cxDateEdit3.EditValue:=IncYear(cxDateEdit9.EditValue,4)
else cxDateEdit3.EditValue:=null;
end;

procedure TFormAddkart.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
 //Form2.Enabled:=true;
for i := 0 to ComponentCount - 1 do
begin
   if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text:='';
   if Components[i] is TcxdateEdit then
      (Components[i] as TcxdateEdit).EditValue:=null;
   if Components[i] is TcxCalcEdit then
      (Components[i] as TcxCalcEdit).EditValue:=null;
   if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).EditValue:=null;
end;



if addznlich=true then
begin
  form2.cxPageControl2.ActivePage:=form2.cxTabSheet4;
end;
addznlich:=false;


  if (not Form2.Enabled) and (not MainForm.Enabled) then
     Form2.Enabled:=true
  else
     MainForm.Enabled:=true;

end;



procedure TFormAddkart.FormCreate(Sender: TObject);
begin
spvidSQL:=IBVIDZN.SelectSQL.Text;
end;

procedure TFormAddkart.FormShow(Sender: TObject);
begin

  if not MainForm.Enabled then
     Form2.Enabled:=false
  else
     MainForm.Enabled:=false;

  IBVIDZN.Close;
  if cxTabSheet2.Visible then IBVIDZN.SelectSQL.Text:=spvidSQL+' where vid_sp=''pl''';
  if cxTabSheet3.Visible then IBVIDZN.SelectSQL.Text:=spvidSQL+' where vid_sp=''addpk'' and id<>17 and id<>20 and id<>21 and id<>26 and id<>37';
  IBVIDZN.Open;

  if cxTabSheet3.Visible then FormAddkart.cxDateEdit6.EditValue:=Date();

  if (FormAddkart.cxTabSheet3.Visible) and (MainForm.hvdLICH_TO.Value=0) then
  begin
    ShowMessage('Ви не можете додати показник, так як немає точки обліку!!!');
    exit;
  end;


  FormAddkart.IBQuery1.Close;
  FormAddkart.IBQuery1.ParamByName('sch').Value:=MainForm.hvdSCHET.Value;
  FormAddkart.IBQuery1.open;

  FormAddkart.cxCheckBox1.Checked:=false;
FormAddkart.cxCheckBox1PropertiesChange(FormAddkart.cxCheckBox1);


end;

end.
