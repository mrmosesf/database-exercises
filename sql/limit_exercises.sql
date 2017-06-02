use employees;

SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

# Employees born on Christmas and hired in the 90s limited to 5 offset to the 10th batch
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date BETWEEN '1990-01-01' AND LAST_DAY('1999-12-01')
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;