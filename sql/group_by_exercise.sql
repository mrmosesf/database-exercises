USE employees;

SELECT DISTINCT titles.title
FROM titles ORDER BY title;

# All employees whose last name starts and ends with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;