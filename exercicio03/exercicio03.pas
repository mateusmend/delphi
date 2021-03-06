unit exercicio03;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  TProperEdit = class(TEdit)
    function TratarTexto(texto : String): String;
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Sabium', [TProperEdit]);
end;
function TProperEdit.TratarTexto(texto : String): String;
var
I, aux: integer;
begin
    for I := 1 to Length(texto) do
    begin
      aux := I;
      if texto[I] = ' ' then
      begin
        Result := Result + ' ' + UpperCase(texto[I+1]);
      end;
      Result := Result + texto[I];
    end;

end;
end.
