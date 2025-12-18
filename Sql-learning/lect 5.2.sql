-- Step 1: Creating a database

CREATE DATABASE Company;

-- Step 2: To use this database

USE Company;

-- Step 3: Creating a table

CREATE TABLE Employee (

  EmployeeId int,

  Name varchar(20),

  Gender varchar(20),

  Salary int,

  Department varchar(20),

  Experience int
  );
  
  -- Step 4 :Add value to the table:

INSERT INTO Employee VALUES 
(1, 'Sagar Wavhal', 'Male', 35000, 'Boss', 8),
(2, 'Tessa','Female',75000,'Finance',3),
(3,'Bob','Male',28000,'HR',5),
(4, 'Abhishek Wavhal', 'Male', 95000, 'IT', 2),
(5, 'Priya Sharma', 'Female', 45000, 'IT', 2),
(6, 'Rahul Patel', 'Male', 65000, 'Sales', 5),
(7, 'Nisha Gupta', 'Female', 55000, 'Marketing', 4),
(8, 'Vikram Singh', 'Male', 75000, 'Finance', 7),
(9, 'Aarti Desai', 'Female', 50000, 'IT', 3);

SELECT * FROM Employee;

-- 1] find departments with an sum salary greater than 800000;
SELECT Department, SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Department
having sum(salary) > 80000;

-- 2] find departments with an average salary 
SELECT Department, AVG(Salary) AS Avg_Salary
FROM Employee
GROUP BY department;
-- 3] Total Employee by gender 
SELECT Gender, COUNT(*) AS Total_Empl
FROM Employee
GROUP BY Gender;

-- 4] Total Employees by Dept 
SELECT Department, COUNT(*) AS Total_Empl
FROM Employee
GROUP BY Department;

-- 5] Min salary by Gender 
SELECT Gender, MIN(Salary) AS Min_Sal
FROM Employee
GROUP BY Gender;

-- 6] Max salary in each dept 
SELECT Department , MAX(Salary) AS Max_Sal
FROM Employee
GROUP BY Department;

-- 7] Avg Experience in each dept
SELECT Department , AVG(Experience) AS Avg_Exp
FROM Employee
GROUP BY Department;

-- Find department with more than two employee but it should not be IT
select department, COUNT(EmployeeId)
from Employee
where department != 'IT'
group by department
having count(EmployeeId) >=2;

-- Find department with more than two employees and an avg salary greater than 70000
select department, count(EmployeeId) as EmployeeCount,
avg(salary) AS avg_salary
from Employee
group by department
having avg(salary) > 70000 AND Count(EmployeeId) > 2;

-- SUBQUERY
select * from employee
where salary = (select max(salary) from employee
where department = 'IT');





