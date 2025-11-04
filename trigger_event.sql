DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
values(13, "A", "z", "Alphabet", 100000, NULL);

select * from employee_salary;

DELIMITER $$
create event delete_retirees
on schedule every 30 second 
do
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >= 60;
END $$ 
DELIMITER ;

SHOW VARIABLES LIKE "event%"