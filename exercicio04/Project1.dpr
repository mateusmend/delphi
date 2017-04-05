program Project1;

uses
  Vcl.Forms,
  exercicio04 in 'exercicio04.pas' {Form1},
  Thread in 'Thread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
