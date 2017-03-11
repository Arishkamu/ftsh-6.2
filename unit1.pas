unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  x1, y1, x2, y2, r, xc, yc : integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   Image1.Canvas.Brush.Color:=clwhite;
    Image1.Canvas.Rectangle(-10, -10, 1000, 1000);
    Image1.Canvas.Pen.Color:=cllime;
    Image1.Canvas.Pen.Width:=5;
    Image1.Canvas.Brush.Color:=clblue;
    Image1.Canvas.Rectangle(x1, y1, x2, y2);
    Image1.Canvas.Ellipse(xc - r, yc - r, xc + r, yc + r);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   x1:=50; x2:=150;
   y1:=90; y2:=190;

   xc:=200; yc:=150;
   r:=35;
  begin
    Image1.Canvas.Brush.Color:=clwhite;
    Image1.Canvas.Rectangle(-10, -10, 1000, 1000);
    Image1.Canvas.Pen.Color:=cllime;
    Image1.Canvas.Pen.Width:=5;
    Image1.Canvas.Brush.Color:=clblue;
    Image1.Canvas.Rectangle(x1, y1, x2, y2);
    Image1.Canvas.Ellipse(xc - r, yc - r, xc + r, yc + r);
  end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm1.Image1MouseEnter(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if (x<=x2) and (x>=x1) and (y>=y1) and (y<=y2) then
    begin
      Image1.Canvas.Brush.Color:=clwhite;
      Image1.Canvas.Rectangle(-10, -10, 1000, 1000);
      Image1.Canvas.Pen.Color:=clyellow;
      Image1.Canvas.Pen.Width:=5;
      Image1.Canvas.Brush.Color:=cllime;
      Image1.Canvas.Rectangle(x1, y1, x2, y2);
    end;

    if sqrt((x-xc) * (x-xc) + (y-yc) * (y-yc)) <= r Then
     begin
       Image1.Canvas.Brush.Color:=clwhite;
       Image1.Canvas.Rectangle(-10, -10, 1000, 1000);
       Image1.Canvas.Pen.Color:=clyellow;
       Image1.Canvas.Pen.Width:=5;
       Image1.Canvas.Brush.Color:=cllime;
       Image1.Canvas.Ellipse(xc - r, yc - r, xc + r, yc + r);
     end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

Begin

end;
end;

end.

