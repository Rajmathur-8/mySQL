create database college;
use college;

create table student(
id int primary key,
name varchar(50)
);

insert into student (id,name)
values
(101,"Adam"),
(102,"Bob"),
(103,"Casey");

create table course(
id int primary key,
course varchar(50)
);

insert into course (id,course)
values
(102,"English"),
(105,"Math"),
(103,"Science"),
(107,"CS");

select * from student;
select * from course;

select *
from student
inner join course
on student.id = course.id;

select *
from student
left join course
on student.id = course.id;

select *
from student
right join course
on student.id = course.id;

select *
from student as s
left join course as b
on s.id = b.id
union
select * from student as s
right join course as b
on s.id = b.id;
