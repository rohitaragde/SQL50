----------------------------- Leetcode 1321--------------------------------------
---------------------------- Restaurant Growth------------------------------------

create table Customer112
(cust_id int ,
nname varchar(10),
visited_on date,
amount int,
primary key(cust_id,visited_on));

insert into Customer112 values(1,'Jhon','2019-01-01',100);
insert into Customer112 values(2,'Daniel','2019-01-02',110);
insert into Customer112 values(3,'Jade','2019-01-03',120);
insert into Customer112 values(4,'Khaled','2019-01-04',130);
insert into Customer112 values(5,'Winston','2019-01-05',110);
insert into Customer112 values(6,'Elvis','2019-01-06',140);
insert into Customer112 values(7,'Anna','2019-01-07',150);
insert into Customer112 values(8,'Maria','2019-01-08',80);
insert into Customer112 values(9,'Jaze','2019-01-09',110);
insert into Customer112 values(1,'Jhon','2019-01-10',130);
insert into Customer112 values(3,'Jade','2019-01-10',150);

select * from Customer112;



select visited_on,
(
   select sum(amount) from Customer112
   where visited_on between date_sub(c.visited_on,interval 6 day)
   and c.visited_on
) as amount,
round((
   select sum(amount)/7 from Customer112
   where visited_on between date_sub(c.visited_on,interval 6 day)
   and c.visited_on
),2) as average
from Customer112 c
where visited_on>=
( 

select date_add(min(visited_on),interval 6 day)
from Customer112
)
group by visited_on
order by visited_on 