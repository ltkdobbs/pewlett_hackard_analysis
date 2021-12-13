-- Two Additional Queries / Tables for more insight

--Expand the retirement age to encompass 1946-1964 to cover all boomers
SELECT DISTINCT ON (e.emp_no) e.emp_no AS "Employee Number",
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.birth_date AS "Birth Date",
	d.dept_name AS "Current Department",
	de.from_date AS "Hiring Date"
--INTO expanded_retirement
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
WHERE (birth_date BETWEEN '1946-01-01' AND '1964-12-31')
	AND (to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Create a file which includes titles
SELECT DISTINCT ON (e.emp_no) e.emp_no AS "Employee Number",
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.birth_date AS "Birth Date",
	ttl.title AS "Job Title"
--INTO expanded_retirement_titles
FROM employees AS e
	INNER JOIN titles AS ttl
		ON (e.emp_no = ttl.emp_no)
WHERE (birth_date BETWEEN '1946-01-01' AND '1964-12-31')
	AND (to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Get a count of those reaching retirement age in each department
SELECT COUNT(er."Employee Number"),
	de.dept_no,
	d.dept_name
--INTO retirement_by_dept
FROM expanded_retirement AS er
	LEFT JOIN dept_emp AS de
		ON (er."Employee Number" = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
GROUP BY de.dept_no, d.dept_name
ORDER BY de.dept_no;

--Change the header names
SELECT count AS "Employee Count",
	dept_no AS "Department Number",
	dept_name AS "Department Name"
--INTO retirement_num_by_dept
FROM retirement_by_dept
GROUP BY dept_no, dept_name, count
ORDER BY dept_no;

--Get a count of the titles in the expanded retirement csv
SELECT COUNT("Job Title") AS "Staff Count", "Job Title"
--INTO titles_retiring_expanded
FROM expanded_retirement_titles
GROUP BY "Job Title"
ORDER BY "Staff Count" DESC;