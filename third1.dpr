program third1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c, i: Integer;
     f: Boolean;
begin
  Writeln('Vvedite chislo');
  Readln(c);
  f := True;
  if (c < 2) then
    write('NO')
  else
  begin
    for i := 2 to Round(Sqrt(c)) do
      if c mod i = 0 then
      begin
        write('NO');
        f := False;
        Break;
      end;
    if f = True then
      write('YES');
  end;
  Sleep(9999);
end.
 
