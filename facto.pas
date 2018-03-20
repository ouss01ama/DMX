uses wincrt;
var
n:integer;
function factorielle(n:integer):longint;
begin
if (n=0) then
factorielle:=1 else
factorielle:=n*factorielle(n-1);
end;
begin
write('n= ');readln(n);
write('le factorielle est ' ,factorielle(n));
end.