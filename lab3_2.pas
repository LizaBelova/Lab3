program lab3_2;
procedure Inspection;
var
  str: string;
    i: Integer;
    f: Boolean;
begin
  Write('Введите число: ');
  Readln(str);
  f := True;
  if Length(str) = 0 then
    Write('YES')
  else
  begin
    for i := 1 to Length(str) do
    begin
      if (str[i] <> '1') and (str[i] <> '0') and (str[i] <> '2') then
      begin
        f := False;
        Write('NO');
        Break;
      end;
    end;
    if f = True then
      for i := 1 to Length(str) do
      begin
        if str[i] <> '0' then
        begin
          Write('YES');
          Break;
        end;
        if (i = Length(str)) and (str[i] = '0') then
        begin
          Write('NO');
          Break;
        end;
      end;
  end;
end;

procedure Conclusion;
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
        Writeln('1')
      else
        Writeln('2');
      Sleep(555);
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
      Writeln(str);
      Sleep(555);
      i := i + 1;
    end;
  end;
end;

Begin
  Inspection;
  Writeln();
  Writeln('Числа из множества B:');
  Conclusion;
End.
