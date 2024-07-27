---------------------------- Leetcode 1251----------------------------------

--------------------------- Average Selling Price ----------------------------
create table Prices1
(product_id int,
 start_dates date,
 end_dates date,
 price int,
 primary key(product_id,start_dates,end_dates));

 create table UnitsSold1
 (product_id int,
  purchase_date date,
  units int);

  insert into Prices1 values(1,'2019-02-17','2019-02-28',5);
  insert into Prices1 values(1,'2019-03-01','2019-03-22',20);
  insert into Prices1 values(2,'2019-02-01','2019-02-20',15);
  insert into Prices1 values(2,'2019-02-21','2019-03-31',30);


  insert into UnitsSold1 values(1,'2019-02-25',100);
  insert into UnitsSold1 values(1,'2019-03-01',15);
  insert into UnitsSold1 values(2,'2019-02-10',200);
  insert into UnitsSold1 values(2,'2019-03-22',30);

  select * from Prices1;
  select * from UnitsSold1;

  /*
  Write a solution to find the average selling price for each product.
  average_price should be rounded to 2 decimal places.
Return the result table in any order.
*/

select p.product_id,
round(sum(u.units*p.price)/sum(u.units),2) as average_price   
from Prices1 p join UnitsSold1 u
on p.product_id=u.product_id
where u.purchase_date between p.start_dates and p.end_dates
group by p.product_id 


