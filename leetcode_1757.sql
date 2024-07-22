--------------------- leetcode 1757 ----------------------------------------
-------------- Recyclable and Low Fat products ---------------------------------
use rohit;

create table Products001
(product_id int primary key,
low_fats enum('Y','N'),
recyclable enum('Y','N'));

insert into Products001 values(0,'Y','N');
insert into Products001 values(1,'Y','Y');
insert into Products001 values(2,'N','Y');
insert into Products001 values(3,'Y','Y');
insert into Products001 values(4,'N','N');

select * from Products001;

select product_id from Products001
where low_fats='Y' and recyclable='Y'
order by product_id;




