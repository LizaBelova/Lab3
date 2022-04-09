program first2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
   str: string;
  i, j: Integer;
     f: Boolean;

begin
  str := '';
  f := true;
  i := 1;
  while (f) do
  begin
    str := '';
    str := str + '01';
    for j := 1 to i do
    str := str + '2';
    writeln(str);
    i := i + 1;
    Sleep(999);
  end;
end.
 
