program third2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c, i, j: Integer;
    f2, f: Boolean;
begin
  f := True;
  f2 := f;
  i := 2;
  while (f) do
  begin
    for j := 2 to Round(Sqrt(i)) do
      if i mod j = 0 then
        f2 := False;
    if (f2 = True) then
    begin
      writeln(i);
      Sleep(999);
    end;
    i := i + 1;
    f2 := True;
  end;
end.
 
