------------------------- Leetcode 1731 ---------------------------------------

create table Employeees
(emp_id int primary key,
 enames varchar(10),
 reports_to int,
 age int)

 insert into Employeees values(9,'Hercy',null,43);
 insert into Employeees values(6,'Alice',9,41);
 insert into Employeees values(4,'Bob',9,36);
 insert into Employeees values(2,'Winston',null,37);

 insert into Employeees values(1,'Michael',null,45);
 insert into Employeees values(2,'Alice',1,38);
 insert into Employeees values(3,'Bob',1,42);
 insert into Employeees values(4,'Charlie',2,34);
 insert into Employeees values(5,'David',2,40);
 insert into Employeees values(6,'Eve',3,37);
 insert into Employeees values(7,'Frank',null,50);
 insert into Employeees values(8,'Grace',null,48);


 select * from Employeees;

/*For this problem, we will consider a manager an 
employee who has at least 1 other employee reporting to them.
Write a solution to report the ids and the names of all managers, 
the number of employees who report directly to them, 
and the average age of the reports rounded to the nearest integer.
Return the result table ordered by employee_id.
*/


 select * from Employeees;

select m.emp_id , m.enames,
count(e.enames) as reports_count,
round(avg(e.age),2) as average_age
from Employeees m join Employeees e
on m.emp_id=e.reports_to
group by m.emp_id,m.enames





 