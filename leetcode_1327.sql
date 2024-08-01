----------------------------- Leetcode 1327--------------------------------------

------------------- List the Products Ordered in a Period-----------------------

create table Productss1
(product_id int primary key,
 product_name varchar(10),
 product_category varchar(10));


 create table orderss1
 (product_id int,
 order_date date,
 unit int,
 foreign key(product_id) references Productss1(product_id));

 insert into Productss1 values(1,'Leetcode Solutions','Book');
 insert into Productss1 values(2,'Jewels of Stringology','Book');
 insert into Productss1 values(3,'HP','Laptop');
 insert into Productss1 values(4,'Lenovo','Laptop');
 insert into Productss1 values(5,'Leetcode Kit','T-shirt');

 insert into orderss1 values(1,'2020-02-05',60);
 insert into orderss1 values(1,'2020-02-10',70);
 insert into orderss1 values(2,'2020-01-18',30);
 insert into orderss1 values(2,'2020-02-11',80);
 insert into orderss1 values(3,'2020-02-17',2);
 insert into orderss1 values(3,'2020-02-24',3);
 insert into orderss1 values(4,'2020-03-01',20);
 insert into orderss1 values(4,'2020-03-04',30);
 insert into orderss1 values(4,'2020-03-04',60);
 insert into orderss1 values(5,'2020-02-25',50);
 insert into orderss1 values(5,'2020-02-27',50);
 insert into orderss1 values(5,'2020-03-01',50);

 select * from Productss1

 select * from orderss1

 /*Write a solution to get the names of products that have
 at least 100 units ordered in February 2020 and their amount.
Return the result table in any order.*/

select p.product_name,sum(o.unit) as unit
from Productss1 p join orderss1 o
on p.product_id=o.product_id
where order_date between '2020-02-01' and '2020-02-29'
group by p.product_name
having sum(o.unit)>=100;







