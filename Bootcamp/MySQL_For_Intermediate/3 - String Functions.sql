-- String Functions

SELECT LENGTH('skyfall')
;
SELECT first_name , LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;
SELECT first_name , UPPER(first_name)
FROM employee_demographics
;
SELECT UPPER('sky')
;
SELECT LOWER('sky')
;
SELECT TRIM('		sky		')
;
SELECT RTRIM('		sky			')
;
SELECT LTRIM('		sky			')
;
SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics
;
SELECT first_name, REPLACE(first_name, 'A','Z')
FROM employee_demographics
;
SELECT LOCATE('x','Alexander')
;
SELECT first_name, LOCATE('dy', first_name)
FROM employee_demographics
;
SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM employee_demographics
;