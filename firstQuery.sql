create database college;
USE college;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO student VALUES(1,"AMAN",20);
INSERT INTO student VALUES(2,"RAJESH",20);
Insert into student (id,name,age) values
(3,"Rameez",20),
(4,"Azam",20);

select*from student;
show databases;
show tables;

create database XYZ;
use xyz;
create table employeeInfo(
id int primary key,
name varchar(50),
salary int
);
insert into employeeInfo(id,name,salary) values
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

select* from employeeInfo;

create table employee(
id int,
salary int default 30000 );

insert into  employee(id) values (101);
select*from employee;
drop database college;
drop database employee;








