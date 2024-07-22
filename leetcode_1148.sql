---------------------------- Leetcode 1148 ----------------------------------

create table Views001
(article_id int,
 author_id int,
 viwer_id int,
 view_date date);

 insert into Views001 values(1,3,5,'2019-08-01');
 insert into Views001 values(1,3,6,'2019-08-02');
 insert into Views001 values(2,7,7,'2019-08-01');
 insert into Views001 values(2,7,6,'2019-08-02');
 insert into Views001 values(4,7,1,'2019-07-22');
 insert into Views001 values(3,4,4,'2019-07-21');
 insert into Views001 values(3,4,4,'2019-07-21');

 select * from Views001;

 select distinct author_id as id from Views001
 where author_id=viwer_id
 order by author_id;



