------------------------ Leetcode 1978---------------------------------------


create table empm
(emp_id int primary key,
 ename varchar(10),
 manager_id int,
 salary int);


 insert into empm values(3,'Mila',9,60301);
 insert into empm values(12,'Antonella',NULL,31000);
 insert into empm values(13,'Emery',null,67084);
 insert into empm values(1,'Kalel',11,21241);
 insert into empm values(9,'Mikaela',null,50937);
 insert into empm values(11,'Joziah',6,28485);

 select * from empm;

 /*
 Find the IDs of the employees whose salary is strictly less than 
 $30000 and whose manager left the company. When a manager leaves the company, 
 their information is deleted from the Employees table,
 but the reports still have their manager_id set to the manager that left.

Return the result table ordered by employee_id.
*/


 select emp_id from empm 
 where salary<30000 and
 manager_id not in(select emp_id from empm)
 order by emp_id;
 

