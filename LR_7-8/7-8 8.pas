﻿program z8;
var
  a : string;
  i : integer;
begin
  write('Введите строку: ');
  readln(a); // считывание строки
  
  for i := 1 to length(a) do // цикл, для нахождения символов в строке
  begin
    if (a[i] = 'x') then // нахождение символа х
    begin
      writeln('Первым встретился символ ''x''.');
      break; // если нашелся х, то выход из цикла 
    end
    else if (a[i] = 'w') then // иначе ищем символ w
    begin       
      writeln('Первым встретился символ ''w''.');
    break; // если нашелся, то выход из цикла 
  end;
 end;
  writeln('Символы ''x'' и ''w'' не встретились в строке.'); // если данные символы не нашлись вывод сообщения
end.