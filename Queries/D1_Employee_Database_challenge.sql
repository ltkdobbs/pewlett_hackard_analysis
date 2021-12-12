-- Deliverable 01:
-- Step 1.
SELECT emp_no AS "Employee Number",
	first_name AS "First Name",
	last_name AS "Last Name"
FROM employees;

-- Step 2.
SELECT title AS "Job Title",
	from_date AS "From (Appointed)",
	to_date AS "To (Ceded)"
FROM titles;

-- Step 3. - 7.
SELECT e.emp_no AS "Employee Number",
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	ttl.title AS "Job Title",
	ttl.from_date AS "From (Appointed)",
	ttl.to_date AS "To (Ceded)"
--INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ttl
		ON (e.emp_no = ttl.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;	

-- Step 8. - 14.
SELECT DISTINCT ON ("Employee Number") "Employee Number",
"First Name",
"Last Name",
"Job Title"
--INTO unique_titles
FROM retirement_titles
ORDER BY "Employee Number" ASC,
	"To (Ceded)" DESC;

-- Step 15. - 21.
SELECT COUNT("Job Title") AS "Staff Count", "Job Title"
--INTO retiring_titles
FROM unique_titles
GROUP BY "Job Title"
ORDER BY "Staff Count" DESC;
