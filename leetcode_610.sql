------------------------------ Leetcode 610-------------------------------------

create table TTriangle
(x int,
 y int,
 z int,
 primary key(x,y,z));



 insert into TTriangle values(13,15,30);
 insert into TTriangle values(10,20,15);

 select * from TTriangle;

/*Report for every three line segments whether they can form a triangle.
Return the result table in any order.*/

select x,y,z,
case when x + y>z and y+z>x and x+z>y then 'Yes'
     else 'No'
end as Triangle
from TTriangle



