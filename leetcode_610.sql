------------------------------ Leetcode 610-------------------------------------

Question:-

Table: Triangle

+-------------+------+
| Column Name | Type |
+-------------+------+
| x           | int  |
| y           | int  |
| z           | int  |
+-------------+------+
In SQL, (x, y, z) is the primary key column for this table.
Each row of this table contains the lengths of three line segments.
 

Report for every three line segments whether they can form a triangle.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+

Solution:-
 

create table TTriangle
(x int,
 y int,
 z int,
 primary key(x,y,z));



 insert into TTriangle values(13,15,30);
 insert into TTriangle values(10,20,15);

 select * from TTriangle;

/*Report for every three line segments whether they can form a triangle.
Return the result table in any order.*/

select x,y,z,
case when x + y>z and y+z>x and x+z>y then 'Yes'
     else 'No'
end as Triangle
from TTriangle



