program verifffffffff;
uses wincrt;
type
    Matrice=array[1..100,1..100] of integer;
var
    A:Matrice;
    N,i,j,t:integer;
procedure saisir(var a:integer);
begin
	while(N<=1) do 
	begin
		writeln('saisir  N');
		readln(N);
		read;
    end;
end;
procedure remplir(var A:Matrice;b:integer);
var
    i,j:integer;
begin
	for i:=1 to N do 
	begin
        for j:=1 to N do 
        begin
        	writeln('saisir A[',j,',',i,']');
        	readln(A[j,i]);
        end;
    end;
end;
function max(A:matrice;var i:integer;N:integer):integer;
var
    m,k:integer;
begin
	m:=A[i,1];
	for k:=1 to N do
	begin
		if m<A[i,k] then
            m:=A[i,k];
    end;
    max:=m;
end;
function min(A:matrice;var j:integer;N:integer):integer;
var
    m,l:integer;
begin
	m:=A[1,j];
	for l:=1 to N do
	begin
		if m>A[l,j] then
            m:=A[l,j];
    end;
    min:=m;
end;
function verif(A:matrice;var i,j:integer;N:integer):boolean;
begin
	if ((min(A,j,N) = A[i,j]) and (max(A,i,N) = A[i,j]))then 
        verif:=true
    else
        verif:=false;
end;
begin
	saisir(N);
	remplir(A,N);
	i:=1;j:=4;
    writeln(verif(A,i,j,N));
end.
