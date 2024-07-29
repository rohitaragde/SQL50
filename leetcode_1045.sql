------------------------- Leetcode 1045 -----------------------------------

-------------------- Customers who Bought All Products-----------------------

create table Cust1
(cust_id int not null,
 product_key int,
 foreign key(product_key) references Prod1(product_key));



create table Prod1
(product_key int primary key);

insert into Prod1 values(5);
insert into Prod1 values(6);

insert into Cust1 values(1,5);
insert into Cust1 values(2,6);
insert into Cust1 values(3,5);
insert into Cust1 values(3,6);
insert into Cust1 values(1,6);

select * from Prod1;
select * from Cust1;

/*Write a solution to report the customer ids from the Customer table
that bought all the products in the Product table.
Return the result table in any order.*/

select * from Prod1;
select * from Cust1;


select cust_id 
from Cust1
group by cust_id
having count(distinct product_key)=
( select count(product_key) from Prod1);









