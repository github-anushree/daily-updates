CREATE DATABASE try;

USE try;

CREATE TABLE employee (
EmpId INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Salary INT,
Gender VARCHAR(1),
Dept VARCHAR(10)
);

INSERT INTO employee VALUES
(1, 'Sagar', 5000, 'M', 'IT');

SELECT * FROM employee;

-- 1 COUNT THE employee in each dept
SELECT dept, COUNT(EmpId) AS EmpCount
FROM employee
GROUP BY dept;

-- 2 COUNT the employees by gender
SELECT Gender, COUNT(EmpId) AS GenderCount
FROM employee
GROUP BY Gender;

-- 3 TOTAL salary in each dept
SELECT Dept, SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Dept;

SELECT Dept, SUM(Salary), COUNT(EmpId), AVG(Salary)
FROM Employee
GROUP BY Dept;


