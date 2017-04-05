unit Teste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, exercicio03;

type
  TForm1 = class(TForm)
    ProperEdit1: TProperEdit;
    procedure ProperEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm} 
procedure TForm1.FormCreate(Sender: TObject);
begin
    ProperEdit1.Text := 'mateus mendonça';
end;

procedure TForm1.ProperEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     ProperEdit1.Text := ProperEdit1.TratarTexto(ProperEdit1.Text);
end;

end.
