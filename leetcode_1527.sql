-------------------------------Leetcode 1527--------------------------------------
---------------------------- Patients With a Condition-------------------------

create table Patients1
(patient_id int primary key,
patient_name varchar(10),
conditions varchar(20));

insert into Patients1 values(1,'Daniel','YFEV COUGH');
insert into Patients1 values(2,'Alice','NULL');
insert into Patients1 values(3,'Bob','DIAB100 MYOP');
insert into Patients1 values(4,'George','ACNE DIAB100');
insert into Patients1 values(5,'Alain','DIAB201');

/*Write a solution to find the patient_id, patient_name,
and conditions of the patients who have Type I Diabetes. 
Type I Diabetes always starts with DIAB1 prefix.
Return the result table in any order.*/

select * from Patients1;

select patient_id,patient_name,conditions
from Patients1
where conditions like 'DIAB1%' or conditions like '%DIAB1%'
order by patient_id;













