--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries 
ON salaries.emp_no=employees.emp_no

--List employees who were hired in 1986.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary, employees.hire_date
FROM employees
JOIN salaries 
ON salaries.emp_no=employees.emp_no
WHERE employees.hire_date LIKE '%1986'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, employees.hire_date  from dept_manager
join departments on 
departments.dept_no=dept_manager.dept_no
join employees on
employees.emp_no=dept_manager.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
--List all employees whose first name is "Hercules" and last names begin with "B."
Select * from employees
where employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select employees.last_name, COUNT(employees.last_name) FROM employees
GROUP BY employees.last_name
ORDER BY employees.last_name ASC
