program Project1;

uses
  Forms,
  Unit1 in 'unit1\Unit1.pas' {Form1},
  Unit2 in 'unit2\Unit2.pas' {Form2},
  Unit3 in 'unit3\Unit3.pas' {Form3},
  Unit4 in 'unit4\Unit4.pas' {Form4},
  Unit5 in 'unit5\Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
