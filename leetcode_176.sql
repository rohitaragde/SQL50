------------------------------ Leetcode 176-------------------------------------
----------------------------- Second Highest Salary-----------------------------

create table EmpSal11
(id int primary key,
 salary int);


insert into EmpSal11 values(1,100);
insert into EmpSal11 values(2,200);
insert into EmpSal11 values(3,300);

select * from EmpSal11;

select max(salary) as secondHighestSalary
from EmpSal11
where salary <(select max(salary) from EmpSal11)


