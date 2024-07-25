--------------------------- Leetcode 1280---------------------------------------
------------------------- Students and Examinations-------------------------------

CREATE TABLE Students101 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(10)
);


CREATE TABLE Subjects101 (
    subject_name VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Examinations101 (
    student_id INT,
    subject_name VARCHAR(20)
);

INSERT INTO Students101 VALUES (1, 'Alice');
INSERT INTO Students101 VALUES (2, 'Bob');
INSERT INTO Students101 VALUES (13, 'John');
INSERT INTO Students101 VALUES (6, 'Alex');

INSERT INTO Subjects101 VALUES ('Math');
INSERT INTO Subjects101 VALUES ('Physics');
INSERT INTO Subjects101 VALUES ('Programming');

INSERT INTO Examinations101 VALUES (1, 'Math');
INSERT INTO Examinations101 VALUES (1, 'Physics');
INSERT INTO Examinations101 VALUES (1, 'Programming');
INSERT INTO Examinations101 VALUES (2, 'Programming');
INSERT INTO Examinations101 VALUES (1, 'Physics');
INSERT INTO Examinations101 VALUES (1, 'Math');
INSERT INTO Examinations101 VALUES (13, 'Math');
INSERT INTO Examinations101 VALUES (13, 'Programming');
INSERT INTO Examinations101 VALUES (13, 'Physics');
INSERT INTO Examinations101 VALUES (2, 'Math');
INSERT INTO Examinations101 VALUES (1, 'Math');

SELECT * FROM Students101;
SELECT * FROM Subjects101;
SELECT * FROM Examinations101;

/* Write a solution to find the number of times each student attended each exam.
Return the result table ordered by student_id and subject_name.
*/

SELECT s.student_id,s.student_name,su.subject_name,
COUNT(e.student_id) AS attended_exams
FROM Students101 s
CROSS JOIN Subjects101 su
LEFT JOIN  Examinations101 e 
 ON s.student_id = e.student_id 
AND su.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, su.subject_name
ORDER BY s.student_id, su.subject_name;
