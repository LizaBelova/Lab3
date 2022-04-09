program second1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  str: string;
    i: Integer;
    f: Boolean;
begin
  Writeln('Vvedite chislo');
  readln(str);
  f := True;
  if Length(str) = 0 then
    write('YES')
  else
  begin
    for i := 1 to Length(str) do
    begin
      if (str[i] <> '1') and (str[i] <> '0') and (str[i] <> '2') then
      begin
        f := False;
        write('NO');
        Break;
      end;
    end;
    if f = True then
      for i := 1 to Length(str) do
      begin
        if str[i] <> '0' then
        begin
          write('YES');
          Break;
        end;
        if (i = Length(str)) and (str[i] = '0') then
        begin
          write('NO');
          Break;
        end;
      end;
  end;
  Sleep(99999);
end.

