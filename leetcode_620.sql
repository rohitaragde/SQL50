--------------------------- Leetcode 620 --------------------------------------
---------------------------- Not Boring Movies---------------------------------

create table Cinema111
(id int primary key,
 movie varchar(10),
 description varchar(10),
 rating float);


 insert into Cinema111 values(1,'War','great 3D',8.9);
 insert into Cinema111 values(2,'Science','fiction',8.5);
 insert into Cinema111 values(3,'irish','boring',6.2);
 insert into Cinema111 values(4,'Ice song','Fantacy',8.6);
 insert into Cinema111 values(5,'House card','Interesting',9.1);

 select * from Cinema111;

 /* Write a solution to report the movies
 with an odd-numbered ID and a description that is not "boring".
Return the result table ordered by rating in descending order.*/

select * from Cinema111
where id%2=1 and description<>'boring'
order by rating desc;
