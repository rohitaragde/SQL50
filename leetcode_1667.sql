----------------------------- Leetcode 1667-------------------------------------
use rohit;

create table Users16
(users_id int primary key,
 nname varchar(10));

 insert into Users16 values(1,'alice');
 insert into Users16 values(2,'boB');

 select * from Users16;

/* Write a solution to fix the names so that only the first character
 is uppercase and the rest are lowercase.
Return the result table ordered by user_id.*/

select users_id,
Upper(SUBSTRING(nname,1,1))+ lower(SUBSTRING(nname,2,len(nname)-1)) as name
from Users16;


select users_id,
concat(Upper(SUBSTRING(nname,1,1)),lower(SUBSTRING(nname,2))) as name
from Users16;





