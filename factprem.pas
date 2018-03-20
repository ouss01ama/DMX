uses wincrt;
var n,i:integer;

procedure fact_prem(n,i:integer);
begin 
if(n=1) then writeln(1); 
if (n mod i=0) then 
begin 
write(i,'*');
if (i<n) then 
fact_prem(n div i,i); 
end 
else if (i<n) then
fact_prem(n,i+1) 
end;
begin
write('n= ');read(n);
write('i= ');read(i);
fact_prem(n,i);
end.
