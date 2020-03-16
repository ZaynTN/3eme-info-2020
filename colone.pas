program colon;
uses wincrt;
type
    matrice=array[1..3,1..3]of integer;
var
    M:matrice;
    N:integer;
procedure saisir(var N:integer);
begin
        writeln('saisir n');
        readln(N);
end;
procedure remplir(var M:matrice;N:integer);
var
    i,j:integer;
begin
	for i:=1 to N do 
	begin
		for j:=1 to N do
		begin
			writeln('saisir M[',i,',',j,']');
			readln(M[i,j]);
        end;
    end;
end;
function somme(M:matrice;var j:integer;N:integer):integer;
var
    i,s:integer;
begin
	s:=0;
	for i:=1 to N do
       s:=s+M[i,j];
    somme:=s;
end;
procedure permiter(var a,b:integer);
var
    c:integer;
begin
	c:=a;
	a:=b;
	b:=c;
end;
procedure tricolone(var M:matrice;N:integer);
var
    i,j,k,l:integer;
    permitation:boolean;
begin
	repeat
	permitation:=false;
	l:=0;
        for i:=1 to N-1 do
        begin
            for j:=1 to N-1 do 
            begin
            	l:=j+1;
            	if somme(M,j,N)<somme(M,l,N) then
            	begin
            		for k:=1 to N do 
            		begin
                        permiter(M[k,j],M[k,j+1]);
                        permitation:=true;
                   end;
                end;
            end;
        end;
    until permitation=false;
end;
procedure affiche(M:matrice;N:integer);
var
    i,j:integer;
begin
	for i:=1 to N do
	begin
		for j:=1 to N do
            write(M[i,j],'   ');
        writeln;
    end;
end;
begin
	saisir(N);
	remplir(M,N);
	tricolone(M,N);
	affiche(M,N);
end.