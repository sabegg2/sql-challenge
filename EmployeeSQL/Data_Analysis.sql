--DATA ANALYSIS

-- note that the default of JOIN is INNER JOIN

--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
--WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986' -- inclusion of end points unclear 
WHERE (hire_date >= DATE '1/1/1986' AND hire_date <= DATE '12/31/1986')
ORDER BY hire_date, last_name;

--3. List the manager of each department along with their department number, department name, 
--   employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d
ON dm.dept_no = d.dept_no
INNER JOIN employees e
ON dm.emp_no = e.emp_no
ORDER BY dm.dept_no, e.emp_no;

--4. List the department number for each employee along with that employee’s employee number, 
--   last name, first name, and department name.
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
ORDER BY de.dept_no, e.emp_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules 
--   and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name;

--6. List each employee in the Sales department, including their employee number, 
--   last name, and first name.
SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY de.emp_no;

--7. List each employee in the Sales and Development departments, including their employee number, 
--   last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development'
ORDER BY de.emp_no;

--8. List the frequency counts, in descending order, of all the employee last names 
--   (that is, how many employees share each last name).
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;