------------------------- Leetcode 1729-----------------------------------

create table Followers1
(users_id int,
follower_id int,
primary key(users_id,follower_id));

insert into Followers1 values(0,1);
insert into Followers1 values(1,0);
insert into Followers1 values(2,0);
insert into Followers1 values(2,1);

select * from Followers1;

select users_id,count(follower_id) as followers_count
from Followers1
group by users_id;


