create database subsets;
use subsets;
-- DDL Commands: CREATE, ALTER, DROP, TRUNCATE

-- 1. Create employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    salary INT
);

-- 2. Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50),
    marks INT
);

-- 3. Add email column to employees
ALTER TABLE employees ADD COLUMN email VARCHAR(100);

-- 4. Modify salary datatype
ALTER TABLE employees MODIFY COLUMN salary DECIMAL(10,2);

-- 5. Rename name to employee_name
ALTER TABLE employees RENAME COLUMN name TO employee_name;

-- 6. Remove age column
ALTER TABLE employees DROP COLUMN age;

-- 7. Rename students table
ALTER TABLE students RENAME TO college_students;

-- 8. Truncate employees table
TRUNCATE TABLE employees;

-- 9. Drop college_students table
DROP TABLE college_students;

-- DML Commands: INSERT, UPDATE, DELETE

-- 1. Insert 5 records into employees
INSERT INTO employees (id, employee_name, age, department, salary, email) VALUES
(1, 'Sabarish', 28, 'IT', 45000, 'sabarish@gmail.com'),
(2, 'Lingesh', 32, 'HR', 55000, 'lingesh@gmail.com'),
(3, 'Muthuvel', 25, 'IT', 40000, 'muthuvel@gmail.com'),
(4, 'Pradeep', 35, 'Finance', 60000, 'pradeep@gmail.com'),
(5, 'Siva', 29, 'HR', 38000, 'c.com');

-- 2. Insert Arun
INSERT INTO employees (id, employee_name, age, department, salary, email) VALUES
(6, 'Arun', 27, 'IT', 45000, 'arun@company.com');

-- 3. Update salary for id=3
UPDATE employees SET salary = 50000 WHERE id = 3;

-- 4. Increase salary 10% for HR
UPDATE employees SET salary = salary * 1.10 WHERE department = 'HR';

-- 5. Change Ajay's department
UPDATE employees SET department = 'Finance' WHERE employee_name = 'Ajay Singh';

-- 6. Delete salary < 25000
DELETE FROM employees WHERE salary < 25000;

-- 7. Delete id=5
DELETE FROM employees WHERE id = 5;

-- DQL Commands: SELECT

-- 1. All records
SELECT * FROM employees;

-- 2. Name and salary
SELECT employee_name, salary FROM employees;

-- 3. IT department
SELECT * FROM employees WHERE department = 'IT';

-- 4. Salary > 40000
SELECT * FROM employees WHERE salary > 40000;

-- 5. Age > 25
SELECT * FROM employees WHERE age > 25;

-- 6. Names starting with A
SELECT * FROM employees WHERE employee_name LIKE 'A%';

-- 7. Salary between 30000 and 50000
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 50000;

-- 8. Sort by salary ascending
SELECT * FROM employees ORDER BY salary ASC;

-- 9. Sort by salary descending
SELECT * FROM employees ORDER BY salary DESC;