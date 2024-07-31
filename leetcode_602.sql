------------------------------- Leetcode 602-----------------------------------

create table ReqAccepted
(requester_id int,
 accepter_id int,
 accept_date date,
 primary key(requester_id,accepter_id));

insert into ReqAccepted values(1,2,'2016/06/03');
insert into ReqAccepted values(1,3,'2016/06/08');
insert into ReqAccepted values(2,3,'2016/06/08');
insert into ReqAccepted values(3,4,'2016/06/09');

select * from ReqAccepted;

/*
Write a solution to find the people who have the most friends and 
the most friends number.
The test cases are generated so that only one person has the most friends.*/

select top 1 id,count(*) as num
from(
select requester_id as id
from ReqAccepted
union all 
select accepter_id
from ReqAccepted) r
group by id
order by num desc;







