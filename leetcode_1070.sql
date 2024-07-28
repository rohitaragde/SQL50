---------------------------- leetcode 1070-----------------------------------------

-------------------------- Product Sales Analysis III-------------------------------

create table SalesI
(sale_id int,
 product_id int,
 yyear int,
 quantity int,
 price int,
 primary key(sale_id,yyear),
 foreign key(product_id) references ProductsI(product_id));

 create table ProductsI
 (product_id int primary key,
 product_name varchar(10));

 insert into ProductsI values(100,'Nokia');
 insert into ProductsI values(200,'Apple');
 insert into ProductsI values(300,'Samsung');

 select * from ProductsI;

 insert into SalesI values(1,100,2008,10,5000);
 insert into SalesI values(2,100,2009,12,5000);
 insert into SalesI values(7,200,2011,15,9000);

  select * from ProductsI;

  select * from SalesI;

 /*Write a solution to select the product id, year, quantity,
 and price for the first year of every product sold.
 Return the resulting table in any order.*/

select product_id, yyear as first_year,
quantity,price
from SalesI
where (product_id,yyear) in
(select product_id,min(yyear) as f_year
from SalesI group by product_id)
order by 1;




 