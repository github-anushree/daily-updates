-- Create Database
CREATE DATABASE SampleDB;
USE SampleDB;

-- Create Table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary INT
);
-- Insert 30 Rows
INSERT INTO Employee VALUES
(1, 'John', 'Doe', 50000),
(2, 'Jane', 'Smith', 60000),
(3, 'David', 'Johnson', 55000),
(4, 'Emily', 'Brown', 70000),
(5, 'Michael', 'Davis', 80000),
(6, 'Sophia', 'Anderson', 48000),
(7, 'William', 'Jones', 75000),
(8, 'Olivia', 'Miller', 62000),
(9, 'Daniel', 'Taylor', 53000),
(10, 'Ava', 'Wilson', 45000),
(11, 'Matthew', 'Moore', 68000),
(12, 'Ella', 'White', 52000),
(13, 'Christopher', 'Martin', 72000),
(14, 'Grace', 'Thomas', 59000),
(15, 'Andrew', 'Jackson', 90000),
(16, 'Madison', 'Hill', 48000),
(17, 'Joshua', 'Carter', 67000),
(18, 'Abigail', 'Perez', 58000),
(19, 'Logan', 'Hall', 85000),
(20, 'Sophie', 'Evans', 50000),
(21, 'Jackson', 'Wright', 77000),
(22, 'Lily', 'Harris', 63000),
(23, 'Aiden', 'Clark', 49000),
(24, 'Chloe', 'Lopez', 71000),
(25, 'Carter', 'Baker', 72000),
(26, 'Aubrey', 'Green', 55000),
(27, 'Ethan', 'Allen', 68000),
(28, 'Zoe', 'Lee', 59000),
(29, 'Mason', 'King', 80000),
(30, 'Emma', 'Garcia', 62000),
(31, 'Noah', 'Smith', 55000),
(32, 'Avery', 'Jones', 70000),
(33, 'Elijah', 'Wilson', 48000),
(34, 'Grace', 'Hill', 55000),
(35, 'Aria', 'Garcia', 72000),
(36, 'Liam', 'Taylor', 60000),
(37, 'Scarlett', 'Thomas', 53000),
(38, 'Lucas', 'Miller', 78000),
(39, 'Isabella', 'Brown', 52000),
(40, 'Henry', 'Moore', 67000),
(41, 'Aiden', 'Evans', 49000),
(42, 'Aria', 'Wright', 59000),
(43, 'Jackson', 'Johnson', 70000),
(44, 'Ava', 'Davis', 55000),
(45, 'Ethan', 'Allen', 68000),
(46, 'Chloe', 'Perez', 72000),
(47, 'Oliver', 'Harris', 59000),
(48, 'Sophie', 'Clark', 63000),
(49, 'Logan', 'Lopez', 55000),
(50, 'Lily', 'Baker', 71000),
(51, 'Mia', 'Green', 80000),
(52, 'Carter', 'King', 62000),
(53, 'Ella', 'Garcia', 55000),
(54, 'Matthew', 'Thomas', 90000),
(55, 'Avery', 'Hill', 48000),
(56, 'Sophia', 'Carter', 67000),
(57, 'Jackson', 'White', 58000),
(58, 'Aria', 'Hall', 85000),
(59, 'Aiden', 'Smith', 50000),
(60, 'Emma', 'Wilson', 77000);

select * from Employee;
-- 5 Questions on UPDATE Clause  TO update existing Rows 
-- 1. Write a SQL query to update John Doe's salary to 55000.
update employee
set salary = 55000
where FirstName = 'John' and LastName = 'Doe';

-- 2. Write a SQL query to increase all salaries by 10%.
update employee
set salary = salary*1.1;

-- 3. Write a SQL query to update salaries for employees with a salary below 55000 to 55000.
update employee
set salary = 55000
where salary < 55000;

-- 4. Write a SQL query to update Jane Smith's last name to 'Johnson'.
update employee
set lastname = 'Johnson'
where Firstname = 'Jane' and lastname = 'Smith';

-- 5. Write a SQL query to double the salary for employees with an ID greater than 15.
update employee
set salary = salary*2
where employeeid > 15;

-- 5 Questions on DELETE Clause
-- 1. Write a SQL query to delete the employee with ID 10.
delete from employee
where employeeid = 10;

-- 2. Write a SQL query to delete all employees with a salary less than 40000.
delete from employee
where salary < 40000;

-- 3. Write a SQL query to delete all rows from the Employee table.
START TRANSACTION;
delete from employee;
-- If you change your mind, undo:
rollback;

-- Your Employees table is using InnoDB, which does support transactions — so ROLLBACK should normally work.
-- But since your data still got deleted permanently, that means autocommit was most likely ON.
-- SET autocommit = 0;  -- disable autocommit
-- START TRANSACTION;
-- DELETE FROM Employees;
-- -- Undo if needed
-- ROLLBACK;
-- -- Or confirm deletion
-- COMMIT;
-- Turn autocommit back on (optional)
-- SET autocommit = 1;

select * from employee;
SHOW TABLE STATUS LIKE 'Employee';

-- now re-insert values to table employee since its deleted and rollback is not working
-- Insert 30 Rows
INSERT INTO Employee VALUES
(1, 'John', 'Doe', 50000),
(2, 'Jane', 'Smith', 60000),
(3, 'David', 'Johnson', 55000),
(4, 'Emily', 'Brown', 70000),
(5, 'Michael', 'Davis', 80000),
(6, 'Sophia', 'Anderson', 48000),
(7, 'William', 'Jones', 75000),
(8, 'Olivia', 'Miller', 62000),
(9, 'Daniel', 'Taylor', 53000),
(10, 'Ava', 'Wilson', 45000),
(11, 'Matthew', 'Moore', 68000),
(12, 'Ella', 'White', 52000),
(13, 'Christopher', 'Martin', 72000),
(14, 'Grace', 'Thomas', 59000),
(15, 'Andrew', 'Jackson', 90000),
(16, 'Madison', 'Hill', 48000),
(17, 'Joshua', 'Carter', 67000),
(18, 'Abigail', 'Perez', 58000),
(19, 'Logan', 'Hall', 85000),
(20, 'Sophie', 'Evans', 50000),
(21, 'Jackson', 'Wright', 77000),
(22, 'Lily', 'Harris', 63000),
(23, 'Aiden', 'Clark', 49000),
(24, 'Chloe', 'Lopez', 71000),
(25, 'Carter', 'Baker', 72000),
(26, 'Aubrey', 'Green', 55000),
(27, 'Ethan', 'Allen', 68000),
(28, 'Zoe', 'Lee', 59000),
(29, 'Mason', 'King', 80000),
(30, 'Emma', 'Garcia', 62000),
(31, 'Noah', 'Smith', 55000),
(32, 'Avery', 'Jones', 70000),
(33, 'Elijah', 'Wilson', 48000),
(34, 'Grace', 'Hill', 55000),
(35, 'Aria', 'Garcia', 72000),
(36, 'Liam', 'Taylor', 60000),
(37, 'Scarlett', 'Thomas', 53000),
(38, 'Lucas', 'Miller', 78000),
(39, 'Isabella', 'Brown', 52000),
(40, 'Henry', 'Moore', 67000),
(41, 'Aiden', 'Evans', 49000),
(42, 'Aria', 'Wright', 59000),
(43, 'Jackson', 'Johnson', 70000),
(44, 'Ava', 'Davis', 55000),
(45, 'Ethan', 'Allen', 68000),
(46, 'Chloe', 'Perez', 72000),
(47, 'Oliver', 'Harris', 59000),
(48, 'Sophie', 'Clark', 63000),
(49, 'Logan', 'Lopez', 55000),
(50, 'Lily', 'Baker', 71000),
(51, 'Mia', 'Green', 80000),
(52, 'Carter', 'King', 62000),
(53, 'Ella', 'Garcia', 55000),
(54, 'Matthew', 'Thomas', 90000),
(55, 'Avery', 'Hill', 48000),
(56, 'Sophia', 'Carter', 67000),
(57, 'Jackson', 'White', 58000),
(58, 'Aria', 'Hall', 85000),
(59, 'Aiden', 'Smith', 50000),
(60, 'Emma', 'Wilson', 77000);

select * from employee;
-- 4. Write a SQL query to delete employees with a last name starting with 'A'.
delete from employee
where lastname like 'A%';

-- 5. Write a SQL query to delete employees with an even EmployeeID.
delete from employee
where employeeid%2 = 0;

-- Question on UPDATE
-- 1. Update the salary of employees with 'son' in their last name to 60000.
update employee
set salary = 60000
where lastname like'%son';

-- 2. Update the salary of employees with 'Evans' in their last name to 58000.
update employee
set salary = 58000
where lastname like 'Evans%';

-- 3. Delete employees with a salary between 60000 and 70000.
delete from employee
where salary between 60000 and 70000;

-- 4. Update the last name of employees with 'Lee' in their last name to 'Lewis'.
update employee
set lastname = 'Lewis'
where lastname like '%Lee%';

-- 5. Delete employees with a last name ending with 'son'.
delete from employee
where lastname = '%son';

-- 6. Retrieve the details of employees whose first name contains 'a' and last name 
-- contains 'o'
select * from employee
where firstname like '%a%' and lastname like '%o%';

-- New Data-Base
-- Table Related Queries 
-- To Change the Schema

-- 1. Add a new column called 'Birthdate' of type DATE to the Employee table.
alter table employee
add column Birthdate DATE;

-- verify
describe employee;
show table status;

-- 2. Drop the 'Salary' column from the Employee table.
alter table employee
drop column salary;

-- 3. Rename the 'FirstName' column to 'First_Name' in the Employee table.
alter table employee
rename column FirstName to First_Name;

-- 4. Add a new column called 'Department' of type VARCHAR(50) to the Employee table.
alter table employee
add column Department Varchar(50);

-- 5. Drop the 'LastName' column from the Employee table.
alter table employee
Drop column LastName;

-- 6. Rename the 'Birthdate' column to 'DOB' in the Employee table.
alter table employee
rename column  Birthdate to DOB;

-- Q1. Change the datatype of FirstName column from VARCHAR(50) to VARCHAR(100).
alter table employee
modify First_Name varchar(100);

-- Q2. Modify the Salary column to DECIMAL(12,2) instead of INT.
-- alter table employee
-- modify salary Decimal(12,2);

-- Q3. Add a NOT NULL constraint to the LastName column.
alter table employee
add column LastName varchar(100);

-- If your table already has some NULL values in LastName, MySQL will throw an error.
-- You must first update those rows to have some default value before applying NOT NULL:
update employee
set lastname = 'Unknown'
where lastname IS NULL;

select * from employee;

-- add  not null
alter table employee
modify LastName varchar(100) not null;

-- verify
describe employee;

-- Q4. Add a UNIQUE constraint on the FirstName column.
alter table employee
add constraint Unique_FirstName unique (First_Name);

-- hence the above query show error that why 
-- Find Dublicate
select first_name , count(*) as count
from employee
group by first_name
having count(*) >1;

-- Find All Duplicate Rows with EmployeeID
-- Run this query to list all duplicates with their EmployeeID (so we know which rows to modify or delete):
select employeeid, first_name
from employee
where First_name IN ('Logan', 'Jackson', 'Aiden')
order by first_name, employeeid;

describe employee;

-- ->>Remove or Update Duplicates
-- You need to fix duplicates manually before adding a UNIQUE constraint.
-- For example, you can update one of the duplicates:
delete e1
from employee e1
join employee e2
on e1.first_name = e2.first_name
where e1.EmployeeID > e2.EmployeeID;

-- verify
show create table employee;

-- verify by adding/inserting value
INSERT INTO employee (EmployeeID, First_Name, DOB, Department, LastName)
VALUES (999, 'Logan', '1995-01-01', 'IT', 'Test');

-- it is showing error, means unique constraints is implemented correctly

-- Q5. Make Department column mandatory (NOT NULL) after adding it.
 describe employee;
 
 alter table employee
 modify column Department varchar(50) not null;
 
 -- the above query show error, it means it contains null values
 
select * from employee;

-- Step 1: update null values
update employee
set Department = 'Unknown'
where Department is null;

-- now the department column has replaced 'NULL' to 'UNKNOWN'
-- now alter the table 
alter table employee
modify column Department varchar(50) not null;

-- verify
describe employee;
 
 

