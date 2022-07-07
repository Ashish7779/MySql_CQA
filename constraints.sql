create database constrains;
use constrains;
-- NOT NULL CONSTRAINS
create table students(
Id INTEGER, LastName TEXT NOT NULL, FirstName TEXT NOT NULL, City VARCHAR(35)
);
INSERT INTO students VALUES(1, 'Hanks', 'Peter', 'New York'); 
 INSERT INTO Student VALUES(2, null, 'Amanda', 'Florida');  
 select * from students;
 -- UNIQUE CONSTRIANS
  CREATE TABLE ShirtBrands(Id INTEGER, BrandName VARCHAR(40) UNIQUE, Size VARCHAR(30));
   INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Pantaloons', 38), (2, 'Cantabil', 40);  
    INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Raymond', 38), (2, 'Cantabil', 40);  
     select * from ShirtBrands ;
     
   --   DEFAULT CONSTRAINS
   create table Person(
   id int not null,
   Name varchar(45) not null,
   age int,
   city varchar(30) default 'york'
   );
   insert into Person(id,Name, age, city) values(1,'Ram', 15, 'Delhi'),
   (2, 'Shyam', 17, 'kanpur'),(3,'Robbin', 23, 'Allhabad');
   insert into Person(id, Name, age) values(1, 'Babbu', 15), (4, 'Rohit',12);
        select * from Person ;
      --   PRIMARY KEY Constraint
      create table persons(
      id int not null primary key,
      name varchar(45) not null,
      age int,
      city varchar(40));
      insert into persons(id, name,age,city) values(1,'Robot', 15, 'Florida'),
      (2,'Joseph',35,'California'),(3,'Peter',40,'Alaska');
      insert into persons(id,name,age,city) values(1,'Stephon',16,'Florida');
      select * from persons ;
      -- AUTO_INCREMENT Constraint
      create table Animals(
      id int not null auto_increment,
      name char(30) not null,
      primary key (id));
      insert into Animals(name) values('tiger'),('dog'),('Penguin'),('Camel'),('cat'),('ostrich');
        select * from Animals ;
        
        -- ENUM Constraint
        CREATE TABLE Shirts (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);  
 INSERT INTO Shirts(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large');  
 SELECT * FROM Shirts;  
 -- Foreign Key Constraint
create table city(
cid int not null auto_increment,
cityname varchar(50) not null,
primary key (cid) );
insert into city (cityname) values('Agra'),('Delhi'),('Bhopal'),('Jaipur'),('Noida');
create table personals(
id int not null,
name varchar(50) not null,
age int not null,
percentage int not null,
gender varchar(1) not null,
city int not null,
primary key(id),
foreign key (city) references city(cid) );
insert into personals (id,name,percentage,age,gender,city)
values(1,"Ram",45,18,"M",1),
(2,"Srita",52,22,"F",2),
(3,"Salman",43,45,"M",3);
    
      