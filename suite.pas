program suit;
uses wincrt;
var
    U:real;

procedure suite(var U:real);
var
    l:real;
begin
	U:=2;
	l:=0.0001;
	U:=sqrt(U);
	while(U>=l) do
	begin
		writeln(U:2:2);
		U:=sqrt(U);
    end;
end;
begin
	suite(U);
end.