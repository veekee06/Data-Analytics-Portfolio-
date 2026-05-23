WEEK 6 ASSIGNMENT

QUESTION 1
SELECT 
s. first_name, 
s. last_name, 
s. occupation, 
p. department_name
FROM employee_salary s 
JOIN parks_departments p 
ON s.dept_id = p.department_id;


QUESTION 2
SELECT occupation, 
AVG(salary) AS average_salary, 
MIN(salary) AS minimum_salary, 
MAX(salary) AS maximum_salary
FROM employee_salary 
GROUP BY occupation;


QUESTION 3
SELECT first_name, last_name, salary
FROM employee_salary
WHERE salary > 50000;


QUESTION 4
SELECT 
	ed.first_name, 
    ed.last_name, 
	COALESCE(es.occupation, 'Not Assigned') AS occupation
FROM employee_demographics ed 
LEFT JOIN employee_salary es 
	ON ed.employee_id = es.employee_id;


QUESTION 5
SELECT
	ed.first_name, 
    ed.last_name,
    pd.department_name,
	CASE
		WHEN pd.department_name = 'Parks and Recreation' THEN 'Eligible for 10% Bonus'
        WHEN pd.department_name = 'Finance' THEN 'Eligible for 15% Bonus' 
        ELSE 'No Bonus'
	END AS bonus_category
FROM employee_demographics ed
LEFT JOIN employee_salary es
	ON ed.employee_id = es.employee_id 
LEFT JOIN parks_departments pd
	ON es.dept_id = pd.department_id;



