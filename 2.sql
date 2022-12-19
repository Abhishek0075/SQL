
#                         First Part
create database company;
use company;

create table employee(SSN varchar(10) primary key,Name varchar(20),Address varchar(30),
	Sex varchar(10),salary integer,SuperSSN varchar(10),DNo varchar(10));
        
create table department(DNo varchar(10) primary key,DName varchar(20),
	MgrSSN varchar(10),MgrStartDate date);

create table DLocation(DNo varchar(10),DLoc varchar(20));

create table project(PNo varchar(10) primary key,PName varchar(20),PLocation varchar(20),DNo varchar(10));

create table works_On(SSN varchar(10),PNo varchar(10),hours integer);

alter table employee add foreign key (DNo) references department(DNo);

alter table department add foreign key (MgrSSN) references employee(SSN);

alter table employee drop foreign key employee_ibfk_1 ;

show create table employee;

alter table employee add column Age integer;

drop table project;

truncate table works_On;

desc department;


# 						Second Part

insert into employee values
	("S101","David","Calicut","Male",100000,"SS10","D1001",36),
	("S102","Dongli","Kochi","Male",50000,"SS11","D1002",24),
    ("S103","Vilasini","Kannur","Female",70000,"SS14","D1005",17),
    ("S104","Dasan","Wayanad","Male",1200000,"SS15","D1004",45),
    ("S105","Arundhathi","Kollam","Female",50000,"SS16","D1002",39);
    

insert into department values
	("D1001","Chemistry","S103",'2014-02-28'),
	("D1002","Physics","S102",'2014-07-5'),
    ("D1003","Integrated Studies","S104",'2014-10-3'),
    ("D1004","Computer Science","S101",'2017-10-3'),
    ("D1005","Mathematics","S105",'2017-4-1');
    
insert into DLocation values
	("D1001","South Kalamassery"),
	("D1001","Edappaly"),
    ("D1002","South Kalamassery"),
	("D1004","Pathadi Palam"),
    ("D1002","M.G.Road");
    
insert into employee values
	("S101","David","Calicut","Male",100000,"SS10","D1001",36),
	("S102","Dongli","Kochi","Male",50000,"SS11","D1002",24),
    ("S103","Vilasini","Kannur","Female",70000,"SS14","D1005",17),
    ("S104","Dasan","Wayanad","Male",1200000,"SS15","D1004",45),
    ("S105","Arundhathi","Kollam","Female",50000,"SS16","D1002",39);
    
desc project;
select * from department;
insert into project values
	("P1001","Computer Vision","Calicut","D1004"),
	("P1002","Quantum Mechanics","Kochi","D1002"),
	("P1003","Linear Algebra","Alappuzha","D1005");
    
insert into works_On values
	("S101","P1001",5),
    ("S103","P1002",6),
    ("S105","P1003",4);

desc works_On;
select * from DLocation;
select * from department;
select * from employee;

update employee set salary=25000 where SSN="S101";

update department set MgrSSN="S103" where MgrSSN="S102";

delete from employee where SSN="S102";

							# Third Part

CREATE USER user1@'localhost' IDENTIFIED BY 'hlo';
GRANT SELECT ON employee TO user1@'localhost';

REVOKE SELECT on employee from user1@'localhost';

							# Fourth part

select Name from employee where Name like  "%a_";
desc employee;
select * from employee;
select Sex,count(*) from employee group by Sex;

select avg(salary) from employee where Sex="Female";

select sum(salary) from employee where Sex="Male";

select max(salary),min(salary) from employee where Sex="Male";

select * from employee where salary between 25000 and 50000 ;

select Name,salary from employee where salary in (30000,40000,50000);

						# Fifth Part
                        
update employee,project set employee.salary=employee.salary*0.25 
	where employee.DNo=project.DNo and PLocation="Alappuzha";

select employee.Name,project.PLocation from project,employee,works_On 
	where employee.SSN=works_On.SSN and project.PNo=works_On.PNo and works_On.hours>5;

select * from project left join works_On on project.PNo=works_On.PNo;

select * from project join works_On on project.PNo=works_On.PNo;

