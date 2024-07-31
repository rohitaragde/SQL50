------------------------ leetcode 1341----------------------------

create table Movies1
(movie_id int primary key,
 title varchar(10));

 create table Ussers1
 (users_id int primary key,
  nnames varchar(10));

  create table MovieRating1
  (movie_id int,
   users_id int,
   rating int,
   created_at date,
   primary key(movie_id,users_id));

   insert into Movies1 values(1,'Avengers');
   insert into Movies1 values(2,'Frozen 2');
   insert into Movies1 values(3,'Jokers');

   insert into Ussers1 values(1,'Daniel');
   insert into Ussers1 values(2,'Monica');
   insert into Ussers1 values(3,'Maria');
   insert into Ussers1 values(4,'James');

   insert into MovieRating1 values(1,1,3,'2020-01-12');
   insert into MovieRating1 values(1,2,4,'2020-02-11');
   insert into MovieRating1 values(1,3,2,'2020-02-12');
   insert into MovieRating1 values(1,4,1,'2020-01-01');
   insert into MovieRating1 values(2,1,5,'2020-02-17');
   insert into MovieRating1 values(2,2,2,'2020-02-01');
   insert into MovieRating1 values(2,3,2,'2020-03-01');
   insert into MovieRating1 values(3,1,3,'2020-02-22');
   insert into MovieRating1 values(3,2,4,'2020-02-25');

   select * from  Movies1;
   select * from Ussers1;
   select * from MovieRating1;

   /*Write a solution to:
   Find the name of the user who has rated the 
   greatest number of movies. In case of a tie, 
   return the lexicographically smaller user name.
   Find the movie name with the highest average rating in February 2020. 
   In case of a tie, return the lexicographically smaller movie name*/

   (select nnames from Ussers1 u join MovieRating1 r
   on u.users_id=r.users_id
   group by u.users_id
   order by count(rating) desc,nnames 
   limit 1)
   
   union all
   
   (select title from Movies1 m join MovieRating1 r
   on m.movie_id=r.movie_id
   where month(created_at)='02' and year(created_at)='2020'
   group by title
   order by  avg(rating) desc,title
   limit 1)
   