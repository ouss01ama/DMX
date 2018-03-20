uses wincrt;
var
n,p:integer;
procedure affiche(n:integer);
var ch,pp:string;
begin

p:=0;
ch:='';
while(n>0) do
begin
if n mod 2=1 then
begin
str(p,pp);
ch:=ch+'2^'+pp+'+';
end;
p:=p+1;
n:=n div 2;

end;
delete(ch,length(ch),1);
write(ch);
end;
begin
write('n= ');readln(n);
affiche(n);
end.