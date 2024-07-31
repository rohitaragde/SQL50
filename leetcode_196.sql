----------------------------- Leetcode 196-------------------------------------
----------------------------- Delete Duplicate Emails---------------------------

create table Persons
(id int primary key,
 email varchar(20));


 insert into Persons values(1,'john@example.com');
 insert into Persons values(2,'bob@example.com');
 insert into Persons values(3,'john@example.com');

 select * from Persons;

 /*Write a solution to delete all duplicate emails, 
 keeping only one unique email with the smallest id.
 The final order of the Person table does not matter.*/

 Delete p1 from Persons p1,Persons p2
 where p1.email=p2.email and p1.id>p2.id;

