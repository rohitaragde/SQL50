------------------------------- Leetcode 2356----------------------------------

create table Teacher11
(teacher_id int,
 subject_id int,
 dept_id int,
 primary key(subject_id,dept_id));

 select * from Teacher11;

 /*Write a solution to calculate the number of unique subjects
 each teacher teaches in the university.
Return the result table in any order.*/

select teacher_id,count(distinct subject_id) as cnt
from Teacher11
group by teacher_id
order by 1;

 

