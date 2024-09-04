program z11;
var
  a : string;
begin
  writeln('Введите строку: ');
  readln(a); // считывание строки
  
  if Length(a) > 10 then // если длина строки больше 10
    a := copy(a, 1, 6) // то выделяем первые 6 элементов
else
 while Length(a) < 12 do // иначе пока строка меньше 12
   a := a + 'x'; // то прибавляем в конец x
    writeln('Результат: ', a);
end.