------------------------- leetcode 550---------------------------------------
-----------------------Game Play Analysis IV---------------------------------

create table Activity111
(player_id int,
 device_id int,
 event_date date,
 games_played int,
 primary key(player_id,event_date));

 insert into Activity111 values(1,2,'2016-03-01',5);
 insert into Activity111 values(1,2,'2016-03-02',6);
 insert into Activity111 values(2,3,'2016-06-25',1);
 insert into Activity111 values(3,1,'2016-03-02',0);
 insert into Activity111 values(3,4,'2018-07-03',5);

 select * from Activity111; 



select round(count(distinct player_id)/(select count(distinct player_id) from Activity111),2) as fraction
 from Activity111
 where (player_id,date_sub(event_date,interval 1 day)) 
 in
 (
 select player_id,
 min(event_date) as first_login_date
 from Activity111
 group by player_id)
 








