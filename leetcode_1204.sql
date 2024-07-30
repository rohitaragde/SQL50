------------------------ Leetcode 1204 -----------------------------------

create table Queues
(person_id int primary key,
person_name varchar(10),
weight int,
turn int);

insert into Queues values(5,'Alice',250,1);
insert into Queues values(4,'Bob',175,5);
insert into Queues values(3,'Alex',350,2);
insert into Queues values(6,'John Cena',400,3);
insert into Queues values(1,'Winston',500,6);
insert into Queues values(2,'Marie',200,4);

select * from Queues;


SELECT  q1.person_name
FROM Queues q1 JOIN Queues q2
ON q1.turn >= q2.turn
GROUP BY q1.person_name
HAVING SUM(q2.weight) <= 1000
order by sum(q2.weight) desc


