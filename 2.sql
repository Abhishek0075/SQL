create database company;
use company;
create table employee(SSN varchar(10) primary key,Name varchar(20),Address varchar(30),
		Sex varchar(10),salary integer,SuperSSN varchar(10),DNo varchar(10));
create table department(DNo varchar(10) primary key,DName varchar(20),MgrSSN varchar(10),MgrStartDate varchar(10));
create table DLocation(DNo varchar(10),DLoc varchar(20) primary key);
create table project(PNo varchar(10) primary key,PName varchar(20),PLocation varchar(20),DNo varchar(10));
create table works_On(SSN varchar(10),PNo varchar(10),hours integer);