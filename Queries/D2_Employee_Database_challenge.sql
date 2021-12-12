-- Deliverable 02:
SELECT DISTINCT ON (e.emp_no) e.emp_no AS "Employee Number",
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.birth_date AS "Birth Date",
	de.from_date AS "From (Hired)",
	de.to_date AS "To (Departed)",
	ttl.title AS "Job Title"
--INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ttl
	ON (e.emp_no = ttl.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY "Employee Number";

