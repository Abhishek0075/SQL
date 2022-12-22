declare
num number :=&num;
fac number :=1;
n number;
begin
n:=num;
while num>0 loop
fac:=fac*num;
num:=num-1;
end loop;
dbms_output.put_line('Factorial of '||n||' is '||fac);
end;
/
