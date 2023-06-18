program Project1;

uses
  Forms,
  Unit1 in 'unit1\Unit1.pas' {Form1},
  Unit2 in 'unit2\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
