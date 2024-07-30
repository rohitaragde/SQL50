------------------------------ leetcode 626------------------------------------
--------------------------- Exchange Seats-------------------------------------

Question:-

Table: Seat

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| student     | varchar |
+-------------+---------+
id is the primary key (unique value) column for this table.
Each row of this table indicates the name and the ID of a student.
id is a continuous increment.
 

Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

Return the result table ordered by id in ascending order.

The result format is in the following example.

 

Example 1:

Input: 
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |
+----+---------+
Output: 
+----+---------+
| id | student |
+----+---------+
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |
+----+---------+
Explanation: 
Note that if the number of students is odd, there is no need to change the last one's seat.

Solution:-

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



