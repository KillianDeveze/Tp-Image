unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtMiroir1: TButton;
    BtMiroir2: TButton;
    BtMiroir3: TButton;
    Bt90: TButton;
    Img1: TImage;
    Img2: TImage;
    procedure Bt90Click(Sender: TObject);
    procedure BtMiroir1Click(Sender: TObject);
    procedure BtMiroir2Click(Sender: TObject);
    procedure BtMiroir3Click(Sender: TObject);
    procedure Img1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Img1Click(Sender: TObject);
begin

end;

procedure TForm1.BtMiroir1Click(Sender: TObject);
var
  i,j:INTEGER;

begin

     for i:=1 to 300 do

         for j:=1 to 300 do

         begin

              Img2.canvas.Pixels[300-i,j]:=Img1.canvas.Pixels[i,j];

         end;

end;

procedure TForm1.Bt90Click(Sender: TObject);
var

  i,j:INTEGER;

begin
  Img2.Height:=300;
  Img2.Width:=200;

  for i:=1 to 200 do

      for j:=1 to 300 do

          Img2.canvas.Pixels[i,j]:=Img1.canvas.Pixels[i,j];

end;

procedure TForm1.BtMiroir2Click(Sender: TObject);
Var
i,j:INTEGER;

begin

   for i:=1 to 300 do

       for j:=1 to 300 do

       begin

            Img2.canvas.Pixels[300-i,200-j]:=Img1.canvas.Pixels[i,j];
            Img2.canvas.Pixels[300-i,j]:=Img1.canvas.Pixels[i,j];
       end;

end;

procedure TForm1.BtMiroir3Click(Sender: TObject);
var
  i,j:INTEGER;

begin

   for i:=1 to 300 do

       for j:=1 to 300 do

       begin

            Img2.canvas.Pixels[300-i,200-j]:=Img1.canvas.Pixels[i,j];

       end;
end;

end.

