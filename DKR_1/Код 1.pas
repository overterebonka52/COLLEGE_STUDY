﻿var
x, y: real;
begin

writeln('Введите значение x: ');
readln(x);

if x < -8 then
y := cos(2*x) / cos(2*x) + x*sqr(x)
else if (x >= -8) and (x < -5) then
y := x * power(x, 0.1 * x) + power(x, 1 / 3) / sin(x)
else if (x >= -5) and (x < 4) then
y := x*sqr(x)*34 - x*sqr(x)
else
y := sqr(x) + 37;

writeln('f (', x:0:2, ') = ', y:0:2);
end.
