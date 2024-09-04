unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Grids, ExtCtrls;

type

  { TfMain }

  TfMain = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Clear: TButton;
    ClearEntry: TButton;
    Clear_Last: TButton;
    comma: TButton;
    Divide: TButton;
    Edit1: TEdit;
    Eight: TButton;
    equal: TButton;
    Five: TButton;
    Four: TButton;
    minus: TButton;
    Multiply: TButton;
    Nine: TButton;
    Null: TButton;
    One: TButton;
    Plus: TButton;
    Seven: TButton;
    Six: TButton;
    Three: TButton;
    Two: TButton;
    procedure ClearEntryClick(Sender: TObject);
    procedure Clear_LastClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure equalClick(Sender: TObject);
    procedure commaClick(Sender: TObject);

  private

  public

  end;

var
  fMain: TfMain;
  a, b, c: real;
  znak : string;
implementation

{$R *.lfm}

{ TfMain }

procedure TfMain.commaClick(Sender: TObject);
var k2:AnsiString;
  k1:int64;
begin
  k2:=Edit1.Text;
  k1:= Pos(',',k2);
   if k1 = 0 then
      Edit1.Text:=Edit1.Text + (Sender as TButton).Caption
   else
    ShowMessage('Введите число');
end;

procedure TfMain.ClickBut(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TfMain.Clear_LastClick(Sender: TObject);
var
  str: string;
begin
  str:= Edit1.Text;
  if str <> '' then
  delete(str, Length(str),1);
  Edit1.Text:=str;
end;

procedure TfMain.equalClick(Sender: TObject);
begin
  if Edit1.Text = '' then
     ShowMessage('Введите число')
  else
  begin
  b:= strtoFLoat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+' : c:= a+b;
  '-' : c:= a-b;
  '*' : c:=a*b;
  '/': if b = 0 then
     showmessage('На ноль делить нельзя! АЯЙ!')
  else
  c:=a/b;
  end;
  end;
  Edit1.Text:= IntToStr(round(c));
end;

procedure TfMain.ClearEntryClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfMain.ClearClick(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

procedure TfMain.ClickZnak(Sender: TObject);
begin
   if Edit1.Text = '' then
      ShowMessage('Введите число')
   else
   begin
        a:= strToFloat(Edit1.Text);
        Edit1.clear;
        znak:=(Sender as TButton).Caption;
   end;
end;
end.
