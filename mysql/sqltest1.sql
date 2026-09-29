CREATE DATABASE company_db; 

USE company_db; 

CREATE TABLE employees( 
	emp_id INT PRIMARY KEY, 
	emp_name VARCHAR(50), 
    department VARCHAR(50), 
    city VARCHAR(50), 
    salary DECIMAL(10,2), 
    age INT, 
    email VARCHAR(100), 
    bonus DECIMAL(10,2) 
); 

INSERT INTO employees 
(emp_id, emp_name, department, city, salary, age, email, bonus) 
VALUES 
(101, 'Amit Sharma', 'IT', 'Pune', 55000, 25, 'amit@gmail.com', 5000), 
(102, 'Priya Patil', 'HR', 'Mumbai', 45000, 28, 'priya@gmail.com', 3000), 
(103, 'Rahul Joshi', 'IT', 'Pune', 75000, 32, 'rahul@gmail.com', 8000), 
(104, 'Sneha Kulkarni', 'Finance', 'Kolhapur', 60000, 30, NULL, 4000), 
(105, 'Rohan Deshmukh', 'IT', 'Mumbai', 90000, 35, 'rohan@gmail.com', NULL), 
(106, 'Neha Shah', 'HR', 'Pune', 42000, 26, 'neha@gmail.com', 2500), 
(107, 'Akash Patil', 'Sales', 'Kolhapur', 38000, 24, NULL, 2000), 
(108, 'Pooja More', 'Finance', 'Pune', 68000, 29, 'pooja@gmail.com', 3500), 
(109, 'Vikas Jadhav', 'Sales', 'Mumbai', 48000, 31, 'vikas@gmail.com', NULL), 
(110, 'Kiran Pawar', 'IT', 'Kolhapur', 72000, 27, 'kiran@gmail.com', 6000); 

-- 1
SELECT *FROM employees
WHERE salary > 50000;

-- 2
SELECT *FROM employees
WHERE department = 'IT'
AND salary > 60000;

-- 3
SELECT *FROM employees
WHERE city = 'Pune'
OR city = 'Mumbai';

-- 4
SELECT *FROM employees
WHERE department != 'IT';

-- 5
SELECT *FROM employees
WHERE city = 'Pune'
AND salary > 50000
AND age < 30;

-- 6
SELECT *FROM employees
ORDER BY salary DESC;

-- 7
SELECT *FROM employees
ORDER BY department ASC;

SELECT *FROM employees
ORDER BY salary DESC;

-- 8
INSERT INTO employees
(emp_id, emp_name, department, city, salary, age, email, bonus)
VALUES
(111, 'Sagar More', 'IT', 'Pune', 58000, 26, 'sagar@gmail.com', 3000);
SELECT *FROM employees;

-- 9
UPDATE employees
SET salary = 60000
WHERE emp_id = 101;

UPDATE employees
SET salary = 80000
WHERE emp_id = 103;

UPDATE employees
SET salary = 95000
WHERE emp_id = 105;

UPDATE employees
SET salary = 77000
WHERE emp_id = 110;

UPDATE employees
SET salary = 63000
WHERE emp_id = 111;

SELECT *FROM employees;

-- 10
DELETE FROM employees
WHERE emp_id = 111;
SELECT *FROM employees;

-- 11???
SELECT *FROM employees
WHERE email = NULL;

-- 12???
SELECT *FROM employees
WHERE bonus != NULL;

-- 13
SELECT MIN(salary) AS min_salary
FROM employees;

SELECT MAX(salary) AS max_salary
FROM employees;

SELECT SUM(salary) AS total_salary
FROM employees;

-- 14
SELECT COUNT(*) AS total_employees
FROM employees;

SELECT AVG(salary) AS avg_salary
FROM employees;

-- 15
SELECT MIN(salary) AS it_min_salary
FROM employees
WHERE department = 'IT';

SELECT department, MIN(salary) AS it_min_salary
FROM employees
WHERE department = 'IT'
GROUP BY department;

SELECT MAX(salary) AS it_max_salary
FROM employees
WHERE department = 'IT';

SELECT department, MAX(salary) AS it_max_salary
FROM employees
WHERE department = 'IT'
GROUP BY department;

SELECT AVG(salary) AS it_avg_salary
FROM employees
WHERE department = 'IT';

SELECT department, AVG(salary) AS it_avg_salary
FROM employees
WHERE department = 'IT'
GROUP BY department;

-- 16
SELECT *FROM employees
WHERE emp_name LIKE 'A%';

-- 17
SELECT *FROM employees
WHERE emp_name LIKE '%a';

-- 18
SELECT *FROM employees
WHERE email LIKE '%@gmail.com%';

-- 19???
SELECT *FROM employees
WHERE emp_name LIKE '______';

-- 20
SELECT *FROM employees
WHERE city LIKE 'P%'
AND emp_name LIKE '%a%';

-- 21
SELECT emp_id, emp_name, department, salary
FROM employees
WHERE department = 'IT'
AND salary > 70000;

SELECT emp_id, emp_name, department, salary
FROM employees
WHERE department = 'HR'
AND salary > 40000;

-- 22
SELECT *FROM employees
WHERE emp_name LIKE 'P%'
OR emp_name LIKE 'A%'
AND salary > 40000
AND email != NULL; -- ??








