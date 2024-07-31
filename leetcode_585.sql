---------------------------- Leetcode 585 ------------------------------------
------------------------- Investments in 2016-----------------------------------

create table Insurance
(pid int primary key,
tiv_2015 float,
tiv_2016 float,
lat float not null,
lon float not null);

insert into Insurance values(1,10,5,10,10);
insert into Insurance values(2,20,20,20,20);
insert into Insurance values(3,10,30,20,20);
insert into Insurance values(4,10,40,40,40);

select * from Insurance;

select round(sum(tiv_2016),2) as tiv_2016
from Insurance
where tiv_2015 in(
select tiv_2015 from Insurance
group by tiv_2015
having count(*)>=1
)
and (lat,lon) in(
select lat,lon from Insurance
group by lat,lon
having count(*)=1
)
