-- Limit & Aliasing 

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1		# How many rows to skip, How many rows to return after skipping
;

-- Aliasing

SELECT gender, AVG(age) AS avg_age      # AS permit to AVG(age) = avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40    # AVG(age) = avg_age
;
