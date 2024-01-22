create database college;
use college;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
insert into student
(rollno,name,marks,grade,city)
values 
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",25,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select name,marks from student;
select distinct  city from student;

select * from student where marks > 80;
select * from student where city = "Mumbai";
select * from student where marks > 80 and city = "Delhi";
select * from student limit 3;
select * from student
order by marks asc;
select * from student
order by marks desc 
limit 3;

select max(marks) from student;
select avg(marks) from student;
select count(name) from student;

select city, count(name) 
from student 
group by city;

select city, avg(marks)
from student
group by city order by city asc;

create table payment(
customer_id int primary key,
customer varchar(50),
mode varchar(20),
city varchar(20)
);
insert into payment
(customer_id,customer,mode,city)
values
(101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hemandez","Credit Card","Seattle"),
(104,"Liam Donvan","Netbanking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minnepolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");

select mode,count(customer)
from payment 
group by mode;


select count(name), city
from student
group by city
having max(marks) > 90;

update student 
set grade = "O"
where grade = "A";

update student 
set marks = 92
where marks = 25;

set sql_safe_updates = 0;

select * from student;


update student
set grade = "O"
where marks between 90 and 100;

update student
set grade = "B"
where marks between 80 and 90;

update student 
set marks = 25
where marks = 92;

delete from student
where marks<33;

create table department(
id int primary key,
name varchar(50)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references department(id)
on update cascade
on delete cascade
);

alter table student
add column age int;

alter table student
drop column age ;

alter table student
change name full_name varchar(50);

delete from student
where marks<80;

alter table student
drop column grade;


select * from student;
drop table student;
drop database college;


