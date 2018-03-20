uses wincrt;
var n:integer;

function premier (x:integer):boolean;
var
i:integer;
ok:boolean;
begin
i:=2;
ok:=true;
while ((i<(x div 2)) and (ok=true)) do
begin
if (x mod i=0) then
ok:=false;
i:=i+1;
end;
premier:=ok;
end; 
 
procedure fact_prem(n,i:integer);
begin
 
if(n=i) then
write(i)
else if ((n mod i=0) and (premier(i))) then
begin
write(i,'+');
fact_prem(n div i,i);
end
else
fact_prem(n,i+1);
end;

begin
write('n= ');
readln(n);
fact_prem(n,2);
end.