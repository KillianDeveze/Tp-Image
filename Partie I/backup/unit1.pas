unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtLancer: TButton;
    BtNoir: TButton;
    Bt4couleurs: TButton;
    BtLigne: TButton;
    BtDamier: TButton;
    BtVisage: TButton;
    ImgTest: TImage;
    procedure BtDamierClick(Sender: TObject);
    procedure BtLancerClick(Sender: TObject);
    procedure BtLigneClick(Sender: TObject);
    procedure BtNoirClick(Sender: TObject);
    procedure Bt4couleursClick(Sender: TObject);
    procedure BtVisageClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ImgTestClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ImgTestClick(Sender: TObject);
begin

end;

procedure TForm1.BtLancerClick(Sender: TObject);
begin
  ImgTest.Canvas.Brush.color:=clred;
  ImgTest.Canvas.Rectangle (0,0,300,300);

end;

procedure TForm1.BtDamierClick(Sender: TObject);
var

  i, j : integer;
begin
     for i := 0 to 8 do
         begin
         for j := 0 to 8 do
             begin
             if (i = j) OR (i = j + 2) OR (i = j - 2) OR (i = j + 4) OR (i = j - 4) OR (i = j + 6) OR (i = j - 6) then
                begin
                   ImgTest.Canvas.Brush.color := clblack;
                   ImgTest.Canvas.Rectangle (i*37,j*37,(i+1)*37,(j+1)*37)
                end
                else
                 begin
                 ImgTest.Canvas.Brush.color := clwhite;
                 ImgTest.Canvas.Rectangle (i*37,j*37,(i+1)*37,(j+1)*37);
                 end;
             end;
         end;

end;

procedure TForm1.BtLigneClick(Sender: TObject);
var
  Cpt:INTEGER;

begin
   Cpt:=0;
  While (Cpt<300) do
   begin

       ImgTest.Canvas.Pen.color:=clRed;
      ImgTest.Canvas.Line (Cpt,0,Cpt,300);
       ImgTest.Canvas.Pen.color:=clYellow;
      ImgTest.Canvas.Line (Cpt+1,0,Cpt+1,300);
      ImgTest.Canvas.Pen.color:=clGreen;
      ImgTest.Canvas.Line (Cpt+2,0,Cpt+2,300);
      ImgTest.Canvas.Pen.color:=clBlue;
      ImgTest.Canvas.Line (Cpt+3,0,Cpt+3,300);
      Cpt:=Cpt+4;


   end;
end;

procedure TForm1.BtNoirClick(Sender: TObject);
begin
  ImgTest.Canvas.Brush.color:=clBlack;
  ImgTest.Canvas.Rectangle (0,0,300,300);
end;

procedure TForm1.Bt4couleursClick(Sender: TObject);
begin
  ImgTest.Canvas.Brush.color:=clRed;
  ImgTest.Canvas.Rectangle (0,0,150,150);
   ImgTest.Canvas.Brush.color:=clBlack;
  ImgTest.Canvas.Rectangle (151,0,300,150);
   ImgTest.Canvas.Brush.color:=clBlue;
  ImgTest.Canvas.Rectangle (0,151,150,300);
   ImgTest.Canvas.Brush.color:=clGreen;
  ImgTest.Canvas.Rectangle (151,151,300,300);
end;

procedure TForm1.BtVisageClick(Sender: TObject);
begin
  begin

    ImgTest.Picture:=nil;

  ImgTest.canvas.brush.color:= RGBToColor(51, 26, 0);
  ImgTest.canvas.pen.color:= RGBToColor(255, 255, 255);
  ImgTest.canvas.Rectangle(50,100,250,200);
  ImgTest.canvas.ellipse(50,50,100,100);
  ImgTest.canvas.ellipse(200,50,250,100);




end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

end.

