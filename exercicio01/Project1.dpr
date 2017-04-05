program Project1;

uses
  Vcl.Forms,
  exercicio01 in 'exercicio01.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
