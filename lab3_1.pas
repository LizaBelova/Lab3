program lab3_1;
procedure Inspection;
var
  str: string;
    i: Integer;
begin
  Write('Введите число: ');
  Read(str);
  if (Length(str) < 3) then
    Write('NO')
  else
    for i := 1 to Length(str) do
    begin
      if (i = 1) and (str[i] <> '0') then
      begin
        Write('NO');
        Break;
      end;
      if (i = 2) and (str[i] <> '1') then
      begin
        Write('NO');
        Break;
      end;
      if (i = 3) and (str[i] <> '2') then
      begin
        Write('NO');
        Break;
      end;
      if (str[i] <> '2') and (i > 3) then
      begin
        Write('NO');
        Break;
      end;
      if (i = Length(str)) then
        Write('YES');
    end;
end;

procedure Conclusion;
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
    Writeln(str);
    i := i + 1;
    Sleep(555);
  end;
end;

Begin
  Inspection;
  Writeln();
  Writeln('Числа из множества A:');
  Conclusion;
End.