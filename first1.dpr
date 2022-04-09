program first1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  str: string;
    i: Integer;
begin
  Writeln('Vvedite chislo');
  read(str);
  if (Length(str) < 3) then
    write('NO')
  else
    for i := 1 to Length(str) do
    begin
      if (i = 1) and (str[i] <> '0') then
      begin
        write('NO');
        Break;
      end;
      if (i = 2) and (str[i] <> '1') then
      begin
        write('NO');
        Break;
      end;
      if (i = 3) and (str[i] <> '2') then
      begin
        write('NO');
        Break;
      end;
      if (str[i] <> '2') and (i > 3) then
      begin
        write('NO');
        Break;
      end;
      if (i = Length(str)) then
        write('YES');
    end;
  Sleep(99999);
end.

