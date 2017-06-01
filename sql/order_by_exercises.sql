USE employees;

# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY last_name, first_name;

# Employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no;

# All employees whose last name starts and ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Employees hired in the 90s — 135,214 rows.
SELECT *
FROM employees
WHERE hire_date BETWEEN date_format('1990-01-01', '%Y-%m-01') AND LAST_DAY('1999-12-01');

# Employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

# Employees born on Christmas and hired in the 90s - 362 rows
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date BETWEEN date_format('1990-01-01', '%Y-%m-01') AND LAST_DAY('1999-12-01');

# Employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# All employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';