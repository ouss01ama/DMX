uses wincrt;
var
p,q:integer;
function multi(q,p:integer):integer;
var k:integer;
begin
if q=0 then
multi:=0
else
multi:=(p+p)*q div 2
end;


begin
write('p : ');readln(p);
write('q : ');readln(q);
write('pxq=',multi(q,p));
end.