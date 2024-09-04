program z3;
var
  a: string;
  b: integer;
begin
  write('Введите строку: ');
  readln(a);

  if Length(a) = 0 then // если в строке нет элементов, то строка пустая
    writeln('Строка пуста')
  else
  begin
    writeln('Первый символ: ', a[1]); // нахождение первого символа
    writeln('Последний символ: ', a[Length(a)]); // нахождение последнего символа 
    
    b := Length(a) div 2; // нахождение среднего символа
    
    if Length(a) > 1 then // цикл для вывода среднего символа
      writeln('Средний символ: ', a[b + 1]);
  end;
end.