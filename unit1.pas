unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
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
   Image1.Canvas.Pen.Width:=1;
   Image1.Canvas.Pen.Color:=clgreen;
   Image1.Canvas.Brush.Color:=clgreen;
   Image1.Canvas.Rectangle(0, 200, 400, 400);

   Image1.Canvas.Pen.Width:=1;
   Image1.Canvas.Pen.Color:=clskyblue;
   Image1.Canvas.Brush.Color:=clskyblue;
   Image1.Canvas.Rectangle(0, 0, 400, 200);

   Image1.Canvas.Pen.Width:=1;
   Image1.Canvas.Pen.Color:=clblack;
   Image1.Canvas.Brush.Color:=clMedGray;
   Image1.Canvas.Rectangle(150, 150, 250, 250);

   Image1.Canvas.Pen.Width:=1;
   Image1.Canvas.Pen.Color:=clblack;
   Image1.Canvas.Brush.Color:=clblue;
   Image1.Canvas.Rectangle(190, 190, 200, 200);
   Image1.Canvas.Pen.Width:=1;
   Image1.Canvas.Pen.Color:=clblack;
   Image1.Canvas.Brush.Color:=clblue;
   Image1.Canvas.Rectangle(200, 190, 210, 200);
   Image1.Canvas.Pen.Width:=1;
   Image1.Canvas.Pen.Color:=clblack;
   Image1.Canvas.Brush.Color:=clblue;
   Image1.Canvas.Rectangle(200, 200, 210, 210);
   Image1.Canvas.Pen.Width:=1;
   Image1.Canvas.Pen.Color:=clblack;
   Image1.Canvas.Brush.Color:=clblue;
   Image1.Canvas.Rectangle(190, 200, 200, 210);

   Image1.Canvas.Pen.Width:=10;
   Image1.Canvas.Pen.Color:=clred;
   Image1.Canvas.MoveTo(135, 150);
   Image1.Canvas.LineTo(265, 150);
   Image1.Canvas.LineTo(200, 100);
   Image1.Canvas.LineTo(135, 150);
end;

end.

