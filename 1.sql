use manyTables;
insert  employee values("c1003","Akshay",20000,"Thrissur");
select * from employee order by clientName;
select * from employee;
show databases;
use db2;
show tables;
desc country;
alter table capital modify column country_code varchar(20);
select * from language;
create table capital(capital_id varchar(10),country_code varchar(10),
		capital_name varchar(100),primary key(capital_id),foreign key(country_code) references country(country_code));

insert into capital values('C1','IN','New Delhi'),('C2','PK','Islamabad'),('C3','NP','Kathmandu');

select * from country inner join capital on country.country_code=capital.country_code;
select * from country left join capital on country.country_code=capital.country_code;
select * from country right join capital on country.country_code=capital.country_code;
select * from country right join capital on country.country_code
			=capital.country_code union select * from country left join capital on country.country_code=capital.country_code;
            
create table language(language_id varchar(10) primary key,country_code varchar(10),
		language_name varchar(100),foreign key(country_code) references country(country_code));

delete from language where language_id='L3';
select * from country inner join language on country.country_code=language.country_code;
select * from country left join language on country.country_code=language.country_code;
select * from country right join language on country.country_code=language.country_code;
select * from country inner join capital on country.country_code=capital.country_code inner join language on country.country_code=language.country_code;
