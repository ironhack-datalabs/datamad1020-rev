USE employees;

SELECT  first_name, last_name, birth_date
FROM employees;

SELECT *
FROM employees
WHERE first_name = 'Hugo';

SELECT *
FROM employees
WHERE birth_date < '1960-01-01';

SELECT *
FROM employees
WHERE first_name = 'Hugo' AND gender= 'F';

SELECT *
FROM employees
WHERE first_name = 'Hugo' OR gender= 'F';

SELECT *
FROM employees
WHERE first_name = 'Hugo' AND gender= 'M' OR gender = 'F';

SELECT *
FROM employees
WHERE first_name = 'Hugo'
OR  first_name = 'Mark';

SELECT *
FROM employees
WHERE first_name NOT IN ('Hugo', 'Mark', 'Bojan');

SELECT *
FROM employees
WHERE first_name LIKE ('An%');

SELECT *
FROM employees
WHERE 
first_name LIKE 'An%';

SELECT * 
FROM employees
WHERE gender = 'F'AND hire_date > '200-01-01';

SELECT * 
FROM salaries
ORDER BY salary DESC
LIMIT 10;

