------------------------- Leetcode 1683 ------------------------------------
-------------------------- Invalid Tweets-----------------------------------

create table Tweets001
(tweet_id int primary key,
 content varchar(40));

 insert into Tweets001 values(1,'Vote for Biden');
 insert into Tweets001 values(2,'let us make America great again! ');

 select * from Tweets001;

 select distinct tweet_id from Tweets001
 where len(content)>15
 order by tweet_id;

