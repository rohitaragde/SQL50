-------------------------------leetcode 1075--------------------------------------

----------------------------Project Employees I----------------------------------
use rohit;


create table Employee101
(employee_id int primary key,
employee_name varchar(20),
exp_years int not null);

create table Project101
(project_id int,
employee_id int,
foreign key(employee_id) references Employee101(employee_id),
primary key(project_id,employee_id));

insert into Employee101 values(1,'Khaled',3);
insert into Employee101 values(2,'Ali',2);
insert into Employee101 values(3,'John',1);
insert into Employee101 values(4,'Doe',2);

insert into Project101 values(1,1);
insert into Project101 values(1,2);
insert into Project101 values(1,3);
insert into Project101 values(2,1);
insert into Project101 values(2,4);

select * from Employee101;
select * from Project101;

/*Write an SQL query that reports the average experience years of all the
employees for each project, rounded to 2 digits.
Return the result table in any order.*/


select p.project_id,
round(avg(e.exp_years),2) as average_years
from Employee101 e left join Project101 p
on e.employee_id=p.employee_id
group by p.project_id;







