SELECT employee_name, salary
FROM employees
WHERE salary >= 40000 AND salary <= 60000;

SELECT * FROM employees;

USE employeemanagement;
SELECT * FROM employees;
-- Insert Sample Data

INSERT INTO employees (employee_id, employee_name, salary, department, hire_date, is_manager)  
VALUES  
    (1, 'John Doe', 60000, 'IT', '2022-01-15', 1),  
    (2, 'Jane Smith', 75000, 'HR', '2023-04-20', 0),  
    (3, 'Bob Johnson', 50000, 'Marketing', '2023-08-10', 0),  
    (4, 'Alice Williams', 90000, 'IT', '2022-11-05', 1),  
    (5, 'Charlie Brown', 65000, 'Finance', '2023-02-28', 0),  
    (6, 'Diana Miller', 80000, 'Marketing', '2023-06-15', 0),  
    (7, 'Ethan Davis', 55000, 'IT', '2023-10-01', 0),  
    (8, 'Fiona Moore', 70000, 'Finance', '2023-12-12', 0),  
    (9, 'George Wilson', 95000, 'HR', '2022-03-25', 1),  
    (10, 'Hannah Lee', 48000, 'Marketing', '2024-01-08', 0);
    

SELECT employee_name, salary
FROM employees
WHERE salary >= 40000 AND salary <= 60000;

SELECT employee_name, department
FROM employees
WHERE department = 'IT';

SELECT employee_name, department
FROM employees
WHERE department != 'HR';

SELECT employee_name, salary
FROM employees
WHERE salary = 700000;

SELECT employee_name, hire_date, department
FROM employees
WHERE hire_date > '2022-06-01' AND department != 'finance';

SELECT employee_name, employee_id
FROM employees
WHERE employee_id < 100;