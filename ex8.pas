uses wincrt;
var p,q:integer;
c:string;
function rec (a,b:integer;ch:string):string;
begin
if(b=1) then
begin
ch:=ch+chr(a+48);
rec:=ch;
end
else
begin
ch:=ch+chr(a+48)+'+';
rec:=rec(a,b-1,ch);
end;
end;
 begin
 write('p= ');readln(p);
 write('q= ');readln(q);
 c:=rec(p,q,'');
 write(p,'x',q,'=',c);
 end.

 