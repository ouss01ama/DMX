uses wincrt;
type
enrg=record
mpas,force:string;
socre:integer;
end; 
f_force=file of enrg;
var
f:text;
f1:f_force;
mp:text;
ch:string;
min,maj:integer;
procedure generer(var f1:f_force;var f:text);
var e:enrg;
begin
reset(f1);rewrite(f);
while not(eof(f1)) do
begin
read(f1,e);
if e.force='tres fort' then
writeln(f,e.mpas);
end;
writeln(f);
reset(f1);
while not(eof(f1)) do
begin
read(f1,e);
if e.force='fort' then
writeln(f,e.mpas);
end;
close(f1);
close(f);
end;
procedure nb_min_maj(ch:string;var min,maj:integer);
var i:integer;
begin
min:=0; maj:=0;
for i:= 1 to length(ch) do
begin
if ch[i] in ['A'..'Z'] then
maj:=maj+1;
end;
begin
if ch[i] in ['a'..'z'] then
min:=min+1;
end;
end;
procedure genererforce(var mp:text;var f1:f_force);
var ch:string;r:enrg;
begin
reset(f1);
rewrite(mp);
while not (eof(mp)) do
begin
writeln(mp,ch);
r.mpas:=ch;
nb_min_maj(ch,min,maj);
r.score:=length(ch)*4 +(length(ch)-min)*2 +(length(ch)-maj)*3+(length(ch)-(min+maj))*5 -seqmax(ch,'a','z')*2 -seqmax(ch,'A','Z')*2;
begin
if r.score<20 then
r.force:='tres faibe'
else if r.score<40 then
r.force:='faible'
else if r.score<60 then
r.force:='moyenne'
else if r.score<80 then
r.force:='fort'
else
r.force:='tres fort';
end;
write(r,f1);
end;
close(f1);
close(mp);
end;




begin
assign(f,'G:\oussama\oussama+marwen\oussama+marwen\oussama\bac\mdfort.txt');
assign(f1,'G:\oussama\oussama+marwen\oussama+marwen\oussama\bac\forcemdp.dat');
generer(f1,f);
end.