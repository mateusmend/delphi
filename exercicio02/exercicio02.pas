unit exercicio02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Resultado: TLabel;
    Button2: TButton;
    Memo2: TMemo;
    Label1: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TNumDivisor = class(TComponent)
    function Divisores(valor: Integer): Integer;
  private
    { private declarations }
  public
    { public declarations }
  end;

  TNumPrimo = class(TNumDivisor)
    function IsNumeroPrimo(valor: Integer): Boolean;
  private
    { private declarations }
  public
    { public declarations }
  end;
var
  Form1: TForm1;

implementation
{$R *.dfm}
function TNumDivisor.Divisores(valor: Integer): Integer;
var
  I,contador: Integer;
begin
    contador := 0;
    for I := 1 to valor do
    begin
       if valor mod I = 0
       then inc(contador);
    end;
    Result := contador;
end;


function TNumPrimo.IsNumeroPrimo(valor: Integer): Boolean;
var
  aux: integer;
begin
Result := false;
    aux := Divisores(valor);
     if aux = 2 then
     begin
        Result := true;
     end;
end;

procedure TForm1.Button1Click(Senders: TObject);
begin
    Memo1.Text := IntToStr(TNumDivisor.Create(Self).Divisores(StrToInt(Edit1.Text)));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if TNumPrimo.Create(Self).IsNumeroPrimo(StrToInt(Edit2.Text)) = true then
  begin
    Memo2.Text := 'True'
  end
  else
  begin
    Memo2.Text := 'false'
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
end;

end.
