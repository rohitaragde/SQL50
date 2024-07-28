---------------------------- Leetcode 596------------------------------------

create table CoursesI
(student varchar(10),
class varchar(10),
primary key(student,class));

insert into CoursesI values('A','Math');
insert into CoursesI values('B','English');
insert into CoursesI values('C','Math');
insert into CoursesI values('D','Biology');
insert into CoursesI values('E','Math');
insert into CoursesI values('F','Computer');
insert into CoursesI values('G','Math');
insert into CoursesI values('H','Math');
insert into CoursesI values('I','Math');

select * from CoursesI;

/*
Write a solution to find all the classes that have at least five students.
Return the result table in any order.*/

select class from CoursesI
group by class 
having count(student)>=5;


