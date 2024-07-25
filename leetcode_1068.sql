------------------------------ Leetcode 1068 --------------------------------

create table Saless
(sale_id int,
 product_id int,
 years int,
 quantity int,
 price int,
 primary key(sale_id,years),
 foreign key(product_id) references Product11(product_id));

 create table Product11
 (product_id int primary key,
 product_name varchar(15));

 insert into Product11 values(100,'Nokia');
 insert into Product11 values(200,'Apple');
 insert into Product11 values(300,'Samsung');

 insert into Saless values(1,100,2008,10,5000);
 insert into Saless values(2,100,2009,12,5000);
 insert into Saless values(7,200,2011,15,9000);

 select * from Product11
 select * from Saless

/* Write a solution to report the product_name, year, and price 
for each sale_id in the Sales table.
Return the resulting table in any order.*/

select p.product_name,s.years,s.price 
from Saless s left join Product11 p
on s.product_id=p.product_id
order by p.product_name;
