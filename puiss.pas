uses wincrt;
var
x,n:integer;
function puissance(n,x:integer):integer;
begin
if x=0 then
puissance:=1
else
puissance:=n*puissance(n,x-1);
end;
begin
write('n= ');readln(n);
write('x= ');readln(x);
write('= ',puissance(n,x));
end.