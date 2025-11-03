CREATE TEMPORARY TABLE temp_table (
    first_name varchar(50),
    last_name varchar(50),
    mobile_number numeric
);



INSERT INTO
    temp_table
VALUES
('Emran', 'Hossain', 01687929238);



SELECT
    *
FROM
    temp_table;



CREATE TEMPORARY TABLE salary_over_50k
SELECT
    *
FROM
    employee_salary
WHERE
    salary > 50000;



SELECT
    *
FROM
    salary_over_50k