----------------------------- Leetcode 619-------------------------------------

--------------------------- Biggest Single Number-------------------------------

Question:-

Table: MyNumbers

+-------------+------+
| Column Name | Type |
+-------------+------+
| num         | int  |
+-------------+------+
This table may contain duplicates (In other words, there is no primary key for this table in SQL).
Each row of this table contains an integer.
 

A single number is a number that appeared only once in the MyNumbers table.

Find the largest single number. If there is no single number, report null.

The result format is in the following example.

 

Example 1:

Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |
+-----+
Output: 
+-----+
| num |
+-----+
| 6   |
+-----+
Explanation: The single numbers are 1, 4, 5, and 6.
Since 6 is the largest single number, we return it.
Example 2:

Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |
+-----+
Output: 
+------+
| num  |
+------+
| null |
+------+
Explanation: There are no single numbers in the input table so we return null.

Solution:-

create table MyNumbers1
(num int);

insert into MyNumbers1 values(8);
insert into MyNumbers1 values(8);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(1);
insert into MyNumbers1 values(4);
insert into MyNumbers1 values(5);
insert into MyNumbers1 values(6);


insert into MyNumbers1 values(8);
insert into MyNumbers1 values(8);
insert into MyNumbers1 values(7);
insert into MyNumbers1 values(7);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(3);
insert into MyNumbers1 values(3);


select * from MyNumbers1;



select max(num) as num 
from
( select
num from MyNumbers1
group by num
having count(num)=1) as unique_nums

select max(num) as num
from MyNumbers1
where num in
(select num from MyNumbers1 group by num having count(num)=1)  
