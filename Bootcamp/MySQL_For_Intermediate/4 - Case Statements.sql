-- Case Statements

SELECT first_name,
last_name,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Average'
    WHEN age >= 60 THEN "Senior"
END AS Age_Bracket
FROM employee_demographics
;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

Select first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (0.05 * salary)
    WHEN salary > 50000 THEN salary + (0.07 * salary)
    
END AS NEW_Salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10
END AS Bonus
FROM employee_salary;

SELECT *
FROM employee_demographics;
SELECT *
FROM parks_departments;

