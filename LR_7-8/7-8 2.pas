program z2;
var 
  a : string;
begin
  writeln('Введите строку: ');
  readln(a); // считывание строки
  writeln(a, ', ', a, ', ', a); // вывод строки три раза 
  writeln('Количество символов в строке: ', Length(a)); // вывод количества символов
end.
  