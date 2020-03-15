program parf;
uses crt;
type
    matrice=array[1..50,1..50]of integer;
var
    A:matrice;
    N:integer;
procedure saisir(var N:integer);
begin
	repeat
        TextBackGround(red);
        TextColor(yellow);
        writeln('saisir N');
        readln(N);
    until N >1;
end;
procedure remplir(Var A:matrice;N:integer);
var
    i,j:integer;
begin
	for i:=1 to N do
	begin
		for j:=1 to N do 
        begin
        	repeat
                writeln('saisir A[',j,',',i,']');
                readln(A[j,i]);
        	until A[j,i]>0;
        end;
    end;
end;
function maxmin(A:matrice;var i:integer;N:integer):integer;
var
    max,min,k,l,m:integer;

begin
	max:=A[i,1];l:=0;
	for k:=1 to N do 
	begin
		if max<A[i,k] then
		begin
            max:=A[i,k];
            l:=k;
        end;
    end;
    min:=A[i,l];
    for m:=1 to N do 
    begin
    	if  min > A[m,l] then
            min:=A[m,l];
    end;
    if max = min then
        maxmin:=max
    else
        maxmin:=0;
end;
procedure parfait(A:matrice;N:integer);
var
    i,trans:integer;
begin
	trans:=0;
	for i:=1 to N do 
	begin
        trans:=maxmin(A,i,N);
        if trans > 0 then
            writeln('RESULT=',trans);
    end;
end;
begin
	saisir(N);
	remplir(A,N);
	parfait(A,N);
end.