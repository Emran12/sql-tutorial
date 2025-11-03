SELECT
    *
FROM
    employee_demographics;



SELECT
    first_name,
    length(first_name) AS total_letter,
    upper(first_name)
FROM
    employee_demographics
ORDER BY
    2 DESC;



SELECT
    first_name,
    left(first_name, 3)
FROM
    employee_demographics;



SELECT
    first_name,
    left(first_name, 3),
    right(first_name, 3),
    substring(first_name, 3, 2),
    birth_date,
    substring(birth_date, 6, 2)
FROM
    employee_demographics;



SELECT
    locate('A', 'Alhamdulillah');



SELECT
    first_name,
    REPLACE(first_name, 'n', 'a')
FROM
    employee_demographics;



SELECT
    first_name,
    last_name,
    concat(first_name, ' ', last_name) AS full_name
FROM
    employee_demographics;