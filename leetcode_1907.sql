---------------------------- Leetcode 1907-------------------------------------

create table Accountsn
(account_id int primary key,
 income int);

 insert into Accountsn values(3,108939);
 insert into Accountsn values(2,12747);
 insert into Accountsn values(8,87709);
 insert into Accountsn values(6,91796);

 select * from Accountsn;

 select 'low_salary' as category,sum(case when income<20000 then 1 else 0 end) as accounts_count
 from Accountsn
 union
 select 'Average Salary' as category,sum(case when income>=20000 and income<=50000 then 1 else 0 end) as accounts_count
 from Accountsn
 union
 select 'High Salary' as category,sum(case when income>50000 then 1 else 0 end) as accounts_account
 from Accountsn;




 


