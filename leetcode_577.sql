------------------------------- Leetcode 577-----------------------------------
------------------------------ Employee Bonus----------------------------------

create table Emp101
(empid int primary key,
 ename varchar(10),
 supervisor int,
 salary int);

 create table Bonus101
 (empid int,
  bonus int,
  foreign key(empid) references Emp101(empid));

  insert into Emp101 values(3,'Brad',null,4000);
  insert into Emp101 values(1,'John',3,1000);
  insert into Emp101 values(2,'Dan',3,2000);
  insert into Emp101 values(4,'Thomas',3,4000);

  insert into Bonus101 values(2,500);
  insert into Bonus101 values(4,2000);

  select * from Emp101;
  select * from Bonus101;

  /* Write a solution to report the name and
  bonus amount of each employee with a bonus less than 1000.
Return the result table in any order.*/

select e.ename,b.bonus 
from Emp101 e left join Bonus101 b
on e.empid=b.empid
where bonus<1000 or bonus is null
order by e.ename

