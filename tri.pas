program trigo;
uses wincrt;
type
    matrice=array[1..5,1..5]of integer;
var
    M:matrice;
    N:integer;
procedure saisir(Var N:integer);
begin
	writeln('saisir N');
	readln(N);
end;
procedure permiter(var a,b:integer);
var
    c:integer;
begin
	c:=a;
	a:=b;
	b:=c;
end;
procedure remplir(var M:matrice;N:integer);
var
    i,j:integer;
begin
	for i:=1 to N do
	begin
		for j:=1  to N do
		begin
			writeln('saisir M[',i,',',j,']');
			readln(M[i,j]);
        end;
    end;
end;
procedure trigonal0(var M:matrice;N:integer);
var
    i,j:integer;
    permitation:boolean;
begin
	repeat
        permitation:=false;
        for i:=1 to N-1 do
        begin
        	for j:=1 to N-1 do
        	begin
        		if M[j,j] >M[j+1,j+1] then
                begin
                	permiter(M[j,j],M[j+1,j+1]);
                	permitation:=true;
                end;
            end;
        end;
    until permitation=false;
end;
procedure trigonal1(var M:matrice;N:integer);
var
    i,j,k:integer;
    permitation:boolean;
begin
	repeat
        permitation:=false;
        k:=0;
        for i:=1 to N-1 do
        begin
        	for j:=1 to N-1 do
        	begin
        		k:=N-j+1;
                if M[k,j] > M[N-j,j+1] then
                begin
                	permiter(M[k,j],M[N-j,j+1]);
                	permitation:=true;
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
		for j:=1  to N do
			write(M[i,j],'   ');
        writeln;
    end;
end;
begin
	saisir(N);
	remplir(M,N);
	trigonal0(M,N);
	trigonal1(M,N);
	affiche(M,N);
end.