select * from parks_and_recreation.employee_demographics;

select * from parks_and_recreation.employee_demographics where first_name = 'Tom';

select * from parks_and_recreation.employee_demographics where gender = 'Female';

select * from parks_and_recreation.employee_demographics where age > 40;

select * from parks_and_recreation.employee_salary where salary > 50000 and occupation = 'Office Manager';

select * from parks_and_recreation.employee_salary where first_name like 'a%';

select * from parks_and_recreation.employee_salary where first_name like '%a';

select * from parks_and_recreation.employee_salary where first_name like '%a%';

select * from parks_and_recreation.employee_salary where first_name like '%er%';

select * from parks_and_recreation.employee_salary where first_name like '____'; 

select * from parks_and_recreation.employee_salary where first_name like '__n%';

