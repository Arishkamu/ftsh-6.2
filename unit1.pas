unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Canvas.Rectangle(70, 100, 175, 200);
   Image1.Canvas.Pen.Color:=clpurple;
   Image1.Canvas.Brush.Color:=clblue;
   Image1.Canvas.Pen.Width:=7;
   Image1.Canvas.Rectangle(35, 50, 130, 150);
   Image1.Canvas.Pen.Color:=clpurple;
   Image1.Canvas.Brush.Color:=clblue;
   Image1.Canvas.Pen.Width:=7;
   Image1.Canvas.Rectangle(130, 150, 230, 250);
   Image1.Canvas.Pen.Color:=clgreen;
   Image1.Canvas.Brush.Color:=clred;
   Image1.Canvas.Pen.Width:=7;

end;

end.

