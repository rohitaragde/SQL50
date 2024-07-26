--------------------------------------------- Leetcode 1934 ------------------------------------------------------------------------

-------------------------------------------- Confirmation Rate ---------------------------------------------------------------------
use rohit;

create table Signups1011
(user_id int primary key,
 timestamp datetime);
 
 create table Confirmations1011
 (user_id int,
 foreign key(user_id) references Signups1011(user_id),
   timestamp datetime,
   action enum('confirmed','timeout'),
   primary key(user_id,timestamp))
   
   insert into Signups1011 values(3,'2020-03-21 10:16:13');
   insert into Signups1011 values(7,'2020-01-04 13:57:59');
   insert into Signups1011 values(2,'2020-07-29 23:09:44');
   insert into Signups1011 values(6,'2020-12-09 10:39:37');
   
   select * from Signups1011;
   
   insert into Confirmations1011 values(3,'2021-01-06 03:30:46','timeout');
   insert into Confirmations1011 values(3,'2021-07-14 14:00:00','timeout');
   insert into Confirmations1011 values(7,'2021-06-12 11:57:29','Confirmed');
   insert into Confirmations1011 values(7,'2021-06-13 12:58:28','Confirmed');
   insert into Confirmations1011 values(7,'2021-06-14 13:59:27','Confirmed');
   insert into Confirmations1011 values(2,'2021-01-22 00:00:00','Confirmed');
   insert into Confirmations1011 values(2,'2021-02-28 23:59:59','timeout');
   
	
    select * from Signups1011;
	select * from Confirmations1011;
    
    
    select s.user_id,
    coalesce(round(sum(action='confirmed')/count(*),2),0.00) as confirmation_rate
    from Signups1011 s left join Confirmations1011 c
    on s.user_id=c.user_id
    group by s.user_id
    order by s.user_id

    
      
      


   
   
   
   
   
   
 