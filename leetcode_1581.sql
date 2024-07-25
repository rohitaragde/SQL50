------------------------ Leetcode 1581 ------------------------------------

create table Visits11
(visit_id int primary key,
 customer_id int )

 create table Transactions11
 (transaction_id int primary key,
  visit_id int,
  amount int,
  foreign key(visit_id) references Visits11(visit_id));

  insert into Visits11 values(1,23);
  insert into Visits11 values(2,9);
  insert into Visits11 values(4,30);
  insert into Visits11 values(5,54);
  insert into Visits11 values(6,96);
  insert into Visits11 values(7,54);
  insert into Visits11 values(8,54);

  insert into Transactions11 values(2,5,310);
  insert into Transactions11 values(3,5,300);
  insert into Transactions11 values(9,5,200);
  insert into Transactions11 values(12,1,910);
  insert into Transactions11 values(13,2,970);

  select * from Visits11;
  select * from Transactions11;

  /*Write a solution to find the IDs of the users who visited
  without making any transactions and the number of times 
  they made these types of visits.
  Return the result table sorted in any order.*/

  
   select * from Visits11;
   select * from Transactions11;

  select distinct v.customer_id,count(v.visit_id) as count_no_trans
  from Visits11 v left join Transactions11 t
  on v.visit_id=t.visit_id
  where t.visit_id is null
  group by v.customer_id

   select distinct v.customer_id,count(v.visit_id) as count_no_trans
  from Visits11 v left join Transactions11 t
  on v.visit_id=t.visit_id
  where v.visit_id not in (select t.visit_id from Transactions11 t)
  group by v.customer_id





