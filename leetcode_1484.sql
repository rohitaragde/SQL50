------------------------------ Leetcode 1484 --------------------------------

---------------------------- Group Sold Products By The Date------------------
use rohit;
create table Activities11
(sell_date date,
 product varchar(10));

 insert into Activities11 values('2020-05-30','Headphone');
 insert into Activities11 values('2020-06-01','Pencil');
 insert into Activities11 values('2020-06-02','Mask');
 insert into Activities11 values('2020-05-30','Basketball');
 insert into Activities11 values('2020-06-01','Bible');
 insert into Activities11 values('2020-06-02','Mask');
 insert into Activities11 values('2020-05-30','T-Shirt');

 select * from Activities11;

 /*Write a solution to find for each date the number of different products
 sold and their names.
The sold products names for each date should be sorted lexicographically.
Return the result table ordered by sell_date.*/

select sell_date,count(distinct product) as num_sold,
group_concat(distinct product order by product) as products
from Activities11
group by sell_date
order by sell_date








