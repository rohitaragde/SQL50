----------------------------- Leetcode 619-------------------------------------

--------------------------- Biggest Single Number-------------------------------

create table MyNumbers1
(num int);

insert into MyNumbers1 values(8);
insert into MyNumbers1 values(8);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(1);
insert into MyNumbers1 values(4);
insert into MyNumbers1 values(5);
insert into MyNumbers1 values(6);


insert into MyNumbers1 values(8);
insert into MyNumbers1 values(8);
insert into MyNumbers1 values(7);
insert into MyNumbers1 values(7);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(3);


select * from MyNumbers1;



select max(num) as num 
from
( select
num from MyNumbers1
group by num
having count(num)=1) as unique_nums

select max(num) as num
from MyNumbers1
where num in
(select num from MyNumbers1 group by num having count(num)=1)  