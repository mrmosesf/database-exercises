-- Joins exercise

USE employees;

SELECT
  d.dept_name                            AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE de.to_date > now()
ORDER BY d.dept_name;

SELECT
  d.dept_name                            AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE de.to_date > now() AND e.gender = 'f'
ORDER BY d.dept_name;

SELECT
  t.title  AS 'Title',
  count(*) AS 'Count'
FROM employees AS e
  JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
  JOIN titles AS t
    ON t.emp_no = e.emp_no
WHERE d.dept_no = 'd009' && t.to_date > now() &&
      de.to_date > now() -- Make sure to add declarations to remove historical data
GROUP BY t.title;

SELECT
  d.dept_name                            AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
  s.salary                               AS 'Salary'
FROM employees AS e
  JOIN dept_manager AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
  JOIN salaries AS s
    ON s.emp_no = e.emp_no
WHERE de.to_date > now() && s.to_date > now()
ORDER BY d.dept_name;

# TODO: Joins bonus exercise