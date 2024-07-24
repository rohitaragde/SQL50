------------------------ Leetcode 1378 --------------------------------------

create table Employees001
(eid int primary key,
 nname varchar(15));

 create table EmployeesUni
 (empid int,
  unique_id int,
  primary key(empid,unique_id));

  insert into Employees001 values(1,'Alice');
  insert into Employees001 values(7,'Bob');
  insert into Employees001 values(11,'Meir');
  insert into Employees001 values(90,'Winston');
  insert into Employees001 values(3,'Jonathan');

  insert into EmployeesUni values(3,1);
  insert into EmployeesUni values(11,2);
  insert into EmployeesUni values(90,3);

  select * from Employees001;
  select * from EmployeesUni;

  /* Write a solution to show the unique ID of each user, 
  If a user does not have a unique ID replace just show null.*/

select u.unique_id,
nname as name from Employees001 e left join EmployeesUni u
on e.eid=u.empid
order by u.unique_id;


