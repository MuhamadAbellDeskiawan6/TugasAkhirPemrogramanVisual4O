program Project1;

uses
  Forms,
  Unit1 in 'unit1\Unit1.pas' {Form1},
  Unit2 in 'unit2\Unit2.pas' {Form2},
  Unit3 in 'unit3\Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
