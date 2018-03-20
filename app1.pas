Uses wincrt ;
type
tab=array[1..10] of integer;
var
T:tab;
m:tab;
n:integer;
procedure remplir(var t:tab;var n:integer);
var i:integer;
begin
repeat
write('n= ');
read(n);
until(n in[4..25]);
for i:=1 to n do
begin
write('T[',i,']= ');
read(T[i]);
end;
end;
function recherche_dicho(T:tab;n:integer;v:integer):boolean;
var a,b,mi:integer;trouve:boolean;
begin
a:= 1 ; b:= n; trouve:=false;
repeat
mi:=(a+b) div 2;
if T[mi]=v then trouve:=true else
if T[mi]>v then b:=mi-1 else a:=mi+1;
until (trouve)or (a>b);
recherche_dicho:=trouve;
end;

procedure 
begin
remplir(t,n);
end.