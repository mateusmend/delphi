unit exercicio01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    function RemoveAcentos(Texto: String): String;
    function CountPos(const subtext: string; Text: string): Integer;
    function Percentual(textointeito: string; letra: string): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
const
    Letras: array[1..26] of string = ('a','b','c','d','e','f','g','h',
         'i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
var
    arquivo: TextFile;
    linha: string;
    textoTotal: string;
    I: integer;
begin
  Memo1.Clear;
  AssignFile(arquivo, Edit1.Text);
  {$I-}
  Reset(arquivo);
  {$I+}
  if (IOResult <> 0)
     then Memo1.Lines.Add('Erro na abertura do arquivo !!!')
  else
  begin
    while (not eof(arquivo)) do
    begin
      readln(arquivo, linha);
      if(linha <> '')
      then textoTotal := textoTotal + linha;
    end;
    memo1.Lines.Add('Quantidade de caracteres total: '+ IntToStr(Length(textoTotal)));
    textoTotal := RemoveAcentos(textoTotal);
    for I := 1 to Length(Letras) do
    begin
      memo1.Lines.Add(Letras[I]+': '+percentual(textoTotal,Letras[I])+'%');
    end;
    CloseFile(arquivo);
    end;
end;

function TForm1.CountPos(const subtext: string; Text: string): Integer;
begin
  if (Length(subtext) = 0) or (Length(Text) = 0) or (Pos(subtext, Text) = 0)
  then
    Result := 0
  else
    Result := (Length(Text) - Length(StringReplace(Text, subtext, '',
      [rfReplaceAll]))) div Length(subtext);
end;

function TForm1.RemoveAcentos(Texto: String): String;
Const ComAcento = '����������������������������';
 SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var iFor : Integer;
begin
   for iFor := 1 to Length(Texto) do begin
      if Pos(Texto[iFor],ComAcento) <> 0 then begin
         Texto[iFor] := SemAcento[Pos(Texto[iFor],ComAcento)];
      end;
   end;
   Result := Texto;
end;

function TForm1.Percentual(textointeito: string; letra: string): String;
var
  quantidade: integer;
begin
  quantidade := CountPos(letra,textointeito.ToLower);
  Result := FloatToStr(quantidade*100/Length(textointeito));
end;


end.
