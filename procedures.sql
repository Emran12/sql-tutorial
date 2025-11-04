CREATE PROCEDURE large_salaries()
SELECT
	*
FROM
	employee_salary
WHERE
	salary >= 50000;



CALL large_salaries();



DELIMITER $ $ CREATE PROCEDURE large_salaries2() BEGIN
SELECT
	*
FROM
	employee_salary
WHERE
	salary >= 50000;



SELECT
	*
FROM
	employee_salary
WHERE
	salary >= 10000;



END $ $ DELIMITER;



CALL large_salaries2();



DELIMITER $ $ CREATE PROCEDURE large_salaries3(p_empl_id int) BEGIN
SELECT
	salary
FROM
	employee_salary
WHERE
	employee_id = p_empl_id;



END $ $ DELIMITER;



CALL large_salaries3(1);