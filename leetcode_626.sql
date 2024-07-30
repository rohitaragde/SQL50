------------------------------ leetcode 626------------------------------------
--------------------------- Exchange Seats-------------------------------------

create table Seats11
(id int primary key,
 student varchar(10));

 insert into Seats11 values(1,'Abbot');
 insert into Seats11 values(2,'Doris');
 insert into Seats11 values(3,'Emerson');
 insert into Seats11 values(4,'Green');
 insert into Seats11 values(5,'Jeames');

 select * from Seats11;

 /*
 Write a solution to swap the seat id of every two consecutive students.
 If the number of students is odd, the id of the last student is not swapped.
Return the result table ordered by id in ascending order.*/

 select
 case when id%2=0 then id-1
      when id%2!=0 and id in(select max(id) from Seats11) then id
 else id+1
 end as id,student
 from Seats11
 order by id;



