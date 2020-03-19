program chiffres;
uses wincrt;
type
    tab=array[1..100] of char;
var
    t:tab;
    ch:string;
    N:integer;
function verif(var ch:string):boolean;
begin
	verif:=true;
	if ch[1] = ch[2] then
        verif:=false;
    if not (ch[length(ch)] in ['0'..'9']) then
        verif:=false;
    if length(ch) <15 then
        verif:=false;
end;
procedure remove(var t:tab;ch:string);
var
    i,j:integer;
begin
	j:=0;
	for i:=1 to length(ch) do
	begin
		if ch[i] in ['0'..'9'] then
		begin
			j:=j+1;
			t[j]:=ch[i];
        end;
    end;
    N:=j;
end;
procedure affiche(t:tab;N:integer);
var
    i:integer;
begin
	for i:=1 to N do
        writeln('t[',i,']=',t[i]);
end;
begin
	repeat
        writeln('sasir ch');
        readln(ch);
    until verif(ch);
    remove(t,ch);
    affiche(t,N);
end.