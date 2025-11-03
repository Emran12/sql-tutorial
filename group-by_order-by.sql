SELECT
    *
FROM
    parks_and_recreation.employee_demographics;



SELECT
    gender
FROM
    parks_and_recreation.employee_demographics
GROUP BY
    gender;



SELECT
    gender,
    avg(age)
FROM
    parks_and_recreation.employee_demographics
GROUP BY
    gender;



SELECT
    gender,
    avg(age),
    max(age),
    min(age),
    count(age)
FROM
    parks_and_recreation.employee_demographics
GROUP BY
    gender;



-- order by
SELECT
    *
FROM
    parks_and_recreation.employee_demographics
ORDER BY
    first_name;



SELECT
    *
FROM
    parks_and_recreation.employee_demographics
ORDER BY
    first_name DESC;



SELECT
    *
FROM
    parks_and_recreation.employee_demographics
ORDER BY
    gender,
    age DESC;