------------------------------- Leetcode 602-----------------------------------

Question:-
 
Table: RequestAccepted

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| requester_id   | int     |
| accepter_id    | int     |
| accept_date    | date    |
+----------------+---------+
(requester_id, accepter_id) is the primary key (combination of columns with unique values) for this table.
This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date when the request was accepted.
 

Write a solution to find the people who have the most friends and the most friends number.

The test cases are generated so that only one person has the most friends.

The result format is in the following example.

 

Example 1:

Input: 
RequestAccepted table:
+--------------+-------------+-------------+
| requester_id | accepter_id | accept_date |
+--------------+-------------+-------------+
| 1            | 2           | 2016/06/03  |
| 1            | 3           | 2016/06/08  |
| 2            | 3           | 2016/06/08  |
| 3            | 4           | 2016/06/09  |
+--------------+-------------+-------------+
Output: 
+----+-----+
| id | num |
+----+-----+
| 3  | 3   |
+----+-----+
Explanation: 
The person with id 3 is a friend of people 1, 2, and 4, so he has three friends in total, which is the most number than any others.
 
Solution:-
 
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







