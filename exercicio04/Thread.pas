unit Thread;

interface

uses
  System.Classes,System.SysUtils;

type
  ThreadSabium = class(TThread)
    function ContarPalavra(path : string): string;
  protected
    procedure Execute; override;
  end;

implementation


procedure ThreadSabium.Execute;
begin
  NameThreadForDebugging('TreadSabium');
end;

function ThreadSabium.ContarPalavra(path : string): string;
var
    arq: TextFile;
    linha: string;
  I, contador: Integer;
begin
  contador := 0;
  AssignFile(arq, path);

  {$I-}
  Reset(arq);
  {$I+}

  if (IOResult <> 0)
     then Result := 'Nenhuma palavra encontrada'
  else begin
    while (not eof(arq)) do
      begin

        readln(arq, linha);
        for I := 1 to Length(linha) do
        begin
        if linha[I] = ' ' then
          inc(contador);
        end;
    end;
    if contador <> 0
    then Result := IntToStr(contador);

    CloseFile(arq);
  end;
end;

end.
