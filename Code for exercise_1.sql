-- Databricks notebook source
--Questions for exercise1

--Q1. SELECT Statement. Write a SQL query to retrieve all columns from the employees table. 
SELECT * FROM   workspace.default.employees_table;

--Q2. SELECT DISTINCT Statement. Write a SQL query to find all the unique departments in the employees table. 
SELECT DISTINCT department 
FROM   workspace.default.employees_table;

--Q3. ORDER BY Statement. Write a SQL query to retrieve all employees' first and last names, ordered by salary in descending order. 
SELECT first_name,   
       last_name,   
       salary -- verify my output
FROM   workspace.default.employees_table 
ORDER BY salary DESC;

--Q4. LIMIT Statement. Write a SQL query to retrieve the top 5 highest-paid employees. 
SELECT   * 
FROM   workspace.default.employees_table
ORDER BY   salary 
DESC LIMIT 5;

--Q5. WHERE Statement. Write a SQL query to find employees who work in the IT department. 
SELECT *
FROM workspace.default.employees_table
WHERE department = 'IT';

--Q 6. AND Statement. Write a SQL query to find employees who work in the Finance department AND have a salary greater than 58,000. 
SELECT * 
FROM workspace.default.employees_table 
WHERE department = 'Finance'   
AND salary > 58000;

--Q7. OR Statement. Write a SQL query to find employees who work in the HR department OR the Marketing department. 
SELECT * 
FROM workspace.default.employees_table 
WHERE   department = 'HR' 
or department = 'Marketing';

--Q8. NOT Statement. Write a SQL query to find employees who do not work in the IT department. 
SELECT   * 
FROM   workspace.default.employees_table 
WHERE   department <> 'IT';

--Q9. IN Statement. Write a SQL query to find employees who are in the HR, IT, or Finance departments. 
SELECT *
FROM  workspace.default.employees_table 
WHERE  department IN ('HR', 'IT', 'Finance');

--Q10. Combining Conditions. Write a SQL query to find employees who are in the IT department, have a salary greater than 50,000 and are in New York. 
SELECT   * 
FROM   workspace.default.employees_table 
WHERE   department = 'Finance'   
AND salary > 50000   
AND city = 'New York';

--Q11. Combining WHERE, AND, and ORDER BY Write a SQL query to retrieve the first and last names of employees who work in the Finance or Marketing department, earn more than 52,000, and order the results by salary in descending order. 
SELECT   first_name,   last_name,   department,   salary 
FROM   workspace.default.employees_table 
WHERE   department = 'Finance'   or department = 'Marketing'   
AND salary > 52000 
ORDER BY   salary DESC;

--Q12. Combining SELECT DISTINCT, WHERE, and IN Write a SQL query to find all the unique cities where employees work, excluding those in the IT and HR departments. 
SELECT DISTINCT city,   
       department --just to verify my output FROM   workspace.default.employees_table 
FROM   workspace.default.employees_table 
WHERE  department NOT IN ('IT', 'HR');


--Q13. Combining WHERE, NOT, AND, and ORDER BY Write a SQL query to retrieve employees who are NOT in the Finance department, have a salary greater than 50,000, and order the results by hire date in ascending order. 
SELECT   *
FROM   workspace.default.employees_table 
WHERE   department <> 'Finance'   
AND salary < 50000 
ORDER BY   hire_date ASC;

--Q14. Combining WHERE, OR, IN, and LIMIT. Write a SQL query to find the first 3 employees who work in either Chicago or Los Angeles and belong to the IT or Marketing department.
SELECT   * 
FROM   workspace.default.employees_table 
WHERE   city IN ('Chicago', 'Los Angeles')   
AND department IN ('IT', 'Marketing') 
ORDER BY   hire_date 
ASC LIMIT 3;

