-------------------------- leetcode 570 --------------------------------------

create table Emp011
(id int primary key,
nnames varchar(10),
department varchar(10),
managerid int);

insert into Emp011 values(101,'John','A',null);
insert into Emp011 values(102,'Dan','A',101);
insert into Emp011 values(103,'James','A',101);
insert into Emp011 values(104,'Amy','A',101);
insert into Emp011 values(105,'Anne','A',101);
insert into Emp011 values(106,'Ron','B',101);

select * from Emp011;

/* Write a solution to find managers with at least five direct reports.
Return the result table in any order.*/

select * from Emp011;

select nnames from Emp011
where id in (select managerid from Emp011 group by managerid
having count(managerid)>=5);




