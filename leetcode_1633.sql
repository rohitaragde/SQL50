---------------------------- Leetcode 1633 ----------------------------------
use rohit;

create table Users1
(users_id int primary key,
users_name varchar(12));

create table Register1
(contest_id int,
 users_id int,
 primary key(contest_id,users_id));

 insert into Users1 values(6,'Alice');
 insert into Users1 values(2,'Bob');
 insert into Users1 values(7,'Alex');

 insert into Register1 values(215,6);
 insert into Register1 values(209,2);
 insert into Register1 values(208,2);
 insert into Register1 values(210,6);
 insert into Register1 values(208,6);
 insert into Register1 values(209,7);
 insert into Register1 values(209,6);
 insert into Register1 values(215,7);
 insert into Register1 values(208,7);
 insert into Register1 values(210,2);
 insert into Register1 values(207,2);
 insert into Register1 values(210,7);

 select * from Users1;
 select * from Register1;

/*Write a solution to find the percentage of the users registered 
in each contest rounded to two decimals.
Return the result table ordered by percentage in descending order. 
In case of a tie, order it by contest_id in ascending order.
*/

select contest_id,
round(count(distinct users_id)*100.00/(select count(users_id) from Users1),2) as percentage
from Register1
group by contest_id