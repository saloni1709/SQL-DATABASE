CREATE DATABASE Collegedb;
USE Collegedb;

CREATE TABLE Students(
	StudentID int AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age TINYINT,
    Mail VARCHAR(100),
    JoinDate DATE
);

INSERT INTO Students(Name, Age, Mail, JoinDate)
VALUES
('Saloni', 20, 'abc1@gmail.com', '2026-05-18'),
('Harsh', 21, 'ha1@gmail.com', '2025-06-04'),
('Samoli', 20, 'ab@gmail.com', '2026-06-04'),
('Shubham', 22, 'h12@gmail.com', '2026-05-13');

SELECT * FROM Students;

ALTER TABLE Students ADD COLUMN CITY VARCHAR(50);
ALTER TABLE Students MODIFY COLUMN Age TINYINT;
ALTER TABLE Students CHANGE Mail StudentMail VARCHAR(100);

ALTER TABLE Students ADD COLUMN ADDRESS VARCHAR(100);
UPDATE Students SET CITY = 'Jaipur' WHERE StudentID = 1;

-- TRUNCATE TABLE Students;
  
SELECT Age, JoinDate from Students;
SELECT DISTINCT Age FROM Students;

SELECT Age FROM Students WHERE age>21;

SELECT * FROM Students WHERE CITY LIKE '%Jaipur%';

SELECT * FROM Students ORDER BY Age ASC;
SELECT * FROM Students ORDER BY Age DESC;

DELETE FROM Students WHERE StudentID=3;

ALTER TABLE Students ADD COLUMN marks int;
UPDATE Students Set marks = 100 WHERE StudentID = 2;
SELECT * FROM STUDENTS;

SET SQL_SAFE_UPDATES = 0;    # Used for Updating all rows
UPDATE Students SET marks = StudentID*50;

SELECT COUNT(*) FROM Students;

SELECT COUNT(marks) FROM Students;

SELECT SUM(marks) FROM Students;
SELECT AVG(marks) FROM Students;
SELECT MEDIAN(marks) FROM Students;










