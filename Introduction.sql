create database employeedb;
show databases;
use employeedb;
create table employee_table(
id int not null,
name varchar(40) not null,
occupation varchar(40),
age int not null,
primary key (id)
);
describe employee_table;
-- alter table employee_table
-- add emp_Surname varchar(40) not null;
-- select * from employee_table
-- add multiple column in table
-- alter table employee_table
-- add emp_address varchar(100) not null
-- after emp_Surname,
-- add emp_slary int(100) not null
-- after occupation;
-- select * from employee_table;
-- Modify column in the table
-- alter table employee_table
-- modify emp_surname varchar(50);
-- Drop column in the table
-- alter table employee_table
-- drop column emp_address;
-- Rename column in table
alter table employee_table
change column emp_surname emp_title varchar(40);
-- Rename table
alter table employee_table
rename to emp_tbl;
select * from emp_tbl







