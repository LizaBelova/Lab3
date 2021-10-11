program lab3_3;
procedure Inspection;
var
  c, i: Integer;
     f: Boolean;
begin
  Write('Введите число: ');
  Readln(c);
  f := True;
  if (c < 2) then
    Write('NO')
  else
  begin
    for i := 2 to Round(Sqrt(c)) do
      if c mod i = 0 then
      begin
        Write('NO');
        f := False;
        Break;
      end;
    if f = True then
      Write('YES');
  end;
end;

procedure Conclusion;
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
      Writeln(i);
      Sleep(555);
    end;
    i := i + 1;
    f2 := True;
  end;
end;

Begin
  Inspection;
  Writeln();
  Writeln('Числа из множества C:');
  Conclusion;
End.
