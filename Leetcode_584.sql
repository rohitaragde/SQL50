----------------------- Leetcode 584 ----------------------------------

---------------------- Find Customer Referee----------------------------

create table Cust001
(id int primary key,
 name varchar(10),
 referee_id int);

 insert into Cust001 values(1,'Will',null);
 insert into Cust001 values(2,'Jane',null);
 insert into Cust001 values(3,'Alex',2);
 insert into Cust001 values(4,'Bill',null);
 insert into Cust001 values(5,'Zack',1);
 insert into Cust001 values(6,'Mark',2);

 select * from Cust001; 

 select name from Cust001
 where id not in (select id from Cust001 where referee_id=2);



