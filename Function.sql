create database Fun;
use Fun;
-- Aggregate Functions
create table detais(
name varchar(40) not null,
age int not null,
gender varchar(40) not null,
salary int not null
);
insert into detais(name,age,gender,salary)
values("Ramkumar",15,"Male",2300),
("Salman",17,"Male",2400),
("Meera",21,"Female",3421),
("Anil",18,"Male",4500),
("Shahid",23,"Male",6500);
select* from detais;
select count(age) from detais;
select avg(salary) from detais;
select min(salary) from detais;
select max(salary) from detais;
select sum(salary) from detais;
-- first function
select name from detais limit 2;
-- Last function