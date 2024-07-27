-------------------------- Leetcode 1193---------------------------------------
-------------------------- Monthly Transactions I----------------------------
use rohit;

create table Transactions1
(id int primary key,
 country varchar(10),
 state enum('approved','declined'),
 amount int,
 trans_date date);
 
 insert into Transactions1 values(121,'US','approved',1000,'2018-12-18');
 insert into Transactions1 values(122,'US','declined',2000,'2018-12-19');
 insert into Transactions1 values(123,'US','approved',2000,'2019-01-01');
 insert into Transactions1 values(124,'DE','approved',2000,'2019-01-07');
 
 select * from Transactions1;
 
 /*Write an SQL query to find for each month and country, 
 the number of transactions and their total amount, the number of approved transactions and their total amount.
Return the result table in any order.*/

SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS YearMonth,  
    country,
    count(*) as trans_count,
    sum(case when state='approved' then 1 else 0 end) as approved_count,
    sum(amount) as trans_total_amount,
    sum(case when state='approved' then 1*amount else 0 end) as approved_total_amt
FROM 
    Transactions1
    group by DATE_FORMAT(trans_date, '%Y-%m'),country


 
 