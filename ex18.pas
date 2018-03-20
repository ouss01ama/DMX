uses wincrt;
var
n:integer;
x:string; c:real;
function calculrec(a,b:integer;ch:string):string;
begin
if (b=1)then
begin
ch:=ch+chr(a+48);
calculrec:=ch;
end
else
begin
ch:=ch+chr(a+48)+'+';
calculrec:=calculrec(a,b-1,ch);
end;
end;
begin
write('n= ');readln(n);
c:=1/n-1;
x:=calculrec(n,c-1,'');
write('S(',n,')',x);
end.
