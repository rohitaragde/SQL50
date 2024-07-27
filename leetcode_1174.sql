------------------------------ Leetcode 1174------------------------------------
---------------------------Immediate Food Delivery II-----------------------------
use rohit;

create table Delivery11
(delivery_id int primary key,
 customer_id int,
 order_date date,
 customer_pref_delivery_date date);

 insert into Delivery11 values(1,1,'2019-08-01','2019-08-02');
 insert into Delivery11 values(2,2,'2019-08-02','2019-08-02');
 insert into Delivery11 values(3,1,'2019-08-11','2019-08-12');
 insert into Delivery11 values(4,3,'2019-08-24','2019-08-24');
 insert into Delivery11 values(5,3,'2019-08-21','2019-08-22');
 insert into Delivery11 values(6,2,'2019-08-11','2019-08-13');
 insert into Delivery11 values(7,4,'2019-08-09','2019-08-09');

 select * from Delivery11; 


select 
round(sum(case when order_date=customer_pref_delivery_date then 1 else 0 end) * 100.00/count(distinct customer_id),2) as immediate_percentage
from Delivery11
where(customer_id,order_date) in
 (select customer_id,
 min(order_date) as first_order
 from Delivery11
 group by customer_id)









