program grande;
uses wincrt;
type
    tab=array[1..1000] of string;
var
    t:tab;
    ch:string;
    num:integer;
function verif(var ch:string):boolean;
var
    i:integer;
begin
        verif:=false;
        for i:=1 to length(ch) do
        begin
        	if ch[i]=' ' then
                verif:=true;
        end;
end;
procedure remove(var t:tab;ch:string);
var
    i,j:integer;
begin
	i:=0;
	j:=1;
	while(i<length(ch)) do
	begin
		i:=i+1;
        if ch[i] <> ' ' then
            t[j]:=t[j]+ch[i]
        else if ch[i] = ' ' then
            j:=j+1;
    end;
    num:=j;
end;
function grand(t:tab;num:integer):string;
var
    i:integer;
    max:string;
begin
	max:=t[1];
	for i:=1 to num do
    begin
    	if length(t[i]) > length(max) then
            max:=t[i];
    end;
    grand:=max;
end;
begin
	repeat
         writeln('saisir ch');
        readln(ch);
    until verif(ch);
	remove(t,ch);
	writeln(grand(t,num));
end.