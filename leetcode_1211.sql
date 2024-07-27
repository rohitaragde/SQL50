------------------------------ Leetcode 1211------------------------------------
-----------------------------Queries Quality percentage-------------------------
use rohit;


create table Queries1
(query_name varchar(10),
 result varchar(20),
 position int,
 rating int);



 insert into Queries1 values('Dog','Golden Retriever',1,5);
 insert into Queries1 values('Dog','German Shepherd',2,5);
 insert into Queries1 values('Dog','Mule',200,1);
 insert into Queries1 values('Cat','Shirazi',5,2);
 insert into Queries1 values('Cat','Siamese',3,3);
 insert into Queries1 values('Cat','Sphynyx',7,4);

 select * from Queries1;


SELECT 
    query_name,
ROUND(AVG(rating / position), 2) AS quality,
ROUND(AVG(rating<3)*100.00,2) AS poor_quality_percentage
FROM 
    Queries1
GROUP BY 
    query_name;

 
