---------------------------------------------------- Leetcode 1141 -----------------------------------------------------------------

create table Activity9
(user_id int,
session_id int,
activity_date date,
activity_type enum('open_session','end_session','scroll_down','send_message'));




insert into Activity9 values(1,1,'2019-07-20','open_session');
insert into Activity9 values(1,1,'2019-07-20','scroll_down');
insert into Activity9 values(1,1,'2019-07-20','end_session');
insert into Activity9 values(2,4,'2019-07-20','open_session');
insert into Activity9 values(2,4,'2019-07-21','send_message');
insert into Activity9 values(2,4,'2019-07-21','end_session');
insert into Activity9 values(3,2,'2019-07-21','open_session');
insert into Activity9 values(3,2,'2019-07-21','send_message');
insert into Activity9 values(3,2,'2019-07-21','end_session');
insert into Activity9 values(4,3,'2019-06-25','open_session');
insert into Activity9 values(4,3,'2019-06-25','end_session');

select * from Activity9;

/*Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively.
 A user was active on someday if they made at least one activity on that day.
Return the result table in any order*/

select activity_date,count(distinct user_id) as active_users
from Activity9
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date








