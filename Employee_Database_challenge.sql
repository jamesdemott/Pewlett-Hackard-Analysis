SELECT 
e.emp_no, 
e.first_name, 
e.last_name, 
t.title,
t.from_date, 
t.to_date

INTO retirement_challenge
FROM employees as e 
Join titles as t 
on e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '01-01-1952' AND '12-31-1955'
ORDER BY e.emp_no, e.emp_no;


SELECT DISTINCT ON (emp_no) emp_no, 
first_name,
last_name,
title

INTO unique_titles
FROM retirement_challenge
ORDER BY emp_no, to_date DESC;

SELECT count(title), title
into retiring_titles
from unique_titles
group by(title)
order by count(title) desc;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO challenge table
FROM _______
ORDER BY _____, _____ DESC;
