set serveroutput on
declare
	v1			BINARY_DOUBLE;
begin
DBMS_OUTPUT.PUT_LINE('v1=:');
for c in 1 .. 38 loop
--v1:=((10**c)-1)+(1-(10**(-c)));
--DBMS_OUTPUT.PUT_LINE('v1=:'||v1||' '||c);
v1:= DBMS_RANDOM.random / DBMS_RANDOM.random;
DBMS_OUTPUT.PUT_LINE('v1=:'||v1||' '||c);
end loop;
end;
/	
