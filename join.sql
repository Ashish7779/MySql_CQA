create database join_concept;
use join_concept;
create table officers_tbl(
officer_id int not null,
officer_name varchar(55) not null,
address varchar(55) not null
);
insert into officers_tbl(officer_id,officer_name,address)
values(1,"Ajeet","Mau"),(2,"Vimal","Lucknow"),(3,"Depica","Faizabad"),(4,"Rahul","Lucknow");
select * from officers_tbl;
create table st(
st_id int not null,
st_name varchar(55) not null,
course_name varchar(55) not null
);
insert into st(st_id,st_name,course_name)
values(1,"Shubham","Java"),(2,"Suraj","Python"), (3,"Sachin","Testing");
select * from st;
 -- Inner JOIN (Simple Join)
 SELECT officers_tbl.officer_name, officers_tbl.address, st.course_name  
FROM officers_tbl  
INNER JOIN st  
ON officers_tbl.officer_id = st.st_id; 
-- Left Outer Join
SELECT  officers_tbl.officer_name, officers_tbl.address, st.course_name  
FROM officers_tbl 
LEFT JOIN st 
ON officers_tbl.officer_id = st.st_id;  
-- Right Outer Join
SELECT officers_tbl.officer_name, officers_tbl.address, st.course_name, st.st_name  
FROM officers_tbl 
RIGHT JOIN st  
ON officers_tbl.officer_id = st.st_id;  
 -- Inner Join Example
 create table stu(
 stu_id int not null,
 stu_fname varchar(55) not null,
 stu_lname varchar(55) not null,
 city varchar(55) not null
 );
 insert into stu(stu_id,stu_fname,stu_lname,city)
  values(1,"Shubham","Vish","Allhabad"),(2,"Suraj","Kumar","Faizabad"),(3,"Sonu","yadav","Ayodhya"),(4,"Karn","Pasvan","Bhadohi");
  create table technologies(
  tech_id int not null,
  ins_name varchar(55) not null,
  technology varchar(55) not null
  );
  insert into technologies(tech_id,ins_name,technology)
  values(1,"javatainingcentre","java"),(2,"Pythontraingcentre","Python"),(3,"Testingcentre","Testing"),(4,"BigDatacentre","DataAnalysist");
  SELECT stu.stu_fname, stu.stu_lname, stu.city, technologies.technology    
FROM stu   
INNER JOIN technologies    
ON stu.stu_id = technologies.tech_id; 
-- Inner Join with Group By Clause 
SELECT stu.stu_id, technologies.ins_name, stu.city, technologies.technology    
FROM stu   
INNER JOIN technologies    
ON stu.stu_id = technologies.tech_id GROUP BY ins_name;  
-- Inner Join with WHERE Clause
SELECT tech_id, ins_name, city, technology    
FROM stu  
INNER JOIN technologies    
USING (stu_id) WHERE technology = "Java"; 

-- LEFT JOIN  
create table customer(
customer_id int not null,
cust_name varchar(55) not null,
occupation varchar(55) not null,
income int not null,
qulification varchar(55) not null
);
insert into customer(customer_id,cust_name,occupation,income,qulification)
values(1,"Akash","Dev",2000,"Btech"),
(2,"MarkRobert","Enggineer",4000,"Btech"),
(3,"Sandhu","Scientist",5000,"Msc"),
(4,"Max","Bussiness",1000,"Mba"),
(5,"Tom","Manager",6000,"Mba"),
(6,"Rohit","Crickter",1200,"Btech");
select* from customer;
create table orders(
order_id int not null,
dat date not null,
customer_id int not null,
price int not null
);
insert into orders(order_id,dat,customer_id,price)
values(101,"2020-09-05",2,3000),
(102,"2020-05-06",4,7000),
(103,"2020-01-02",5,500),
(104,"2020-04-01",2,1200),
(105,"2020-07-02",1,5400);
SELECT customer.customer_id, cust_name, price, dat ; 
-- LEFT JOIN with USING Clause
SELECT customer_id, cust_name, occupation, price, dat 
FROM customer  
LEFT JOIN orders USING(customer_id);  
-- LEFT JOIN with Group By Clause
SELECT customer.customer_id, cust_name, qulification, price, dat  
FROM customer
LEFT JOIN orders ON customer.customer_id = orders.customer_id  
GROUP BY price; 
-- LEFT JOIN with WHERE Clause
SELECT customer_id, cust_name, occupation, price, dat  
FROM customer  
LEFT JOIN orders   
USING(customer_id) WHERE price>2500;  
create table contacts(
contact_id int not null,
cellphone int not null,
homephone int not null
);
insert into contacts(contact_id,cellphone,homephone)
values( 1,2345,456),
(2,9453,865),
(3,7651,987),
(4,7566,993);
-- LEFT JOIN Multiple Tables
SELECT customer.customer_id, cust_name, order_id, price, cellphone  
FROM customer  
LEFT JOIN contacts ON customer_id = contact_id  
LEFT JOIN orders ON customer.customer_id = orders.customer_id ORDER BY income; 
-- Use of LEFT JOIN clause to get unmatched records
SELECT customer_id, cust_name, cellphone, homephone  
FROM customer  
LEFT JOIN contacts ON customer_id = contact_id  
WHERE cellphone IS NULL ;  
-- Difference between WHERE and ON clause in MySQL LEFT JOIN
SELECT cust_name, occupation, order_id, price, dat  
FROM customer 
LEFT JOIN orders   
USING(customer_id) WHERE price=3000;  

-- SELECT cust_name, occupation, order_id, price, date  
-- FROM customers LEFT JOIN orders ON price=2500; 
 -- ON Clause
 SELECT cust_name, occupation, order_id, price, dat 
FROM customer LEFT JOIN orders ON price=3000;  
--  RIGHT JOIN Examples
SELECT customer.customer_id, cust_name, price, dat
FROM customer  
RIGHT JOIN orders ON customer.customer_id = orders.customer_id  
ORDER BY  customer_id;  
SELECT * FROM customer 
RIGHT JOIN orders USING(customer_id)  
WHERE price>2500 AND price<5000; 
-- RIGHT JOIN Multiple Tables
SELECT customer.customer_id, cust_name, order_id, price, cellphone  
FROM customer  
RIGHT JOIN contacts ON customer_id = contact_id  
RIGHT JOIN orders ON customer.customer_id = orders.customer_id ORDER BY order_id; 
-- Use of RIGHT JOIN clause to get unmatched records
SELECT customer_id, cust_name, cellphone, homephone  
FROM customer 
RIGHT JOIN contacts ON customer_id = contact_id  
WHERE cellphone IS NULL  
ORDER BY cellphone;  
-- Cross JOIN
create table class(
id int not null,
name varchar(66) not null);
insert into class(id,name)
values(1,"Abhi"),
(2,"Adam"),
(4,"Alex");
create table class_info(
id int not null,
address varchar(66) not null);
insert into class_info(id,address)
values(1,"Delhi"),(2,"Mumbai"),(3,"Channai");
SELECT * FROM 
class CROSS JOIN class_info;
-- Natural JOIN
SELECT * from class NATURAL JOIN class_info; 