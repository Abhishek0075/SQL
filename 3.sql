use company;
create view VW_emp as select * from employee;
select * from VW_emp;

create view VW_SSN as select SuperSSN,DNo from employee where Sex="Female";
select * from VW_SSN;

update VW_emp set Address="Chennai" where SSN="S101";

drop view VW_emp;

