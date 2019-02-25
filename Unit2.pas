unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Math;

type
  TForm2 = class(TForm)
    labelP: TLabel;
    editP: TEdit;
    editQ: TEdit;
    editD: TEdit;
    panelParametry: TPanel;
    labelQ: TLabel;
    labelB: TLabel;
    bitbtnP: TBitBtn;
    bitbtnQ: TBitBtn;
    bitbtnD: TBitBtn;
    labelParametry: TLabel;
    OpenDialog: TOpenDialog;
    labelPlainText: TLabel;
    bitbtnReset: TBitBtn;
    labelDecipherText: TLabel;
    Panel1: TPanel;
    memoPlainText: TMemo;
    LabelFile: TLabel;
    bitbtnDownload: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnECP: TBitBtn;
    Label4: TLabel;
    MemoH: TMemo;
    Panel3: TPanel;
    Label5: TLabel;
    LabelFileCheck: TLabel;
    Label7: TLabel;
    BitBtnCheck: TBitBtn;
    ButtonCheckFile: TButton;
    MemoH_2: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    MemoCheck: TMemo;
    procedure BitBtnCheckClick(Sender: TObject);
    procedure ButtonCheckFileClick(Sender: TObject);
    procedure BitBtnECPClick(Sender: TObject);
    procedure bitbtnResetClick(Sender: TObject);
    procedure bitbtnDownloadClick(Sender: TObject);
    procedure bitbtnDClick(Sender: TObject);
    procedure bitbtnQClick(Sender: TObject);
    procedure bitbtnPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  P,Q,d,r,f,e,x1,y1,y0,H,S1,S2: integer;
  LengthArr,LengthArr_2,Size: integer;
  Text,S_check: string;
  ArrM: array of byte;
  ArrH,ArrH_2: array of integer;
  ArrM_2: array of byte;

implementation

{$R *.dfm}

procedure SaveToFile(fName,text:string);
var f:textfile;
begin
  assignfile(f,fName);
  rewrite(f);
  write(f,text);
  closefile(f);
end;

function Prost (n: integer): boolean;
var  r1: integer;
begin
  if n<2 then result:=false
  else
  begin
    r1 := 2;
    result:=true;
    while (r1*r1<=n)and result do
      if n mod r1 = 0 then
        result:=false
      else inc(r1);
  end;
end;

function FastEXP (Number, Stepen, modN: integer): integer;
var
   x: integer;
begin
   x := 1;
   while stepen <> 0 do
   begin
      while (stepen mod 2) = 0 do
      begin
         stepen := stepen div 2;
         number := (number * number) mod modN;
      end;
      stepen := stepen - 1;
      x := (x * number) mod modN;
   end;
   result := x;
end;

procedure euclid(a,b: integer);
var
  d0,d1,x0, t, d2, x2, y2 : Integer;
begin
  d0 := a;
  d1 := b;
  x0 := 1;
  x1 := 0;
  y0 := 0;
  y1 := 1;
  while d1>1 do
  begin
    t := d0 div d1;
    d2 := d0 mod d1;
    x2 := x0-t*x1;
    y2 :=y0-t*y1;
    d0 :=d1; d1:=d2;
    x0:=x1; x1:=x2;
    y0 := y1; y1 := y2;
  end;
end;

function NOD(a, b: integer): integer; 
begin 
while (a <> 0) and (b <> 0) do 
if a > b then 
a := a mod b 
else 
b := b mod a; 
if a = 0 then 
result := b 
else 
result := a; 
end;

procedure TForm2.bitbtnDClick(Sender: TObject);
begin
  if editD.Text <>'' then
  begin
    r:=P*Q;
    if r > 255 then
    begin
      f:=(P-1)*(Q-1);
      d:=StrToInt(editD.Text);
      if (d>1) and (d<f) then
      begin
        if (NOD(d,f)<>1) then
        begin
          ShowMessage('ОШИБКА: d и f(r) не взаимно простые!');
          editD.Text:='';
          d:=0;
        end
        else//если простое
          begin
            //вычисление мультиприкативно инверсной e
            euclid(f,d);
            if y1<0 then
              y1:=y1+f;
            e:=y1;
          end;
      end
      else
      begin
        ShowMessage('ОШИБКА: не выполняется условие 1<d<f(r) !');
        editD.Text:='';
        d:=0;
      end;
    end
    else
      begin
        ShowMessage('ОШИБКА: значение r=p*q должно быть больше 255 !');
        editD.Text:='';editP.Text:='';editQ.Text:='';
        d:=0;P:=0;Q:=0;
      end;
  end
  else
    ShowMessage('ОШИБКА: пустое поле !');
end;

procedure TForm2.bitbtnPClick(Sender: TObject);
begin
  if editP.Text <> '' then
    begin
    P:=StrToInt(editP.Text);
    if P=0 then
    begin
      ShowMessage('ОШИБКА: P не должно быть равно 0!');
      editP.Text:='';
      P:=0;
    end;
    if not(Prost(P)) then
    begin
      ShowMessage('ОШИБКА: введенное число не является простым!');
      editP.Text:='';
      P:=0;
    end;
  end
  else
    ShowMessage('ОШИБКА: пустое поле !');
end;

procedure TForm2.bitbtnQClick(Sender: TObject);
begin
  if editQ.Text <> '' then
  begin
    Q:=StrToInt(editQ.Text);
    if Q=0 then
    begin
      ShowMessage('ОШИБКА: Q не должно быть равно 0!');
      editQ.Text:='';
      Q:=0;
    end;
    if not(Prost(Q)) then
    begin
      ShowMessage('ОШИБКА: введенное число не является простым!');
      editQ.Text:='';
      Q:=0;
    end;
  end
  else
    ShowMessage('ОШИБКА: пустое поле !');
end;

procedure TForm2.bitbtnDownloadClick(Sender: TObject);
var F: file of byte;
    B: byte;
    F2: textfile;
    c: char;
begin
  if OpenDialog.Execute then
  begin
    memoPlainText.Text:='';
    AssignFile(F,OpenDialog.FileName);
    Reset(F);
    LengthArr:=0;
    Size:=Filesize(F);
    SetLength(ArrM,Size);
    While Not Eof(F) Do
    begin
      Read(F, B);
      ArrM[LengthArr]:=B;
      inc(LengthArr);
    end;
    CloseFile(F);
    //сохранение текста в Text
    Text:='';
    AssignFile(F2,OpenDialog.FileName);
    Reset(F2);
    While Not Eof(F2) Do
    begin
      Read(F2, c);
      Text:=Text+c;
    end;
    CloseFile(F2);
    LabelFile.Caption:='файл выбран';
  end;
end;

procedure TForm2.BitBtnECPClick(Sender: TObject);
var i: integer;
begin
  SetLength(ArrH,Size+1);
  ArrH[0]:=100;
  for i := 0 to LengthArr-1 do
    ArrH[i+1]:=FastEXP((ArrH[i]+ArrM[i]),2,r);
  MemoH.Text:=IntToStr(ArrH[i]);
  S1:=FastEXP(ArrH[i],e,r);
  memoPlainText.Lines[0]:=Text+'_'+IntToStr(S1);
  SaveToFile('ECP.txt',memoPlainText.Lines[0])
end;

procedure TForm2.bitbtnResetClick(Sender: TObject);
begin
  Text:='';
  memoPlainText.Text:='';
  r:=0;
  P:=0; editP.Text:='';
  Q:=0; editQ.Text:='';
  d:=0; editD.Text:='';
  LabelFile.Caption:='файл не выбран';
  LabelFile.Caption:='файл не выбран';
  memoPlainText.Text:='';
  MemoH.Text:='';
  MemoCheck.Text:='';
  MemoH_2.Text:='';
end;

procedure TForm2.ButtonCheckFileClick(Sender: TObject);
var F3: file of byte;
    B: byte;
begin
  if OpenDialog.Execute then
  begin
    AssignFile(F3,OpenDialog.FileName);
    Reset(F3);
    LengthArr_2:=0;
    S_check:='';
    Size:=Filesize(F3);
    SetLength(ArrM_2,Size);
    While Not Eof(F3) Do
    begin
      Read(F3, B);
      if B<>95 then
      begin
        ArrM_2[LengthArr_2]:=B;
        inc(LengthArr_2);
      end
      else
        begin
          while Not Eof(F3) do
          begin
            Read(F3, B);
            S_check:=S_check+chr(B);
          end;
          break;
        end;
    end;
    CloseFile(F3);
    LabelFileCheck.Caption:='файл выбран';
  end;
end;

procedure TForm2.BitBtnCheckClick(Sender: TObject);
var i: integer;
begin
    SetLength(ArrH_2,Size+1);
    ArrH_2[0]:=100;
    for i := 0 to LengthArr-1 do
      ArrH_2[i+1]:=FastEXP((ArrH_2[i]+ArrM_2[i]),2,r);
    MemoH_2.Text:=IntToStr(ArrH_2[i]);     //хеш сообщения
    S2:=FastEXP(StrToInt(S_check),d,r);
    MemoCheck.Lines[0]:=IntToStr(S2);
    if ArrH_2[i]=S2 then
      ShowMessage('Подпись действительная!')
    else
      ShowMessage('ОШИБКА: подпись не действительна!');
end;

end.
