use db2;
create user 't1'@'localhost' identified by 'password';
grant select on db2.capital to 't1'@'localhost';
show grants for 't1'@'localhost';
revoke select on capital from 't1'@'localhost';