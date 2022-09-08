create database spotify;
use spotify;
create table users1(
uid varchar(90) primary key,
uname varchar(40) not null,
uemail varchar(66) not null
);
insert into users1 values
('31ksdb253w3qxomtatkeoj7kvbfm','Ashish','ashish34@gmail.com'),
('31ksdb253w3qxomtatkeoj7kvbnm','Shubham','shubham34@gmail.com'),
('31ksdb253w3qxomtatkeoj7kvbbb','Suraj','suraj23@gmail.com'),
('31ksdb253w3qxomtatkeoj7kvccc','Sachin','sachin12@gmail.com');
select* from users1;
create table playlist1(
pid varchar(90) primary key,
pname varchar(40) not null,
uid varchar(90) not null
);
insert into playlist1 values
('4nTacHmKC3BFKhBhlGNeZZ','rockmusic','31ksdb253w3qxomtatkeoj7kvbfm'),
('4nTacHmKC3BFKhBhlGNeYY','localmusic','31ksdb253w3qxomtatkeoj7kvbnm'),
( '31ksdb253w3qxomtatkeoj7kvvvf','popmusic','31ksdb253w3qxomtatkeoj7plk'),
('31ksdb253w3qxomtatkeoj7kmklo','classicm','31ksdb253w3qxomtatkeoj7ljf');
select* from playlist1;
create table tracks1(
tid varchar(90) primary key,
tnmae varchar(40) not null,
pid varchar(90) not null
);
insert into tracks1 values
('0sSapNABKrGwgaMhn0p8uL','album','4nTacHmKC3BFKhBhlGNeZZ'),
('2mTFrtswcKRUAC6rwoW63X','airtits','4nTacHmKC3BFKhBhlGNeYY'),
('2mTFrtswcKRUAC6rwoW63t','Dof','4nTacHmKC3BFKhBhlGNeJJ'),
('2mTFrtswcKRUAC6rwoW63ll','SOS','4nTacHmKC3BFKhBhlGNeII');
select* from tracks1;
select* from users1
inner join playlist1
on users1.uid=playlist1.uid
inner join tracks1
on playlist1.pid=tracks1.pid;
