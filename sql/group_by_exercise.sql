USE employees;

SELECT DISTINCT titles.title
FROM titles ORDER BY title;

# All employees whose last name starts and ends with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

# All employees with a 'q' in their last name but not 'qu' distinct — 547 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';
# GROUP BY last_name; -- Alternative method