SELECT
    first_name,
    age,
    CASE
        WHEN age <= 30 THEN 'Young'
        WHEN age BETWEEN 31
        AND 50 THEN 'Old'
        WHEN age >= 50 THEN "On death's door"
    END AS age_bracket
FROM
    employee_demographics;



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
        ELSE 0 -- Employees in other departments get 0 bonus
    END AS bonus
FROM
    employee_salary AS sal
    LEFT JOIN parks_departments AS pd ON sal.dept_id = pd.department_id;