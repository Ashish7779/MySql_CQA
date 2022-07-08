create database DML_Commands;
use DML_Commands;
-- INSERT Query
create table People(
p_id int not null,
p_name varchar(40),
p_age int not null
);
INSERT INTO People VALUES(101, 'Adam', 15);
INSERT INTO People VALUES(102,'Alex', 16);
INSERT INTO People VALUES(103,'Chris', 12);

-- Where clause 
use DML_Commands;
create table officers(
officers_id int not null auto_increment primary key,
officers_name varchar(40) not null,
address varchar(40) not null
);
insert into officers (officers_name,address)
values("Ajeet","Lacknow"),("Depika","Mau"),("Rahul","Lacknow"),("Vimal","Allahabad");
select* from officers where address = "Mau";
select* from officers where address = "Lacknow" and officers_id <5;
select* from officers where address = "Lacknow" or officers_id <5;
select * from officers where address = "Mau" and officers_name ="Ajeet" or officers_id <5;

create table Student2(
s_id int not null auto_increment,
s_name varchar(40) not null,
s_age int  not null,
s_address varchar(40) not null,
primary key (s_id));
insert into Student2(s_name,s_age,s_address)
values("Soonu",20,"Faizabad"),("Shubham",16,"Allahabad"),("Sumit",21,"Rajapur"),
("Suraj",23,"Bhadohi");
select* from Student2 where s_id = 1;
select* from Student2 where s_name= "Sumit";
select* from Student2;
-- ORDER BY Clause
select * from officers where address = "Lacknow" order by officers_name;
select * from officers where address = "Lacknow" order by officers_name Asc;
select * from officers where address = "Lacknow" order by officers_name desc;
select officers_name,address from officers where officers_id <5 order by officers_name desc,address asc;

 -- UPDATE Query
 create table trainer(
 course_name varchar(40) not null,
 triner_nmae varchar(40) not null,
 emil_name varchar(40) not null
 );
insert into trainer(course_name,triner_nmae,emil_name)
values("java","Sachin","sachin@12.com"),
("python","Suraj","suraj23@12.com"),
("Apitesting","Raj","raj4524@.com");
select* from  trainer;
update trainer set emil_name = "sachin@89.com"
where course_name ="java";
update trainer set triner_nmae = "Abhi"
where course_name = "Apitesting";
-- Update Multiple 
create table Peoples(
id int not null,
name varchar (40) not null,
age int not null,
cccupation varchar(40) 
);
select* from Peoples;
insert into Peoples(id,name,age,cccupation)
values(101,"Soonu",20,"Upp"),
(102,"Suraj",16,"Cricketer"),
(103,"Sachin",24,"CivilEn"),
(104,"Shubham",12,"POM"),
(105,"Sumit",15,"KOL");
UPDATE Peoples  
SET name = 'Sumit',cccupation = 'Content Writer'  
WHERE id = 105;  
update Peoples set name ="Anuj",cccupation = 'Speaker'
where id = 104;
-- UPDATE Statement to Replace String
UPDATE trainer 
SET emil_name= REPLACE(emil_name,'sachin@12.com','@tutorialandexample.com')  
WHERE course_name = 'java'; 
-- DELETE Statement
DELETE FROM Peoples;
DELETE FROM Peoples WHERE id=103;
select* from Peoples;



