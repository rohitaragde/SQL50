-------------------------------- Leetcode 180---------------------------------

create table LLogs
(id int identity(1,1) primary key,
 num varchar(10));

 insert into LLogs values(1);
 insert into LLogs values(1);
  insert into LLogs values(1);
 insert into LLogs values(2);
 insert into LLogs values(1);
 insert into LLogs values(2);
 insert into LLogs values(2);

 select * from LLogs;

 select a.num as ConsecutiveNums from llogs a join llogs b
 on a.id=b.id+1 and a.num=b.num join llogs c on a.id=c.id+2 and b.num=c.num 


