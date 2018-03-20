program snakeGame;
uses wincrt,windos;
type
snakeplace=record
x,y:integer;
body:char;
end;
tabSnake=array [1..99]of snakeplace;
mat=array [1..99,1..99] of char;

var
sp:tabsnake;
stage:mat;
appelX,AppelY,score,snakeLength,MoveX,MoveY,NewTimer,tmpNewTimer:integer;
c,lastderection:char;
tmptimer:real;


function timer:integer;
var h,m,s,ms:word;
s1:integer;
begin
getTime(h,m,s,ms);
timer:=s;
end;

Procedure MoveSnake(var MoveX, MoveY:Integer);
begin
 if upcase(c)='Z' then
 begin
  MoveX:=0;
  MoveY:=-1;
 end
 else
 if upcase(c)='S' then
 begin
  MoveX:=0;
  MoveY:=1;
 end
 else
 if upcase(c)='D' then
 begin
  MoveX:=1;
  MoveY:=0;
 end
 else
 if upcase(c)='Q' then
 begin
  MoveX:=-1;
  MoveY:=0;
 end
end;
procedure scoredetect;
 begin
  if (appelX=sp[1].x) and (appelY=sp[1].Y) then
   begin
    appelX:=random(78)+1;
    appelY:=random(23)+1;
    snakeLength:=snakeLength+1;
    score:=score+1;
    sp[snakeLength].x:=sp[snakeLength-1].x;
    sp[snakeLength].y:=sp[snakeLength-1].y;
    sp[snakeLength].body:='o';
   end;
 end;
 procedure pausedetect;
  begin
   if upcase(c)<>'P' then
   begin
    lastderection:=c;
   end else
   begin
    c:=lastderection;
    gotoxy(40,14);
    write('game paused press enter to continu',c,lastderection);
    readln;
    tmpTimer:=timer-1;
   end;
  end;

procedure snake;
 var i:Integer;
begin
randomize;
 appelX:=random(78)+1;
 appelY:=random(23)+1;
 sp[1].x:=2;sp[1].y:=2;sp[1].body:='O';
 sp[2].x:=1;sp[2].y:=2;sp[2].body:='o';
 sp[3].x:=0;sp[3].y:=2;sp[3].body:='o';
 snakeLength:=3;
 tmpTimer:=timer;
 MoveX:=1;
 MoveY:=0;
 repeat
  NewTimer:=NewTimer+1;
  gotoxy(39,12);
  write('Loading');
 until timer=tmptimer+1;

 repeat
  gotoxy(50,20);
  write(NewTimer);
  if keypressed then
  begin
   c:=readkey;
  end;

  MoveSnake(MoveX,MoveY);
  tmpNewTimer:=tmpNewTimer+1;
  if tmpnewTimer>NewTimer then tmpNewTimer:=0;
  if tmpNewTimer=newtimer div 2 then
   begin
    tmpTimer:=timer;
    clrscr;
    gotoxy(appelx,appely);
    write('+');
    for i:=snakelength downto 2 do
     begin
      sp[i].x:=sp[i-1].x;
      sp[i].y:=sp[i-1].y;
      gotoxy(sp[i].x,sp[i].y);
      write(sp[i].body);
     end;
     sp[1].x:=sp[1].x+MoveX;
     sp[1].y:=sp[1].y+MoveY;
     gotoxy(sp[1].x,sp[1].y);
     write(sp[1].body);
   end;
   scoredetect;
   {diedetect(die);}
   pausedetect;
 until snakelength=50;
end;

begin
snake;
end.