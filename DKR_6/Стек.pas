program StackILYXA;
const
  MAX_SIZE = 10;
type
  TStack = record
    Xran: array[1..MAX_SIZE] of Integer;
    Verx: Integer;
  end;
  
procedure Ystanovka(var S: TStack);
begin
  S.Verx := 0;
end;

function Pysto(const S: TStack): Boolean;
begin
  Pysto := S.Verx = 0;
end;

function Fuel(const S: TStack): Boolean;
begin
  Fuel := S.Verx = MAX_SIZE;
end;

procedure Push(var S: TStack; Value: Integer); //функция добавления числа в вершину стека
begin
  if not Fuel(S) then
  begin
    Inc(S.Verx); //увеличивает значение переменной x на 1
    S.Xran[S.Verx] := Value;
  end
  else //Если стек уже полон, то выводится сообщение
    writeln('Стек полон');
end;

function Pop(var S: TStack): Integer; //функция удаления числа из стека
begin
  if not Pysto(S) then
  begin
    Pop := S.Xran[S.Verx];
    Dec(S.Verx);
  end
  else //Если стек пуст, выводится сообщение и возвращается -1
  begin
    writeln('Стек пуст');
    Pop := -1;
  end;
end;

procedure PrintStack(const S: TStack); //вывод всех элементов стека
var
  i: Integer;
begin
  if not Pysto(S) then
  begin
    writeln('Содержимое стека:');
    for i := 1 to S.Verx do
      writeln(S.Xran[i]);
  end
  else
    writeln('Стек пуст');
end;

var
  MyStack: TStack;
  choice, Value: Integer;
begin
  Ystanovka(MyStack);

  repeat
    writeln('1. Добавить элемент в стек');
    writeln('2. Удалить элемент из стека');
    writeln('3. Печать стека');
    writeln('4. Выход');
    readln(choice);

    case choice of
      1: begin
        writeln('Введите значение для добавления в стек: ');
        readln(Value);
        Push(MyStack, Value);
        writeln('Элемент добавлен в стек.');
      end;
      2: begin
      writeln('Удаленный элемент: ', Pop(MyStack));
      writeln('Элемент удален из стека.');
      end;
      3: begin
      PrintStack(MyStack);
    end;
    end
  until choice = 4;
end.
