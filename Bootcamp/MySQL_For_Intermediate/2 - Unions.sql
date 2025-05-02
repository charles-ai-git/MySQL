-- Unions

SELECT first_name, last_name
FROM employee_demographics
UNION ALL		# Shows all the result from the table
SELECT first_name, last_name
FROM employee_salary
;
SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT		# Shows all the result without duplicates
SELECT first_name, last_name
FROM employee_salary
 ;
 
# See who is under 40 and earnings less than 50000$ so that we can grant them a raise

SELECT first_name, last_name, 'Young' AS Label
FROM employee_demographics
WHERE age < 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Young' AS Label
FROM employee_demographics
WHERE age < 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Less paid employee' AS Label
FROM employee_salary
WHERE salary < 50000
ORDER BY first_name, last_name
;