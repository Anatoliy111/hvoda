unit mytools;

interface

uses Controls,SysUtils,dbgrids,Types,Forms,DB,
     Messages, Graphics,Classes,StdCtrls,
     TypInfo,Tlhelp32;

const DELTA_YEAR=10;
{$M+}
(* Have you seen the $M+ before???This tells delphi to publish RTTI info for
   enumerated types.  Basically allowing your enumerated types to act as
   strings with GetEnumName *)
type
  TVersionType=(vtCompanyName, vtFileDescription, vtFileVersion, vtInternalName,
                vtLegalCopyright,vtLegalTradeMark, vtOriginalFileName,
                vtProductName, vtProductVersion, vtComments);
{$M-}
  TrpVersionInfo = class(TComponent)
  private
    FVersionInfo : Array [0 .. ord(high(TVersionType))] of string;
  protected
    function GetCompanyName: string;
    function GetFileDescription: string;
    function GetFileVersion: string;
    function GetInternalName: string;
    function GetLegalCopyright: string;
    function GetLegalTradeMark: string;
    function GetOriginalFileName: string;
    function GetProductName: string;
    function GetProductVersion: string;
    function GetComments: string;
    function GetVersionInfo(VersionType: TVersionType): string; virtual;
    procedure SetVersionInfo; virtual;
  public
    constructor Create(AOwner: TComponent); override;
  published
(* Label1.Caption := VersionInfo1.FileVersion;  Simple as that.
   NOTE:  ALL the properties are READONLY so you can not view them with the
   Object Inspector *)
    property CompanyName: string read GetCompanyName;
    property FileDescription: string read GetFileDescription;
    property FileVersion: string read GetFileVersion;
    property InternalName: string read GetInternalName;
    property LegalCopyright: string read GetLegalCopyright;
    property LegalTradeMark: string read GetLegalTradeMark;
    property OriginalFileName: string read GetOriginalFileName;
    property ProductName: string read GetProductName;
    property ProductVersion: string read GetProductVersion;
    property Comments: string read GetComments;
  end;


function ckDate(const s:string;curr:TDate=0):string;
procedure SetRus;
procedure SetEng;
function str2int(s:string):integer;
function str2float(s:string):double;
function int2str(i:integer):string;
function LastDayMon(date:TDate): TDate;
function FirstDayMon(date:TDate): TDate;
function YearMon2Date(yearmon:integer): TDate;
function Date2YearMon(dt:TDate): integer;
function DaysPerMonth(Date: Integer): Integer;overload;
function DaysPerMonth(AYear, AMonth: Integer): Integer;overload;
function isSunday(dt,day:integer):Boolean;overload;
function isSunday(date:TDate):boolean;overload;
function numtostr(source:string):string;overload;
function numtostr(numb:double):string;overload;
function BoundCurrCell(grid:TDBGrid):TRect;
function dos2win(s:string):string;
function win2dos(s:string):string;
function strFromDelimiter(s:string;delimiter:char;num:integer=1):string;
function iif(f:boolean;val1,val2:variant):variant;
procedure StartWait;
procedure StopWait(cur:TCursor=crDefault);
function Date2Str(dt:TDate;fmt:String='yyyyMMdd'):string;
function DateTime2Str(dt:TDate;fmt:String='yyyymmdd'):string;
procedure ExportFile(dg:TDBGrid);overload;
procedure ExportFile(dt:TDataSet);overload;
function getVersionInfo(tag:string):string;
procedure setYearBox(box:TComboBox;curr:TDate=0);
function roundMoney(s:currency;cent:integer):currency;
function var2int(v:variant):integer;
function ExecAndWait(const FileName, Params: ShortString; const WinState: Word): boolean;
function GetRegistryValue(path,key:string): string;
function GetComputerNetName: string;
function _GetTempPath: String;
function _GetCurrentDirectory: String;
function _GetSystemDirectory: String;
function _GetWindowsDirectory: String;
function _GetTempDirectory: String;
procedure KillProgram(Classname : pchar; WindowTitle : pchar);
function KillTask(ExeFileName: string): integer;

Const
   ppIdle                  : Integer = -1;
   ppNormal                : Integer =  0;
   ppHigh                  : Integer =  1;
   ppRealTime              : Integer =  2;

Function SetProcessPriority( Priority : Integer ) : Integer;
Function GetProcessPriority : Integer;

implementation

uses DateUtils,Windows,Dialogs,activex,comobj,variants,math,Registry;



function dos2win(s:string):string;
var c:STRING;
    I:INTEGeR;
    l:byte;
    dd:char;
begin
 i:=1;
 c:='';
 while i< length(s)+1 do
 begin
   l:=ord(s[i]);
   inc(i);

   if (l>=128) and (l<=192)then l:=l+64 else
   if (l>=224) and (l<240) then l:=l+16 else
   if l=241 then l:=184 else
   if l=242 then l:=170 else
   if l=240 then l:=168 else
   if l=243 then l:=186 else
   if l=245 then l:=191;
   dd:=chr(l);
   c:=c+dd;
 end;
 Result:=c;
end;

function win2dos(s:string):string;
var c:STRING;
    I:INTEGeR;
    l:byte;
    dd:char;
begin
 i:=1;
 c:='';
 while i< length(s)+1 do
 begin
   l:=ord(s[i]);
   inc(i);
   if (l>=192) and (l<240) then l:=l-64 else
   if ((l>=240) and (l<256)) then l:=l-16 else
   if l=184 then l:=241 else    
   if l=168 then l:=240;
   dd:=chr(l);
   c:=c+dd;
 end;
 result:=c;
end;

{
const win='≤≥ѓњ™ЇјЅ¬√ƒ≈∆«»… ЋћЌќѕ–—“”‘’÷„ЎўЏџ№Ёёяабвгдежзийклмнопрстуфхцчшщъыьэю€|++++++|++++++++-++++++++-+++++++++++++';
const dos='IiфхтуАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ†°Ґ£§•¶І®©™Ђђ≠Ѓѓабвгдежзийклмноп≥іµґЈЄєЇїљЊњјЅ¬√ƒ≈∆«»… ЋћЌќѕ–—“”‘’÷„ЎўЏ';

function dos2win(s:string):string;
var
  i,j:integer;
  c:char;
begin
  for j:=1 to length(s) do
  begin
    c:=s[j];
    i:=pos(c,dos);
    if i<>0 then s[j]:=win[i];
  end;
  result :=s;
end;

function win2dos(s:string):string;
var
  i,j:integer;
  c:char;
begin
  for j:=1 to length(s) do
  begin
    c:=s[j];
    i:=pos(c,win);
    if i<>0 then s[j]:=dos[i];
  end;
  result :=s;
end;
}


function ckDate(const s:string;curr:TDate):string;
var r:string;
    i,cnt:integer;
begin
  if curr=0 then curr:=now;
  r:=trim(s);
  if length(r)=0 then
  begin
    result:='';
    exit;
  end;

  cnt:=0;
  for i:=1 to length(r) do
  begin
    case r[i] of
      '0'..'9':;
      else
      begin
        inc(cnt);
        r[i]:='.';
        if cnt=3 then setlength(r,i);
      end;
    end;
  end;

  if cnt=0 then r:=r+'.';
  if (cnt<=1) and (r[length(r)]='.') then // no month
    r:=r+inttostr(MonthOf(curr))+'.';
  if (cnt<=2) and (r[length(r)]='.') then // no year
    r:=r+inttostr(YearOf(curr));

  result:=r;
end;

procedure SetRus;
begin
  LoadKeyboardLayout('00000419', KLF_ACTIVATE); //rus
end;

procedure SetEng;
begin
//  LoadKeyboardLayout('00000422', KLF_ACTIVATE); //ukr
  LoadKeyboardLayout('00000409', KLF_ACTIVATE); //eng
end;

function str2int(s:string):integer;
var i,c:integer;
begin
  val(s,i,c);
  Result:=i;
end;


function int2str(i:integer):string;
begin
  result:=inttostr(i);
end;


function LastDayMon(date:TDate): TDate;
var
  Year, Month, Day: Word;
begin
  DecodeDate(date, Year, Month, Day);
  inc(Month);
  if Month=13 then
  begin
    Month:=1;
    inc(year);
  end;
  Result := EncodeDate(year,month,1)-1;
end;

function FirstDayMon(date:TDate): TDate;
var
  Year, Month, Day: Word;
begin
  DecodeDate(date, Year, Month, Day);
  Result := EncodeDate(year,month,1);
end;

function YearMon2Date(yearmon:integer): TDate;
begin
  Result := EncodeDate(yearmon div 100 ,yearmon mod 100,1);
end;

function Date2YearMon(dt:TDate):integer;
var
  Year, Month, Day: Word;
begin
  DecodeDate(dt, Year, Month, Day);
  Result := Year*100+Month;
end;

function DaysPerMonth(Date: Integer): Integer;
begin
  Result:=DaysPerMonth(Date div 100,Date mod 100);
end;

function DaysPerMonth(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer =
    (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and IsLeapYear(AYear) then Inc(Result); { leap-year Feb isspecial }
end;

function isSunday(dt,day:integer):Boolean;
begin
  Result:=isSunday(EncodeDate(dt div 100,dt mod 100,Day));
end;

function isSunday(date:TDate):boolean;
var d: Word;
begin
  d:= DayOfWeek(date);
  if (d=1) or (d=7) then Result := true
  else Result:=false;
end;

function str2float(s:string):double;
begin
  result:=0;
  try
    result:=strtofloat(s);
  except;
  end;
end;



function numtostr(numb:double):string;
begin
  result := numtostr(trim(format('%16.2f',[numb])));
end;

function numtostr(source:string):string;
const
  nul:string='нуль';
  kop:array[1..3] of string=('копiйка','копiйки','копiйок');
  dengi:array [1..3] of string=('гривн€','гривнi','гривнiв');
  ed:array [1..9] of string=('один','два','три','чотири','п`€ть','шiсть','сiм','вiсiм','дев`€ть');
  ed1:array [1..9] of string=('одна','двi','три','чотири','п`€ть','шiсть','сiм','вiсiм','дев`€ть');
  cat:array [1..10] of string=('дес€ть','одиннадц€ть','дванадц€ть','тринадц€ть',
  'чотирнадц€ть','п`€тнадц€ть','шiстнадц€ть','сiмнадц€ть','вiсiмнадц€ть',
  'дев`€тнадц€ть');
  dec:array [1..8] of string=('двадц€ть','тридц€ть','сорок','п`€тдес€т','шiстдес€т',
  'сiмдес€т','вiсiмдес€т','дев`€носто');
  sto:array [1..9] of string=('сто','двiстi','триста','чотириста','п`€тсот','шiстсот','сiмсот',
  'вiсiмсот','дев`€тсот');
  tis:array [1..4] of string=('тис€ч','мiльйонiв','мiль€рдiв','трильонiв');
  tis1:array [1..4] of string=('тис€ча','мiльйон','мiль€рд','трильон');
  tis2:array [1..4] of string=('тис€чi','мiльйони','мiль€рди','трильони');
var point,l,i:integer;
  gr,ost:integer;
  last,c:integer;
  ff,fl:integer;
  dd:integer;
  kp:string;

begin
  kp := '';
  point:=pos(',',source);
  if point>0 then
  begin
    kp:= copy(source,point+1,2);
    source:=copy(source,1,point-1);
  end;

  result:='';
  l := length(source);
  if (l=0) then exit;

  gr := l div 3;
  ost := l mod 3;
  if ost=0 then gr:=gr-1;  // в gr - количество групп по три 12.345.234 gr=3

  last := 0;
  fl:=0;
  ff:=0;
  c:=0;
////////  char c;

  for i:=1 to length(source) do //(char *p=source;*p;p++)
  begin
    c := ord(source[i])-48;
    case ost of
      0:       // сотни
        begin
          if (c<>0) then
          begin
            result:=result+sto[c]+' ';
            fl:=1;
          end;
          ost:=2;
        end;
      2:       // дес€тки
        begin
          if (c<>0) then
          begin
            if (c<>1) then
              result:=result + dec[c-1]+' ';
            fl:=1;
          end;
          ost:=1;
        end;
      1:        // единицы
        begin
          if (last=1) then
            result:=result+cat[c+1]+' '
          else
          begin
            if ((c)<>0) then
            begin
              if (gr<=1) and (c<3) then
              begin
                result:=result+ed1[c]+ ' ';
              end
              else
              begin
                result:=result+ed[c]+ ' ';
              end;
              fl:=1;
            end;
          end;
          ost:=0;
          gr:=gr-1;
          if (gr<0) then break;
          if (length(result)<>0) then
          begin
            ff:=0;
            if (c=1) and (last<>1) then begin ff:=1;result := result+tis1[gr+1];end;
            if (c>1) and (c<5) and (last<>1) then begin ff:=1;result:=result+tis2[gr+1];end;
            if (c>=5) or  (last=1) or ((c=0) and (fl>0)) then begin ff:=1;result:=result+tis[gr+1];end;
            if (ff>0) then result:=result+' ';
          end;
          fl:=0;
        end;
    end;
    if (gr<0) then break;
    last := c;
  end;

  if length(result)=0 then result:=nul+' ';
  if (c=1) and (last<>1) then result := result+dengi[1];
  if (c>1) and (c<5) and (last<>1) then result:=result+dengi[2];
  if (c>=5) or  (last=1) or (c=0) then result:=result+dengi[3];
  if (ff>0) then result:=result+' ';

  if (point>0) then
  begin
    result := result + ' ' + kp+ ' ';
    i := str2int(kp);
    dd := (i div 10)*10;
    ost := i mod 10;
    if (dd<>10) and (ost=1) then result := result + kop[1];
    if (dd<>10) and ((ost>1) and  (ost<5)) then result := result + kop[2];
    if (dd=10) or (ost>=5) or (ost=0) then result := result + kop[3];
    result := result + '.';
  end;
end;










type
  TCrackClass = class(TDBGrid);


function BoundCurrCell(grid:TDBGrid):TRect;
begin

  result.Left:=0;
  result.Top:=0;
  result.Right:=0;
  result.Bottom:=0;

  if (Grid.DataSource=nil) or (grid.DataSource.DataSet=nil) or
     (grid.DataSource.DataSet.Active=false) then exit;

  result:=TCrackClass(Grid).CellRect(TCrackClass(Grid).col,TCrackClass(Grid).row);

  result.TopLeft:=grid.ClientToScreen(result.TopLeft);
  result.BottomRight:=grid.ClientToScreen(result.BottomRight);


end;

function strFromDelimiter(s:string;delimiter:char;num:integer):string;
var i:integer;
  n:integer;
begin
  result:='';
  n:=1;
  for i:=1 to length(s) do
  begin
    if s[i]=delimiter then inc(n)
    else
      if n=num then result:=result+s[i];

    if n>num then break;
  end;
end;


function iif(f:boolean;val1,val2:variant):variant;
begin
  if f then Result:=val1
  else Result:=val2;
end;

procedure StartWait;
begin
  Screen.Cursor := crHourGlass;
end;

procedure StopWait(cur:TCursor=crDefault);
begin
  Screen.Cursor := cur;
end;

function DateTime2Str(dt:TDate;fmt:string):string;
begin
  DateTimeToString(Result,fmt,dt);
end;

function Date2Str(dt:TDate;fmt:string):string;
var tt:TSystemTime;
  ret:array[1..255] of char;
  Year, Month, Day:word; //, Hour, Min, Sec, MSec: Word;
  i:integer;
begin
  i:=pos('m',fmt);
  while i>0 do
  begin
    fmt[i]:='M';
    i:=pos('m',fmt);
  end;


  DecodeDate(dt, Year, Month, Day);

  tt.wYear:=year;
  tt.wMonth:=month;
  tt.wDay:=day;

  GetDateFormat(LOCALE_SYSTEM_DEFAULT,
                LOCALE_USE_CP_ACP,
                @tt,
                pchar(fmt),
                @ret,
                255);

//  GetDateFormat(LOCALE_uk_UA,
//                LOCALE_USE_CP_ACP,
//                @tt,
//                pchar(fmt),
//                @ret,
//                255);

  result:=pchar(@ret);
end;

procedure ExportFile(dg:TDBGrid);
var excel,book,sheet:oleVariant;
  filename:string;
  i:integer;
  row,col:integer;
  dt:TDataSet;
  fld:TField;
  sd:TSaveDialog;
//  NeedToUninitialize:boolean;

begin

{  sd:=TSaveDialog.Create(application);
  try
    sd.FileName := 'Table.xls';
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;


  DeleteFile(PAnsiChar(filename));
  if FileExists(filename) then
  begin
    MessageDlg('Ќе могу создать файл ', mtError, [mbCancel], 0);
    exit;
  end;

}
  Succeeded(CoInitialize(nil));
//  NeedToUninitialize := Succeeded(CoInitialize(nil));

  StartWait;
  dt:=dg.DataSource.DataSet;

//  MainForm.Progress.Min:=1;
//  MainForm.Progress.Max:=dt.RecordCount;
//  MainForm.Progress.Position:=1;

//  MainForm.StatusBar.Visible:=false;
//  MainForm.PanelProgress.Visible:=true;
  Application.ProcessMessages;



  dt.DisableControls;
  excel := CreateOleObject('Excel.Application');
  try
    book := excel.Workbooks.Add;
    sheet := book.Worksheets[1];

    row:=1;

    dt.First;

      col:=1;
      for i:=0 to dg.Columns.Count-1 do
      begin
        Sheet.cells[row,col].value:=dg.Columns[i].Field.DisplayLabel;// .FullName;
        inc(col);
      end;
      inc(row);

    while not dt.eof do
    begin

      col:=1;
      for i:=0 to dg.Columns.Count-1 do
      begin
//        sheet.cells[row,col].color:=dg.Columns[i].Color;

        fld:=dg.Columns[i].Field;
        if (VarType(fld.Value)=varOleStr) or (VarType(fld.Value)=varString)
        then sheet.cells[row,col].value:=String(fld.Value)
        else if (VarType(fld.Value) in [varSmallint,varInteger,varLongWord,varShortInt]) then sheet.cells[row,col].value:=fld.asInteger
        else if (VarType(fld.Value) in [varSingle,varDouble,varCurrency]) then sheet.cells[row,col].value:=fld.asFloat
        else sheet.cells[row,col].value:=fld.Value;
//        sheet.Cells[row,col].NumberFormat:='0.00';

        inc(col);
      end;

      dt.next;
      inc(row);

//      MainForm.Progress.Position:=dt.RecNo;
//      Application.ProcessMessages;
    end;

  finally
    dt.enableControls;
//    try book.saveas(filename,$0000002b,'','',false,true,0,3,false); except end;
//    excel.quit;
    excel.visible:=true;



//    MainForm.Progress.Min:=1;
//    MainForm.Progress.Max:=26;
//    MainForm.Progress.Position:=1;

//    MainForm.StatusBar.Visible:=true;
//    MainForm.PanelProgress.Visible:=false;

    StopWait;

  end;
end;


procedure ExportFile(dt:TDataSet);
var excel,book,sheet:oleVariant;
  filename:string;
  i:integer;
  row,col:integer;
  sd:TSaveDialog;
//  NeedToUninitialize:boolean;

begin

{  sd:=TSaveDialog.Create(application);
  try
    sd.FileName := 'Table.xls';
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;
//  NeedToUninitialize:boolean;

  DeleteFile(PAnsiChar(filename));
  if FileExists(filename) then
  begin
    MessageDlg('Ќе могу создать файл ', mtError, [mbCancel], 0);
    exit;
  end;
 }

  Succeeded(CoInitialize(nil));
//  NeedToUninitialize := Succeeded(CoInitialize(nil));

  StartWait;
//  MainForm.StartProgress(1,dt.RecordCount);
  Application.ProcessMessages;


  dt.DisableControls;
  excel := CreateOleObject('Excel.Application');

  try
    book := excel.Workbooks.Add;
    sheet := book.Worksheets[1];

    row:=1;

    dt.First;

      col:=1;
      for i:=0 to dt.Fields.Count-1 do
      begin
        Sheet.cells[row,col].value:=dt.Fields[i].DisplayLabel;// .FullName;
        inc(col);
      end;
      inc(row);

    while not dt.eof do
    begin

      col:=1;
      for i:=0 to dt.Fields.Count-1 do
      begin
        if (VarType(dt.Fields[i].Value)=varOleStr) or (VarType(dt.Fields[i].Value)=varString)
        then sheet.cells[row,col].value:=String(dt.Fields[i].Value)
        else sheet.cells[row,col].value:=dt.Fields[i].Value;
        sheet.cells[row,col].NumberFormat := 'General';
        inc(col);
      end;

      dt.next;
      inc(row);

//      MainForm.UpdateProgress(dt.RecNo);
//      Application.ProcessMessages;
    end;

  finally
    dt.enableControls;
//    try book.saveas(filename,$0000002b,'','',false,true,0,3,false); except end;
//    excel.quit;
    excel.visible:=true;


//    MainForm.StopProgress;

    StopWait;
  end;
end;

function getVersionInfo(tag:string):string;
var
  Stream: TCustomMemoryStream;
  Size:Smallint	;
  s:array[1..2048] of char;
  s1:array[1..2048] of char;
//  st:string;
  i,j:integer;
//  p:PChar;
  res:string;
  n:integer;

function memPos(m:array of char;s:string):integer;
function cpy(m:array of char;st,len:integer):string;
var i:integer;
begin
  result:='';
  for i:=st to st+len-1 do
    result:=result+m[i];
end;

var i:integer;
ss:string;
begin
  result:=-1;
  for i:=low(m) to high(m)-length(s) do
  begin
  ss:=cpy(m,i,length(s));
  if cpy(m,i,length(s))=s then
  begin
    result:=i;
    break;
  end;
  end;
end;



begin
  res:='';
  Stream := TResourceStream.CreateFromId(HInstance, 1, RT_VERSION);
  try
    stream.Read(size, 2);
    stream.Read(s,size-2);
  finally
    Stream.Free;
  end;

  j:=0;
  for i:=(156 div 2)  to (size div 2)  do
  begin
    inc(j);
    s1[j]:=s[i*2+1];
  end;
  s1[j+1]:=#0;
  i:=mempos(s1,tag);
  if i<>-1 then
  begin
    j:=i+3+length('CompanyName');
    res:='';
    n:=0;
    while s1[j]<>#0 do
    begin
      if (s1[j]='.') then
        if n=3 then break
        else inc(n);

      res:=res+s1[j];
      inc(j);
    end;
  end;

  result:=res;
end;


constructor TrpVersionInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SetVersionInfo;
end;

function TrpVersionInfo.GetCompanyName: string;
begin
  result := GeTVersionInfo(vtCompanyName);
end;

function TrpVersionInfo.GetFileDescription: string;
begin
  result := GeTVersionInfo(vtFileDescription);
end;

function TrpVersionInfo.GetFileVersion: string;
begin
  result := GeTVersionInfo(vtFileVersion);
end;

function TrpVersionInfo.GetInternalName: string;
begin
  result := GeTVersionInfo(vtInternalName);
end;

function TrpVersionInfo.GetLegalCopyright: string;
begin
  result := GeTVersionInfo(vtLegalCopyright);
end;

function TrpVersionInfo.GetLegalTradeMark: string;
begin
  result := GeTVersionInfo(vtLegalTradeMark);
end;

function TrpVersionInfo.GetOriginalFileName: string;
begin
  result := GeTVersionInfo(vtOriginalFileName);
end;

function TrpVersionInfo.GetProductName: string;
begin
  result := GeTVersionInfo(vtProductName);
end;

function TrpVersionInfo.GetProductVersion: string;
begin
  result := GeTVersionInfo(vtProductVersion);
end;

function TrpVersionInfo.GetComments: string;
begin
  result := GeTVersionInfo(vtComments);
end;

function TrpVersionInfo.GeTVersionInfo(VersionType: TVersionType): string;
begin
  result := FVersionInfo[ord(VersionType)];
end;

procedure TrpVersionInfo.SeTVersionInfo;
var
  sAppName,sVersionType : string;
  iAppSize, iLenOfValue, i: integer;
  pcBuf,pcValue: PChar;
begin
  sAppName := Application.ExeName;
  iAppSize:= GetFileVersionInfoSize(PChar(sAppName),DWORD(iAppSize));
  if iAppSize > 0 then
  begin
    pcBuf := AllocMem(iAppSize);
    GetFileVersionInfo(PChar(sAppName),0,iAppSize,pcBuf);
    for i := 0 to Ord(High(TVersionType)) do
    begin
      sVersionType := GetEnumName(TypeInfo(TVersionType),i);
      sVersionType := Copy(sVersionType,3,length(sVersionType));
      if VerQueryValue(pcBuf,PChar('StringFileInfo\040904E4\'+
         sVersionType), Pointer(pcValue),DWORD(iLenOfValue))
         then
        FVersionInfo[i] := pcValue;
    end;
    FreeMem(pcBuf,iAppSize);
  end;
end;

procedure setYearBox(box:TComboBox;curr:TDate);
var i:integer;
begin
  if curr=0 then curr:=now;
  Box.Items.Clear;
  for i:=yearof(curr)-DELTA_YEAR to yearof(curr) do
    Box.Items.Add(inttostr(i));
  Box.ItemIndex:=Box.Items.Count-1;

end;


function roundMoney(s:currency;cent:integer):currency;
var kop:integer;
  ost:integer;
  part:integer;
begin
  if cent>1 then
  begin
    kop := floor(s*100);
    ost := kop mod cent;
    part := cent div 2 + cent mod 2;
    if ost < part then kop := kop-ost
    else kop := kop + (cent-ost);
    result:=kop/100;
  end
  else
    result:=s;
end;

function var2int(v:variant):integer;
begin
  result:=0;
  if vartype(v) in [varSmallint,varInteger] then
    result:=v;
end;

function GetRegistryValue(path,key:string): string;
var
  Registry: TRegistry;
begin
  Result:='';
  Registry:=TRegistry.Create;

  try
    Registry.RootKey:=HKEY_CURRENT_USER; //LOCAL_MACHINE;
  {False because we do not want to create it if it doesn“t exist}
    Registry.OpenKey(path,False);
    Result :=Registry.ReadString(key);
  finally
    Registry.Free;
  end;
end;


function ExecAndWait(const FileName, Params: ShortString; const WinState: Word): boolean;
var
  StartInfo: TStartupInfo;  
  ProcInfo: TProcessInformation;  
  CmdLine: ShortString;
begin  
  { ѕомещаем им€ файла между кавычками, с соблюдением всех пробелов в именах Win9x }  
  CmdLine := '"' + Filename + '" ' + Params;  
  FillChar(StartInfo, SizeOf(StartInfo), #0);  
  with StartInfo do  
  begin  
    cb := SizeOf(StartInfo);
    dwFlags := STARTF_USESHOWWINDOW;
//    wShowWindow := WinState; // SW_HIDE, SW_MAXIMIZE, SW_MINIMIZE, SW_SHOWNORMAL
  end;  
  Result := CreateProcess(nil, PChar( String( CmdLine ) ), nil, nil, false,
                          CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,  
                          PChar(ExtractFilePath(Filename)),StartInfo,ProcInfo);
  { ќжидаем завершени€ приложени€ }  
  if Result then  
  begin  
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);  
    { Free the Handles }  
    CloseHandle(ProcInfo.hProcess);  
    CloseHandle(ProcInfo.hThread);  
  end;  
end;  

function GetComputerNetName: string;
var
 buffer: array[0..255] of char;
 size: dword;
begin
 size := 256;
 if GetComputerName(buffer, size) then
   Result := buffer
 else
   Result := ''
end;

function _GetTempPath: String;  
var  
  Buffer: array[0..1023] of Char;  
begin  
  SetString(Result, Buffer, GetTempPath(Sizeof(Buffer)-1,Buffer));  
end;  

function _GetCurrentDirectory: String;  
var  
  Buffer: array[0..1023] of Char;  
begin  
  SetString(Result, Buffer, GetCurrentDirectory(Sizeof(Buffer)-1,Buffer));  
end;  

function _GetSystemDirectory: String;  
var  
  Buffer: array[0..1023] of Char;  
begin  
  SetString(Result, Buffer, GetSystemDirectory(Buffer,Sizeof(Buffer)-1));
end;  

function _GetWindowsDirectory: String;
var
  Buffer: array[0..1023] of Char;
begin
  SetString(Result, Buffer, GetWindowsDirectory(Buffer,Sizeof(Buffer)-1));
end;

function _GetTempDirectory: String;
var
  Buffer: array[0..1023] of Char;
begin
  SetString(Result, Buffer, Windows.GetTempPath(Sizeof(Buffer)-1,Buffer));
end;

function KillTask(ExeFileName: string): integer;
const
  PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := 0;

  FSnapshotHandle := CreateToolhelp32Snapshot
                    (TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle,
                                FProcessEntry32);

  while integer(ContinueLoop) <> 0 do
  begin
     if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
          UpperCase(ExeFileName))
      or (UpperCase(FProcessEntry32.szExeFile) =
          UpperCase(ExeFileName))) then
       Result := Integer(TerminateProcess(OpenProcess(
                       PROCESS_TERMINATE, BOOL(0),
                       FProcessEntry32.th32ProcessID), 0));
     ContinueLoop := Process32Next(FSnapshotHandle,
                                 FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure KillProgram(Classname : pchar; WindowTitle : pchar); 
const
  PROCESS_TERMINATE = $0001;
var
  ProcessHandle : THandle;
  ProcessID: Integer;
  TheWindow : HWND;
begin
  TheWindow := FindWindow(Classname, WindowTitle);
  if TheWindow=0 then
    TheWindow := FindWindow(Classname, nil);
  if TheWindow=0 then
    TheWindow := FindWindow(nil, WindowTitle);

  GetWindowThreadProcessID(TheWindow, @ProcessID);
  ProcessHandle := OpenProcess(PROCESS_TERMINATE, FALSE, ProcessId);
  TerminateProcess(ProcessHandle,4);
end;

Function SetProcessPriority( Priority : Integer ) : Integer;
Var
   H : THandle;
Begin
   Result := ppNormal;
   H := GetCurrentProcess();
   If ( Priority = ppIdle ) Then
       SetPriorityClass( H, IDLE_PRIORITY_CLASS )
   Else If ( Priority = ppNormal ) Then
       SetPriorityClass( H, NORMAL_PRIORITY_CLASS )
   Else If ( Priority = ppHigh ) Then
       SetPriorityClass( H, HIGH_PRIORITY_CLASS )
   Else If ( Priority = ppRealTime ) Then
       SetPriorityClass( H, REALTIME_PRIORITY_CLASS );
   Case GetPriorityClass( H ) Of
       IDLE_PRIORITY_CLASS     : Result := ppIdle;
       NORMAL_PRIORITY_CLASS   : Result := ppNormal;
       HIGH_PRIORITY_CLASS     : Result := ppHigh;
       REALTIME_PRIORITY_CLASS : Result := ppRealTime;
   End;
End;

Function GetProcessPriority : Integer;
Var
   H : THandle;
Begin
   Result := ppNormal;
   H := GetCurrentProcess();
   Case GetPriorityClass( H ) Of
       IDLE_PRIORITY_CLASS     : Result := ppIdle;
       NORMAL_PRIORITY_CLASS   : Result := ppNormal;
       HIGH_PRIORITY_CLASS     : Result := ppHigh;
       REALTIME_PRIORITY_CLASS : Result := ppRealTime;
   End;
End;

end.


{
 const
  DOS_2_KOI: Array[$80..$FF] of Byte = (
   $E1,$E2,$F7,$E7,$E4,$E5,$F6,$FA,$E9,$EA,$EB,$EC,$ED,$EE,$EF,$F0,
   $F2,$F3,$F4,$F5,$E6,$E8,$E3,$FE,$FB,$FD,$FF,$F9,$F8,$FC,$E0,$F1,
   $C1,$C2,$D7,$C7,$C4,$C5,$D6,$DA,$C9,$CA,$CB,$CC,$CD,$CE,$CF,$D0,
   $90,$91,$92,$81,$87,$B2,$B4,$A7,$A6,$B5,$A1,$A8,$AE,$AD,$AC,$83,
   $84,$89,$88,$86,$80,$8A,$AF,$B0,$AB,$A5,$BB,$B8,$B1,$A0,$BE,$B9,
   $BA,$B6,$B7,$AA,$A9,$A2,$A4,$BD,$BC,$85,$82,$8D,$8C,$8E,$8F,$8B,
   $D2,$D3,$D4,$D5,$C6,$C8,$C3,$DE,$DB,$DD,$DF,$D9,$D8,$DC,$C0,$D1,
   $B3,$A3,$99,$98,$93,$9B,$9F,$97,$9C,$95,$9E,$96,$BF,$9D,$94,$9A);
 
  DOS_2_Win: Array[$80..$FF] of Byte = (
   $C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF,
   $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF,
   $E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF,
   $B0,$B1,$B2,$A6,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$AC,
   $C0,$C1,$C2,$C3,$C4,$86,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF,
   $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$87,$D9,$DA,$DB,$DC,$DD,$DE,$DF,
   $F0,$F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF,
   $A8,$B8,$AA,$BA,$AF,$BF,$A1,$A2,$B0,$F9,$B7,$FB,$B9,$A4,$FE,$A0);
 
  KOI_2_DOS: Array[$80..$FF] of Byte = (
   $C4,$C3,$Da,$BF,$C0,$D9,$C3,$B4,$C2,$C1,$C5,$DF,$DC,$DB,$DD,$DE,
   $B0,$B1,$b2,$f4,$fe,$f9,$fb,$f7,$f3,$f2,$ff,$f5,$f8,$fd,$fa,$f6,
   $cd,$ba,$d5,$f1,$d6,$c9,$b8,$b7,$bb,$d4,$d3,$c8,$be,$bd,$bc,$c6,
   $c7,$cc,$b5,$f0,$b6,$b9,$d1,$d2,$cb,$cf,$d0,$ca,$d8,$d7,$ce,$fc,
   $ee,$a0,$a1,$e6,$a4,$a5,$e4,$a3,$e5,$a8,$a9,$aa,$ab,$ac,$ad,$ae,
   $af,$ef,$e0,$e1,$e2,$e3,$a6,$a2,$ec,$eb,$a7,$e8,$ed,$e9,$e7,$ea,
   $9e,$80,$81,$96,$84,$85,$94,$83,$95,$88,$89,$8a,$8b,$8c,$8d,$8e,
   $8f,$9f,$90,$91,$92,$93,$86,$82,$9c,$9b,$87,$98,$9d,$99,$97,$9a);
 
  Win_2_DOS: Array[$80..$FF] of Byte = (
   $3f,$3f,$27,$3f,$22,$3a,$c5,$d8,$3f,$25,$3f,$3c,$3f,$3f,$3f,$3f,
   $3f,$27,$27,$22,$22,$07,$2d,$2d,$3f,$54,$3f,$3e,$3f,$3f,$3f,$3f,
   $ff,$f6,$f7,$3f,$fd,$3f,$b3,$15,$f0,$63,$f2,$3c,$bf,$2d,$52,$f4,
   $f8,$2b,$49,$69,$3f,$e7,$14,$fa,$f1,$fc,$f3,$3e,$3f,$3f,$3f,$f5,
   $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c,$8d,$8e,$8f,
   $90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$9e,$9f,
   $a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$ae,$af,
   $e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$ea,$eb,$ec,$ed,$ee,$ef);
 
function DOSToKOI(St: String): String;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := char(DOS_2_KOI[byte(St[i])]);
  Result := St;
end;
 
function DOSToWin(St: String): String;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := char(DOS_2_Win[byte(St[i])]);
  Result := St;
end;
 
function WinToDOS(St: String): String;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := char(Win_2_DOS[byte(St[i])]);
  Result := St;
end;
 
function WinToKOI(St: String): String;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := char(DOS_2_KOI[Win_2_DOS[byte(St[i])]]);
  Result := St;
end;
 
function KOIToDOS(St: String): String;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := char(KOI_2_DOS[byte(St[i])]);
  Result := St;
end;
 
function KOIToWin(St: String): String;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := char(DOS_2_Win[KOI_2_DOS[byte(St[i])]]);
  Result := St;
end;


function DiskInDrive(const Drive: char): Boolean;
var DrvNum: byte;
EMode: Word;
begin
Result := False;
DrvNum := ord(Drive);
if DrvNum >= ord('a') then dec(DrvNum,$20);
EMode := SetErrorMode(SEM_FAILCRITICALERRORS);
try
if DiskSize(DrvNum-$40) <> -1 then
Result := True
else
MessageBeep(0);
finally
SetErrorMode(EMode);
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var s: string;
begin
if DiskInDrive('A') then
s:='Drive is Ready'
else
s:='Drive is not Ready';
Form1.Label1.Caption:=s;
end;


}
