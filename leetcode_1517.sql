------------------------------- Leetcode 1517---------------------------------

---------------------Find Users With Valid E-Mails------------------------------

create table Users101
(userr_id int primary key,
 nname varchar(10),
 mail varchar(50));

 insert into Users101 values(1,'Winston','winston@leetcode.com');
 insert into Users101 values(2,'Jonathan','jonathanisgreat');
 insert into Users101 values(3,'Annabelle','bella-@leetcode.com');
 insert into Users101 values(4,'Sally','sally.come@leetcode.com');
 insert into Users101 values(5,'Marwan','quarz#2020@leetcode.com');
 insert into Users101 values(6,'David','david69@gmail.com');
 insert into Users101 values(7,'Shapiro','.shapo@leetcode.com');

 select * from Users101

/*Write a solution to find the users who have valid emails.
A valid e-mail has a prefix name and a domain where:
The prefix name is a string that may contain letters (upper or lower case),
digits, underscore '_', period '.', and/or dash '-'. 
The prefix name must start with a letter.
The domain is '@leetcode.com'.
Return the result table in any order.
*/

select *
from Users101 
where mail regexp '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode[.]com$'
order by userr_id;





