-------------------------- Leetcode 1164------------------------------------------
Question:-
 
Table: Products

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| new_price     | int     |
| change_date   | date    |
+---------------+---------+
(product_id, change_date) is the primary key (combination of columns with unique values) of this table.
Each row of this table indicates that the price of some product was changed to a new price at some date.
 

Write a solution to find the prices of all products on 2019-08-16. Assume the price of all products before any change is 10.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Products table:
+------------+-----------+-------------+
| product_id | new_price | change_date |
+------------+-----------+-------------+
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |
+------------+-----------+-------------+
Output: 
+------------+-------+
| product_id | price |
+------------+-------+
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |
+------------+-------+

 Solution:-
 
create table Productsn
(product_id int,
 new_price int,
 change_date date,
 primary key(product_id,change_date));

 insert into Productsn values(1,20,'2019-08-14');
 insert into Productsn values(2,50,'2019-08-14');
 insert into Productsn values(1,30,'2019-08-15');
 insert into Productsn values(1,35,'2019-08-16');
 insert into Productsn values(2,65,'2019-08-17');
 insert into Productsn values(3,20,'2019-08-18');

 select * from Productsn;

/*
 Write a solution to find the prices of all products on 2019-08-16.
 Assume the price of all products before any change is 10.
Return the result table in any order.*/

 select * from Productsn;

select product_id, new_price as price from Productsn 
where(product_id,change_date) in
(select product_id, max(change_date)
from Productsn
where change_date<='2019-08-16'
group by product_id)
union

select product_id, 10 as price from Productsn
where product_id not in
(select product_id
from Productsn
where change_date<='2019-08-16')











