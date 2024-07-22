------------------------------ Leetcode 595 ------------------------------------
------------------------------ Big Countries -----------------------------------

create table WorldC
(nname varchar(30) primary key,
 continent varchar(10),
 area int,
 populations int,
 gdp bigint);

 insert into WorldC values('Afghanisthan','Asia',652230,25500100,20343000000);
 insert into WorldC values('Albania','Europe',28748,2831741,12960000000);
 insert into WorldC values('Algeria','Africa',2381741,37100000,188681000000);
 insert into WorldC values('Andorra','Europe',468,78115,3712000000);
 insert into WorldC values('Angola','Africa',1246700,20609294,100990000000);

 select * from WorldC;

 select nname,populations,area from WorldC
 where area>=3000000 or populations>=25000000


