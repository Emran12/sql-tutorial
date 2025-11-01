select first_name, age, 
case 
	when age <= 30 then 'Young'
	when age between 31 and 50 then 'Old'
	when age >= 50 then "On death's door" 
End as age_bracket
from employee_demographics;


SELECT
    sal.first_name,
    sal.last_name,
    sal.salary,
    -- Calculate new_salary based on original salary (same as before)
    CASE
        WHEN sal.salary < 50000 THEN sal.salary * 1.05
        WHEN sal.salary >= 50000 THEN sal.salary * 1.07
    END AS new_salary,
    -- Calculate bonus conditionally based on dept_id = 6
    CASE
        WHEN sal.dept_id = 6 THEN sal.salary * 0.1
        ELSE 0  -- Employees in other departments get 0 bonus
    END AS bonus
FROM
    employee_salary AS sal
LEFT JOIN 
    parks_departments AS pd ON sal.dept_id = pd.department_id;
