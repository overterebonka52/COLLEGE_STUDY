uses GraphABC, draw_block;

var
n: Integer;
x1, y1, x2, y2: Real;

Procedure KeyDown(key: integer);
begin
case key of
VK_W: if n div 3 >3 then n := n div 3;
VK_S: if n*3 < x2-x1 then n := n*3;
VK_Z: begin x1-=10; y1+=10; x2+=10; y2-=10 end;
VK_X: begin x1+=10; y1-=10; x2-=10; y2+=10 end;
VK_Left: begin x1-=10; x2-=10 end;
VK_Right: begin x1+=10; x2+=10 end;
VK_Up: begin y1-=10; y2-=10 end;
VK_Down: begin y1+=10; y2+=10 end;
end;
Window.Clear;
Rectangle(Round(x1), Round(y1), Round(x2), Round(y2));
kover(x1, y1, x2, y2, n);
ReDraw;
end;
begin
SetWindowCaption('Фракталы: Ковер Серпинского');
x1 := 20; y1 := 20; x2 := 460; y1 := 460; n := round((x2-x1) / (3*3*3));
LockDrawing;
KeyDown(1);
OnKeyDown += KeyDown;
end.