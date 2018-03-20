uses wincrt;
type
tab= array [1..20] of integer;
var
t:tab;
n,ma,mi:integer;

procedure remplie (var t:tab;n:integer);
var
i:integer;
begin
for i:= 1 to n do
begin
write('t[',i,']=');
readln(t[i]);
end;
end;

function max ( t:tab;n,i,m:integer):integer;
begin
if (i>n)    then
max:=t[m]
else if(t[m]<t[i]) then
max:=max(t,n,i+1,i)
else
max:=max(t,n,i+1,m);
end;

function min ( t:tab;n,i,m:integer):integer;
begin
if (i>n) then
min:=t[m]
else if(t[m]>t[i])  then
min:=min(t,n,i+1,i)
else
min:=min(t,n,i+1,m);
end;

begin
write('n=');
readln(n);
remplie(t,n);
ma:=max(t,n,2,1);
mi:=min(t,n,2,1);
write('maximum=',ma,'   minimum=',mi);
end.