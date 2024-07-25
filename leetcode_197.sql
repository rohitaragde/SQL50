----------------------------------- Leetcode 197 ---------------------------------

-------------------------------- Rising Temprature --------------------------------

create table Weather
(id int primary key,
 recordDate date,
 temprature int);

 insert into Weather values(1,'2015-01-01',10);
 insert into Weather values(2,'2015-01-02',25);
 insert into Weather values(3,'2015-01-03',20);
 insert into Weather values(4,'2015-01-04',30);

 select * from Weather;

 /*
 Write a solution to find all dates' 
 Id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
*/

 select * from Weather;

SELECT a.id as id FROM Weather a JOIN Weather b 
ON DATEDIFF(day, b.recordDate, a.recordDate) = 1
WHERE a.temprature > b.temprature;