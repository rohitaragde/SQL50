------------------------------ Leetcode 1661--------------------------------------

---------------------------- Average Time of Process per Machine -------------------------------------------
use rohit;

create table Activity1011
(machine_id int,
 process_id int,
 activity_type enum('start','end'),
 timestamp float,
 primary key(machine_id,process_id,activity_type));
 
 insert into Activity1011 values(0,0,'start',0.712);
 insert into Activity1011 values(0,0,'end',1.520);
 insert into Activity1011 values(0,1,'start',3.140);
 insert into Activity1011 values(0,1,'end',4.120);
 insert into Activity1011 values(1,0,'start',0.550);
 insert into Activity1011 values(1,0,'end',1.550);
 insert into Activity1011 values(1,1,'start',0.430);
 insert into Activity1011 values(1,1,'end',1.420);
 insert into Activity1011 values(2,0,'start',4.100);
 insert into Activity1011 values(2,0,'end',4.512);
 insert into Activity1011 values(2,1,'start',2.500);
 insert into Activity1011 values(2,1,'end',5.000);
 
 select * from Activity1011;
 
 select a.machine_id,
  round(avg(b.timestamp-a.timestamp),3) as processing_time
  from Activity1011 a join Activity1011 b
  on a.process_id=b.process_id and a.machine_id=b.machine_id
  where b.activity_type='end' and a.activity_type='start'
  group by a.machine_id;
 
 
 
 
 