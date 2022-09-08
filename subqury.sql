create database sub_qury;
use sub_qury;
create table employee(
emp_id int not null,
emp_name varchar(50),
emp_age int not null,
city varchar(50) not null,
income int not null
);
insert into employee(emp_id,emp_name,emp_age,city,income)
values(101,"Ajeet",23,"Mirzapur",20000),(102,"Ajay",25,"Chunar",30000),
(103,"Rajkumar",27,"Bhadohi",31000),(104,"Chirag",21,"PiliKhothi",21000),
(105,"Sumit",17,"Allahabad",23000),(106,"Dipti",19,"Rajapur",45000),
(106,"Deepa",18,"Faizabad",35000),(107,"Soun",22,"Katra",27000),
(108,"Sachin",28,"Noida",30000),(109,"Anish",31,"Gorakhpur",43000),
(110,"Shubham",13,"Varanasi",12000),(111,"Suraj",16,"Lucknow",24000);
select* from employee;
SELECT emp_name, city, income FROM employee  
   WHERE emp_id IN (SELECT emp_id FROM employee);
   -- Subquery with Comparison Operator
   SELECT * FROM employee   
   WHERE emp_id IN (SELECT emp_id FROM employee   
         WHERE income > 35000);  
         SELECT emp_name, city, income FROM employee  
   WHERE income = (SELECT MAX(income) FROM employee);
   -- Subquery in the FROM Clause
   SELECT Max(income), MIN(income), FLOOR(AVG(income))  
FROM  
    (SELECT emp_id, COUNT(emp_id) AS emp_name FROM employee 
    GROUP BY city) AS employee;  
    -- Correlated Subqueries
    SELECT emp_name, city, income  
FROM employee emp WHERE income > (   
SELECT AVG(income) FROM employee WHERE city = emp.city);  
 -- Subqueries with EXISTS or NOT EXISTS
    