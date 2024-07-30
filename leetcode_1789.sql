--------------------------------------------------------- Leetcode 1789 -----------------------------------------------------------
use rohit;

create table EmpDept
(emp_id int,
dept_id int,
primary_flag enum('Y','N'),
primary key(emp_id,dept_id));

insert into EmpDept values(1,1,'N');
insert into EmpDept values(2,1,'Y');
insert into EmpDept values(2,2,'N');
insert into EmpDept values(3,3,'N'); 
insert into EmpDept values(4,2,'N'); 
insert into EmpDept values(4,3,'Y');  
insert into EmpDept values(4,4,'N');

select * from EmpDept;

select distinct emp_id,dept_id
from EmpDept
where emp_id in (select emp_id from EmpDept group by emp_id having count(*)=1) or primary_flag='Y'






 



