CREATE DATABASE CompanyDB1;
USE CompanyDB1;

-- Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    EmpName VARCHAR(100),
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10,2),
    ManagerID INT,
    City VARCHAR(50)
);
-- Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(100),
    Location VARCHAR(50)
);
-- Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(100),
    DepartmentID INT,
    StartDate DATE,
    EndDate DATE
);
-- EmployeeProjects Table (Many-to-Many)
CREATE TABLE EmployeeProjects (
    EmpID INT,
    ProjectID INT,
    Role VARCHAR(50),
    PRIMARY KEY (EmpID, ProjectID),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);
-- insert values in Departments table
INSERT INTO Departments (DeptName, Location) VALUES
('IT', 'New York'),
('HR', 'Chicago'),
('Finance', 'Boston'),
('Marketing', 'San Francisco'),
('Operations', 'Los Angeles');

-- Insert into Employees
INSERT INTO Employees (EmpName, DepartmentID, HireDate, Salary, ManagerID, City) VALUES
('Alice', 1, '2019-01-15', 75000, NULL, 'New York'),
('Bob', 1, '2020-03-20', 65000, 1, 'New York'),
('Charlie', 2, '2018-07-10', 60000, NULL, 'Chicago'),
('David', 2, '2021-05-22', 55000, 3, 'Chicago'),
('Eve', 3, '2017-11-12', 80000, NULL, 'Boston'),
('Frank', 3, '2022-01-01', 45000, 5, 'Boston'),
('Grace', 4, '2016-09-05', 90000, NULL, 'San Francisco'),
('Hannah', 4, '2020-12-15', 70000, 7, 'San Francisco'),
('Ivy', 5, '2019-08-18', 50000, NULL, 'Los Angeles'),
('Jack', 5, '2021-09-25', 48000, 9, 'Los Angeles'),
('Karen', 1, '2018-04-11', 77000, 1, 'New York'),
('Leo', 2, '2022-02-02', 56000, 3, 'Chicago'),
('Mona', 3, '2019-06-19', 82000, 5, 'Boston'),
('Nick', 4, '2021-07-23', 67000, 7, 'San Francisco'),
('Olivia', 5, '2017-03-14', 53000, 9, 'Los Angeles');

-- Insert into Projects
INSERT INTO Projects (ProjectName, DepartmentID, StartDate, EndDate) VALUES
('Website Revamp', 1, '2020-01-01', '2020-12-31'),
('Recruitment Drive', 2, '2021-03-01', '2021-08-31'),
('Budget Analysis', 3, '2019-04-01', '2019-09-30'),
('Ad Campaign', 4, '2020-06-01', '2021-01-15'),
('Logistics Optimization', 5, '2021-09-01', NULL),
('Cyber Security', 1, '2022-01-01', NULL),
('Employee Training', 2, '2022-06-01', NULL),
('Financial Audit', 3, '2020-01-01', '2020-06-30');

-- Insert into EmployeeProjects
INSERT INTO EmployeeProjects (EmpID, ProjectID, Role) VALUES
(1, 1, 'Lead Developer'),
(2, 1, 'Developer'),
(11, 1, 'Tester'),
(3, 2, 'HR Manager'),
(4, 2, 'HR Assistant'),
(12, 7, 'HR Recruiter'),
(5, 3, 'Finance Manager'),
(6, 8, 'Auditor'),
(13, 3, 'Analyst'),
(7, 4, 'Marketing Head'),
(8, 4, 'Marketing Executive'),
(14, 4, 'Designer'),
(9, 5, 'Operations Manager'),
(10, 5, 'Logistics Officer'),
(15, 5, 'Analyst'),
(1, 6, 'Security Lead'),
(2, 6, 'Security Analyst');

DROP TABLE IF EXISTS employeeprojects;
DROP TABLE IF exists employees;
drop table if exists projects;
drop table if exists departments;

-- re-create all table
-- insert value again in all table
-- verify all table value make sure of empid start from 1 to 15 and departmentid start from 1 to 5 and projectid from 1 to 8
-- I have drop all tables and re-create them, and recreate table and insert value again , now it is showing correctly,
-- but this situation (showing foreign key constraints error) wont be happen again when shut down my laptop , for this what can i do?
-- ✅ Solution Summary:
-- If you want fresh IDs every time → use TRUNCATE or ALTER TABLE … AUTO_INCREMENT = 1;
-- CASCADE is unrelated to this problem (it only handles dependent deletes/updates).
-- About CASCADE
-- CASCADE is only for foreign key relationships (e.g., if you delete a department, all employees in that department also get deleted if you set ON DELETE CASCADE).
-- It does not control or reset AUTO_INCREMENT values.
-- So CASCADE will not help you in restarting IDs.

-- Before using alter, i have to truncate table first to start with auto_increament = 1;
truncate table employeeprojects; -- this need to truncated first becz employees and project table is connected with foreign key
truncate table employees;
truncate table projects;
truncate table departments;

-- ⚡ Key Takeaway:
-- TRUNCATE won’t work if a table is part of a foreign key relationship unless you disable FK checks.
-- Use DELETE + ALTER AUTO_INCREMENT or SET FOREIGN_KEY_CHECKS = 0 before truncating.
-- CASCADE does not help here because cascade only applies on DELETE/UPDATE, not TRUNCATE.

-- Option 1: Disable foreign key checks temporarily
set foreign_key_checks = 0;
-- now truncate 
truncate table employeeprojects;
truncate table employees;
truncate table projects;
truncate table departments;
-- 

ALTER TABLE Employees AUTO_INCREMENT = 1;
ALTER TABLE Departments AUTO_INCREMENT = 1;
ALTER TABLE Projects AUTO_INCREMENT = 1;

set foreign_key_checks = 1;

Alter table employees auto_increment = 1;
ALTER table departments auto_increment = 1;
alter table projects auto_increment = 1;

-- 50 Interview-Level SQL Questions
-- Concept 1: Filtering & Sorting

-- 1. Retrieve all employees working in the IT department.
select e.empid, e.empname, d.DeptName
from employees as e
join departments as d
on e.DepartmentID = d.DepartmentID
where d.DeptName = 'IT';

-- 2. Find employees who earn more than 70,000.
select empid, empname, salary
from employees
where salary > 70000;

-- 3. Get employees hired after 2020.
select empid, empname, HireDate
from employees
where year(HireDate) > 2020;

-- 4. List employees who do not have a manager.
select empid, empname
from employees
where managerid is null;

-- 5. Show employees from New York or Chicago.
select e.empname, d.location
from employees as e
join departments as d
on e.departmentid = d.departmentid
where d.location = 'New York' or d.location = 'Chicago';

-- another method using 'IN'
select e.empname, d.location
from employees as e
join departments as d
on e.departmentid = d.departmentid
where d.location in ('New York', 'Chicago');

-- 6. Retrieve top 5 highest paid employees.
select empid, empname, salary
from employees
group by empid, empname
order by salary desc
limit 5;

-- 7. Get employees hired between 2019 and 2021.
select empid, empname, hiredate
from employees
where year(hiredate) between 2019 and 2021;
-- another way
select empid, empname, hiredate
from employees
Where hiredate between '2019-01-01' and '2021-12-31';

-- 8. Find employees whose name starts with "A".
select empid, empname
from employees
where empname like 'A%';

-- 9. Retrieve employees with salary between 50,000 and 80,000.
select empid, empname, salary
from employees
where salary between 50000 and 80000;

-- 10. Sort employees by salary in descending order.
select empid, empname, salary
from employees
order by salary desc;

-- Joins

-- 11. List employees along with their department name.
select e.empid, e.empname, d.deptname
from employees as e
join departments as d
on e.departmentid = d.departmentid;

-- 12. Get employees and their manager names (self join).
select
e.empid as employeeid,
e.empname as employeename,
m.empid as managerid,
m.empname as managername
from employees as e
left join employees as m
on e.managerid = m.empid;

-- 13. Show all projects with their department name.
select p.projectid, p.projectname, d.deptname
from projects as p
join departments as d
on p.DepartmentID = d.DepartmentID;

-- If you want to make sure all projects appear (even if some don’t have a department assigned yet), you could use a LEFT JOIN:
select p.projectid, p.projectname, d.deptname
from projects as p
left join departments as d
on p.DepartmentID = d.DepartmentID;

-- 14. List employees along with the projects they are working on.
-- with inner join(Only shows employees who have at least one project.)
select e.empid, e.empname, p.projectname, ep.role
from employees as e
join employeeprojects as ep
on e.empid = ep.empid
join projects as p
on p.projectid = ep.projectid;

-- LEFT JOIN (list employees along with the projects they are working on)
select e.empid, e.empname, p.projectname, ep.role
from employees as e
left join employeeprojects as ep
on e.empid = ep.empid
left join projects as p
on p.projectid = ep.projectid;

-- Right Join (Show all projects and the employees working on them (including projects with no employees)
select e.empid, e.empname, p.projectname, ep.role
from employees as e
right join employeeprojects as ep
on e.empid = ep.empid
right join projects as p
on p.projectid = ep.projectid;

-- Summary
-- INNER JOIN → Only employees who are assigned to projects.
-- LEFT JOIN → All employees, even if they have no projects.
-- RIGHT JOIN → All projects, even if they have no employees.
-- Key Rule to Remember
-- The table immediately before JOIN keyword is left.
-- The table immediately after JOIN keyword is right.

-- FULL OUTER JOIN
-- MySQL does NOT support FULL OUTER JOIN directly.
-- But we can simulate it by combining:
-- LEFT JOIN (all rows from left table)
-- RIGHT JOIN (all rows from right table)
-- UNION (merge results, remove duplicates)
-- For your case (Employees ↔ EmployeeProjects ↔ Projects):
-- FULL OUTER JOIN Simulation
SELECT e.EmpID, e.EmpName, p.ProjectName, ep.Role
FROM Employees e
LEFT JOIN EmployeeProjects ep ON e.EmpID = ep.EmpID
LEFT JOIN Projects p          ON ep.ProjectID = p.ProjectID

UNION

SELECT e.EmpID, e.EmpName, p.ProjectName, ep.Role
FROM Employees e
RIGHT JOIN EmployeeProjects ep ON e.EmpID = ep.EmpID
RIGHT JOIN Projects p          ON ep.ProjectID = p.ProjectID;

-- What This Does
-- 1. First query (LEFT JOIN)
-- Returns all Employees, even if they aren’t assigned to any Project.
-- 2. Second query (RIGHT JOIN)
-- Returns all Projects, even if no Employee is assigned.
-- 3. UNION
-- Combines both → final result includes:
-- All Employees (with/without projects)
-- All Projects (with/without employees)

-- 15. Find employees who are not assigned to any project.
select e.empid, e.empname
from employees as e
left join employeeprojects as ep
on e.empid = ep.empid
where projectid is null;

-- Aggregations
-- 16. Find the total salary paid by each department.
select d.departmentid, d.deptname, sum(e.salary) as total_salary
from departments as d
left join employees as e
on d.DepartmentID = e.DepartmentID
group by d.departmentid, d.deptname;

-- 17. Get the average salary in each department.
select d.departmentid, d.deptname, avg(e.salary) as avg_salary
from departments as d
left join employees as e
on d.departmentid = e.departmentid
group by d.departmentid, d.deptname;

-- If you want those departments to show 0 instead of NULL, you can use:
SELECT d.DepartmentID, d.DeptName, 
       COALESCE(AVG(e.Salary), 0) AS avg_salary
FROM Departments d
LEFT JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DeptName;

-- 18. Find the department with the maximum total salary.
select d.deptname, max(e.salary) as max_total_salary
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID
group by d.deptname
order by max_total_salary desc
limit 1;

-- 19. Count number of employees in each department.
select e.departmentid, d.deptname, count(e.empid) as emp_count
from departments as d
left join employees as e
on d.DepartmentID = e.DepartmentID
group by d.deptname, e.departmentid;

-- 20. Retrieve departments having more than 3 employees.
select d.deptname, d.departmentid, count(empid) as emp_count
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID
group by d.deptname, d.departmentid
having emp_count > 3;

-- Subqueries
-- 21. Find employees earning more than the average salary.
select avg(salary) from employees; -- '64866.666667'

select empid, empname, salary
from employees
where salary > (select avg(salary) from employees );

-- 22. Get employees working in the department where "Alice" works.
select e.empname, d.deptname
from employees as e
join departments as d
where e.empname = 'Alice';

select e.empname, d.deptname
from employees as e
join departments as d
where e.empname = (select e.empname
from employees as e

where e.empname = 'Alice');

-- 23. List employees whose salary is higher than "Bob".
select salary
from employees
where empname = 'Bob'; -- '65000.00'
-- sub query
select *
from employees
where salary > (select salary
from employees
where empname = 'Bob');

-- 24. Find employees who are working on the same project as "Eve".
select e.EmpID, e.EmpName, p.projectid, p.projectname
from employees as e
join employeeprojects as ep
on e.empid = ep.empid
join projects as p
on p.projectid = ep.projectid
where empname = 'Eve'; -- '5', 'Eve', '3', 'Budget Analysis'
-- subquery
select e.EmpID, e.EmpName, p.projectid, p.projectname
from employees as e
join employeeprojects as ep
on e.empid = ep.empid
join projects as p
on p.projectid = ep.projectid
where p.projectname = (select  p.projectname
from employees as e
join employeeprojects as ep
on e.empid = ep.empid
join projects as p
on p.projectid = ep.projectid
where empname = 'Eve'); -- this query will include Eve as well as Mona who worked on Budget analysis project
-- the above query is correct but if Eve is working on multiple projects, then this will not be work due to this '=' sign
-- for this, we use IN clause instead of '=', 
SELECT e.EmpID, e.EmpName, p.ProjectID, p.ProjectName
FROM Employees e
JOIN EmployeeProjects ep ON e.EmpID = ep.EmpID
JOIN Projects p ON p.ProjectID = ep.ProjectID
WHERE p.ProjectName IN (
    SELECT p2.ProjectName
    FROM Employees e2
    JOIN EmployeeProjects ep2 ON e2.EmpID = ep2.EmpID
    JOIN Projects p2 ON p2.ProjectID = ep2.ProjectID
    WHERE e2.EmpName = 'Eve'
)
AND e.EmpName <> 'Eve'; -- by adding this,only result of mona will be shown

-- 25. Retrieve employees not working on any project (using subquery).
-- using NOT IN
SELECT e.EmpID, e.EmpName
FROM Employees e
WHERE e.EmpID NOT IN (
    SELECT ep.EmpID
    FROM EmployeeProjects ep
);
-- USING NOT EXISTS
select e.empid, e.empname
from employees e
where  not EXISTS ( select ep.empid
from employeeprojects as ep
where e.empid = ep.empid
);
-- using LEFT JOIN + IS NULL
select e.empid, e.empname
from employees e
left join employeeprojects ep
on e.empid = ep.empid
where e.empid is null;
-- LEFT JOIN ensures all employees are listed, even without projects.
-- WHERE ep.EmpID IS NULL filters only those who had no match (i.e., no projects).

-- Set Operations (union, union all, intersect, except)
-- 26. Get employees working in IT or HR departments.
-- employees in IT
select empid, empname, departmentid
from employees
where departmentid = (select departmentid from departments
where deptname = 'IT'
)
union 
-- employees in HR
select empid, empname, departmentid
from employees
where departmentid = (select  departmentid from departments
where deptname = 'HR'
);
-- 👉 UNION automatically removes duplicates (if any).
-- 👉 If you want duplicates allowed → use UNION ALL.
-- solve using IN Clause, without set operations
select empid, empname, departmentid
from employees
where departmentid in ( select departmentid
from departments
where deptname IN ('IT', 'HR')
);
-- 27. Find employees who are in Finance but not in HR.
-- Using UNION / EXCEPT logic (Set Operations style), since mysql dont have EXCEPT logic , so we use UNION
-- employee in FINANCE
select empid, empname
from employees
where departmentid = (select departmentid FROM departments where deptname = 'Finance')
and empid not in ( select empid from employees
where departmentid = (select departmentid from departments where deptname = 'HR')
);
-- Using joins
select e.empid, e.empname, e.departmentid
from employees e
join departments d
on e.departmentid = d.departmentid
where deptname = 'Finance'
and empid not in ( select empid 
from employees e2
join departmentS d2
on d2.departmentid = e2.departmentid
where d2.deptname = 'HR');

-- 28. Retrieve employees common in IT and Marketing projects (INTERSECT).
-- Using IN Clause
select e.empid, e.empname
from employees as e
where e.empid in ( select ep.empid
from employeeprojects ep
join projects p
on p.projectid = ep.projectid
where projectname = 'IT'
)
and e.empid in (select ep.empid
from employeeprojects ep
join projects p
on p.projectid = ep.projectid
where projectname = 'Marketing');
-- using JOINS
select e.empid, e.empname, p.projectid, p.projectname
from employees as e
join employeeprojectS as ep
on e.empid = ep.empid
join projects as p
on p.projectid = ep.projectid
where p.projectname = 'Marketing' and 
p.projectname = 'IT';

-- Indexing & Data Modification
-- 29. Create an index on EmpName column.
create index idx_empname
on employees(empname);
-- if you want to create unique index name
-- CREATE UNIQUE INDEX idx_empname_unique
-- ON Employees(EmpName);
-- verify, if index emplement or not
show indexes from employees;
--
EXPLAIN
SELECT * 
FROM Employees 
WHERE EmpName = 'Eve';
-- this uses index and return result fast, becz it have to check only one column empname, if i drop index and run this 
-- query again it will take time and check all columns in the table.

-- 30. Update salary of "Jack" to 55,000.
update employees
set salary = 55000
where empname = 'Jack'; 

-- 31. Delete employees hired before 2018.
delete from employees 
where hiredate < '2018-01-01';
-- showing error, need to drop employeeprojects and employees and re-create it using DELETE cascade.(1st Approach)
-- Recommended approach (safe): Remove child rows first, then delete parents (2nd approach)
-- Preview which employees will be affected
SELECT EmpID, EmpName, HireDate
FROM Employees
WHERE HireDate < '2018-01-01';
-- use cascade methode: its safe and relaible
-- If you want deletes of employees to automatically delete their project assignments in the future, modify the FK to cascade:
show create table employeeprojects;
-- Fresh Schema with ON DELETE CASCADE
drop table if exists employeeprojects;
drop table if exists employees;
drop table if exists projects;
drop table if exists departments;

-- re-create all four table
-- Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(100),
    Location VARCHAR(50)
);

-- Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    EmpName VARCHAR(100),
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10,2),
    ManagerID INT,
    City VARCHAR(50),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
        ON DELETE CASCADE
        on update cascade
);

-- Projects table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(100),
    DepartmentID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
        ON DELETE CASCADE
        on update cascade
);

-- EmployeeProjects (Many-to-Many junction table)
CREATE TABLE EmployeeProjects (
    EmpID INT,
    ProjectID INT,
    Role VARCHAR(50),
    PRIMARY KEY (EmpID, ProjectID),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
        ON DELETE CASCADE,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
        ON DELETE CASCADE
        on update cascade
);
-- now insert value in all table
-- now i can easily delete
delete from employees 
where hiredate < '2018-01-01';
-- verify
select hiredate
from employees
where hiredate < '2018-01-01'; -- it is showing null means its true.

-- 32. Truncate the EmployeeProjects table.
truncate table employeeprojects;
-- reinsert value to employeeprojects
-- but first drop table
-- follow the previous step due to foreign key and child key constrains, 
-- first drop all four table
-- add ON UPDATE CASCADE to the table and re-create table and insert value again

-- String Functions
-- 33. Get first 3 letters of each employee name.
select empid, empname, left(empname, 3) as first_3_letters
from employees
order by empid;

-- 34. Convert all employee names to uppercase.
select empname, upper(empname) as upper_name
from employees;

-- 35. Find employees whose name contains "an".
select empname
from employees
where empname like '%an%';

-- 36. Replace "Manager" with "Head" in project roles.
-- verify(Before update: )
SELECT EmpID, ProjectID, Role FROM EmployeeProjects 
WHERE Role LIKE '%Manager%';
-- replace
update employeeprojects
set role = replace(Role, 'Manager', 'Head')
where role like "%Manager%";
-- Verify After Update
select empid, projectid, role from employeeprojects
where role like "%Head%";

-- Date Functions

-- 37. Find employees who completed more than 3 years in the company.
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City 
from employees
where TIMESTAMPDIFF(Year, Hiredate, curdate())>3;

-- 38. Get difference in years between hire date and today for all employees.
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City, timestampdiff(Year, HireDate, curdate()) as YearsCompleted
from employees;

-- 39. Retrieve employees hired in the month of June.
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City 
from employees
where month(HireDate) = 6;

-- 40. Find projects that are still ongoing (NULL end date).
select ProjectID, ProjectName, DepartmentID, StartDate, EndDate from projects
where EndDate is null;

-- Null Handling

-- 41. Show all employees and if ManagerID is NULL, display "Top Manager".
SELECT 
  EmpID,
  EmpName,
  DepartmentID,
  HireDate,
  Salary,
  City,
  ifnull(ManagerId, 'Top Manager') as Manager_Status
  from  employees;
  
  -- or equivalently:
  SELECT 
  EmpID,
  EmpName,
  DepartmentID,
  HireDate,
  Salary,
  City,
  coalesce(ManagerId, 'Top Manager') as ManagerStatus
  from employees;
  
-- 42. Replace NULL EndDate of projects with "Ongoing".
select ProjectID, ProjectName, DepartmentID, StartDate,
coalesce(date_format(EndDate, '%Y-%M-%D'), 'Ongoing') as EndDateStatus
from projects;

-- Conditional Functions

-- 43. Show employees and mark salary as "High" if > 70,000 else "Low".
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City,
case when salary > 70000 then 'High'
else 'low'
end as SalaryStatus
From employees;

-- 44. Use IF() to check if employee belongs to New York.
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City,
IF(City ="New York", "Yes", "No") as location_status
from employees;

-- Window Functions

-- 45. Rank employees based on salary (highest = 1).
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City,
Rank() over (Order by salary DESC) AS SalaryRank
from employees;

-- 46. Assign row numbers to employees ordered by hire date.
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City,
row_number() over (order by HireDate ) as RowNum
From employees;

-- 47. Get cumulative salary sum ordered by hire date.
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City,
sum(Salary) OVER (ORDER BY HireDate) as CumulativeSalary
from employees;

-- 48. Find department-wise top 2 highest paid employees.
select e.EmpID, e.EmpName, e.DepartmentID, e.HireDate, e.Salary,
d.departmentid, d.deptname
from ( select empid, empname, departmentid, hiredate, salary,
Row_Number() over (partition by departmentid order by salary desc) as RankInDept
from employees) as e
join departments as d
on e.departmentid = d.departmentid
where salary <= 2
order by d.deptname, e.salary desc;

-- 49. Use DENSE_RANK() to rank employees with equal salary.
select EmpID, EmpName, DepartmentID, HireDate, Salary, ManagerID, City



-- 50. Partition employees by department and find their rank by salary.








