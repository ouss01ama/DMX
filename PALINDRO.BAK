uses wincrt;
var
ch:string;
function palindrome(ch:string):boolean;
begin
if length(ch) <=1 then
palindrome:=true
else if ch[1]<> ch[length(ch)]then
palindrome:=false
else
palindrome:=palindrome(copy(ch,2,length(ch)-2));
end;
begin
write('ch=');readln(ch);
write('le palindrome est ',palindrome(ch));
end.
