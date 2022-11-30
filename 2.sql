
#                         First Part
create database company;
use company;

create table employee(SSN varchar(10) primary key,Name varchar(20),Address varchar(30),
		Sex varchar(10),salary integer,SuperSSN varchar(10),DNo varchar(10));
        
create table department(DNo varchar(10) primary key,DName varchar(20),MgrSSN varchar(10),MgrStartDate varchar(10));

create table DLocation(DNo varchar(10),DLoc varchar(20));

create table project(PNo varchar(10) primary key,PName varchar(20),PLocation varchar(20),DNo varchar(10));

create table works_On(SSN varchar(10),PNo varchar(10),hours integer);

alter table employee add foreign key (DNo) references department(DNo);

alter table employee add column Age integer;

drop table project;

truncate table works_On;

desc department;

select constraint name from employee;
alter table employee drop conmst foreign key;


# 						Second Part

insert into employee values
	("S101","David","Calicut","Male",100000,"SS10","D1001",36),
	("S102","Dongli","Kochi","Male",50000,"SS11","D1002",24),
    ("S103","Vilasini","Kannur","Female",70000,"SS14","D1005",17),
    ("S104","Dasan","Wayanad","Male",1200000,"SS15","D1004",45),
    ("S105","Arundhathi","Kollam","Female",50000,"SS16","D1002",39);
    
insert into department values
	("D1001","Chemistry"),
	("D1002","Physics"),
    ("D1003","Integrated Studies"),
    ("D1004","Computer Science"),
    ("D1005","Mathematics");

select * from employee;

