program mai_14h;
uses wincrt;
type mat=array[1..5,1..5] of char;
var ft:text; mess,motcle:string; m:mat;
function verifdouble(ch:string):boolean;
var ok:boolean; i,j:integer; c:char;
begin
 i:=1; ok:=true;
 repeat
 c:=ch[i];j:=1;
 repeat
 if(j<>i) and (ch[j]=c)then
 ok:=false
 else
 j:=j+1;
 until(j>length(ch)) or (ok=false);
 i:=i+1;
 until (i>length(ch)) or (ok=false);
 verifdouble:=ok;
 end;
{******** fonction verif1 *****}
function verif1(ch:string):boolean;
var ok1,ok2:boolean; i:integer;
begin
 ok1:=true; i:=1;
 {****** verifie si le mot contient des lettres majuscules sans W'}
 while (ok1) and (i<=length(ch) )do
 if(ch[i] in ['A'..'V','X'..'Z'])then
 i:=i+1
 else
 ok1:=false;
 ok2:=verifdouble(ch);
 verif1:= (ok1) and (ok2);
end;
 {****** verifie si le mot contient des lettres
majuscules sans W'}
function verif2(ch:string):boolean;
var ok:boolean; i:integer;
begin
 ok:=true; i:=1;
 while (ok) and (i<=length(ch) )do
 if(ch[i] in ['A'..'Z',' '])then
 i:=i+1
 else
 ok:=false;
 verif2:= ok;
end;
{********* affichage matrice **********}
 procedure affichemat(v:mat);
 var i,j:integer;
 begin
 for i:=1 to 5 do
 begin
 for j:=1 to 5 do
 write(v[i,j]:5);
 writeln;
 end;
 end;
{******* remplissage matrice ***********}
procedure remplirM(var M:mat;ch:string);
var ok:boolean; i,j,l:integer; c:char;
begin
 i:=0;l:=1;j:=0;
 repeat
 i:=i+1;
 j:=1;
 repeat
 m[i,j]:=ch[l];
 l:=l+1;
 j:=j+1;
 until(l>length(ch)) or(j>5);

 until (l>length(ch));
 c:='A' ;
 repeat
 if(pos(c,ch)=0)and (c<>'W')then
 if(j<=5) then
 begin
 m[i,j]:=c;
 j:=j+1;
 end
 else
 begin
 j:=1;
 i:=i+1;
 m[i,j]:=c;
 j:=j+1;
 end;
 c:=succ(c);
 until (i>5);
 end;
 function crypter(c:char;m:mat):string;
 var chi,chj,chcry:string;i,j:integer;
 begin
 for i:=1 to 5 do
 for j:=1 to 5 do
 if(m[i,j]=c)then
 begin
 str(i,chi);
 str(j,chj);
 chcry:=chi+chj;
 end;
 crypter:=chcry;
 end; 
 procedure remplirF(var ft:text; m:mat;mess:string);
var chcry,ch1:string; i:integer;
begin
 assign(ft,'mess_crypte.txt');
 rewrite(ft);
 chcry:='';
 for i:=1 to length(mess) do
 if(mess[i]=' ')then
 chcry:=chcry+' '
 else
 begin
 ch1:=crypter(mess[i],m);
 chcry:=chcry+ch1;
 end;
 writeln(ft,chcry);
 writeln(chcry);
 end;

{******* programmme principal ********}
begin
assign(ft,'E:\pas\mess_crypte.txt');
repeat
 writeln('saisir Le mot cl�: '); readln(motcle);
 until(verif1(motcle));
writeln;
writeln('--------------------------------------------');
writeln;
 repeat
writeln('saisir Le message à crypter '); readln(mess);
 until(verif2(mess));
remplirM(M,motcle);
writeln;
writeln('--------------------------------------------');
writeln;
affichemat(m);
writeln;
writeln('--------------------------------------------');
writeln;
remplirF(ft,m,mess);
end. 