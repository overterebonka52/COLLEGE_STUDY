program z1;
var
  a, b, c : string;
  i : integer;
begin
  writeln('Введите строку: ');
  readln(c); // считывание строки
  a := 'Nikolay'; // присвоение переменным имена
  b := 'Oleg';
  
  for i := 1 to Length(c) do begin // цикл для перебора слов в строке
    if Copy(c, i, Length(a)) = a then // копирование слова
      begin
      Delete(c, i, Length(a)); // удаление слова
      Insert(b, c, i); // замена слова
  end;
end;
writeln(c);
end.