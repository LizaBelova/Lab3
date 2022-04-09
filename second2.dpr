program second2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i, j, r: Integer;
      str: string;
        f: Boolean;

begin
  str := '';
  f := True;
  Randomize;
  i := 1;
  while (f) do
  begin
    str := '';
    if i = 1 then
    begin
      r := Random(2);
      if r = 1 then
        writeln('1')
      else
        writeln('2');
      Sleep(999);
      i := i + 1;
    end
    else
    begin
      for j := 1 to i - 1 do
      begin
        r := random(3);
        if r = 0 then
          str := str + '0';
        if r = 1 then
          str := str + '1';
        if r = 2 then
          str := str + '2';
      end;
      r := random(3);
      if r = 2 then
        str := str + '2'
      else
        str := str + '1';
      writeln(str);
      Sleep(999);
      i := i + 1;
    end;
  end;
end.
 
