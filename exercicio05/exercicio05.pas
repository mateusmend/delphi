unit exercicio05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function IsPalindromo(Palavra : String): Boolean ;stdcall;
      external 'dll.dll' name 'IsPalindromo';
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if IsPalindromo(edit1.Text) = true then
  memo1.Text := 'É Palindromo'
  else
  memo1.Text := 'Não é Palindromo'

end;

end.
