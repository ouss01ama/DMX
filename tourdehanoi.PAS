program tourhanoi;
  uses crt;
type
socle=char;
var a,b,c:socle;  {a:depart b:intermediare c: arrive}
    n:integer;
    i:integer;
procedure deplace( x,y:socle);
begin
i:=i+1;
textcolor(10);{hors programe}
writeln('deplacement ',i,' de ',x,' vers ',y);
delay(1000);delay(1000);delay(1000);{hors programe}

end;


procedure hanoi(a,b,c:socle; n:integer);
begin
if n=1 then deplace(a,c)
   else
       begin
       hanoi(a,c,b,n-1);
       deplace(a,c);
       hanoi(b,a,c,n-1);
       end;
end;
BEGIN  {program principale}
clrscr;
textcolor(15);
write('appoyer sur une touche....');
readln;
repeat
clrscr;
i:=0;
textcolor(12);{hors programe}
writeln(' ',' entrer 0 si vous voulez quitter ce programme');
writeln('') ;
write('Entrez le nombre  de disque: ');
readln(n);
a :='A';
b:='B'  ;
c:='C';
textcolor(15); {hors programe}
writeln('start');{hors programe}
hanoi(a,b,c,n);
textcolor(15);{hors programe}
writeln('stop');{hors programe}
textcolor(12); {hors programe}
writeln('Nombre de transformation = ',i);
readln;
until
n=0;
end.
