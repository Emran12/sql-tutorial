SELECT
    *
FROM
    parks_and_recreation.employee_demographics;



SELECT
    *
FROM
    parks_and_recreation.employee_demographics
WHERE
    first_name = 'Tom';



SELECT
    *
FROM
    parks_and_recreation.employee_demographics
WHERE
    gender = 'Female';



SELECT
    *
FROM
    parks_and_recreation.employee_demographics
WHERE
    age > 40;



SELECT
    *
FROM
    parks_and_recreation.employee_salary
WHERE
    salary > 50000
    AND occupation = 'Office Manager';



SELECT
    *
FROM
    parks_and_recreation.employee_salary
WHERE
    first_name LIKE 'a%';



SELECT
    *
FROM
    parks_and_recreation.employee_salary
WHERE
    first_name LIKE '%a';



SELECT
    *
FROM
    parks_and_recreation.employee_salary
WHERE
    first_name LIKE '%a%';



SELECT
    *
FROM
    parks_and_recreation.employee_salary
WHERE
    first_name LIKE '%er%';



SELECT
    *
FROM
    parks_and_recreation.employee_salary
WHERE
    first_name LIKE '____';



SELECT
    *
FROM
    parks_and_recreation.employee_salary
WHERE
    first_name LIKE '__n%';