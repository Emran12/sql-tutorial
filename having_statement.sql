SELECT
    *
FROM
    parks_and_recreation.employee_demographics;



SELECT
    gender,
    avg(age)
FROM
    parks_and_recreation.employee_demographics
GROUP BY
    gender
HAVING
    avg(age) > 40;



SELECT
    occupation,
    avg(salary)
FROM
    parks_and_recreation.employee_salary
WHERE
    occupation LIKE '%manager%'
GROUP BY
    occupation
HAVING
    avg(salary) > 75000;