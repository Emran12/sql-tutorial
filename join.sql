--- Inner Join

select * from employee_demographics
inner join employee_salary 
on employee_demographics.employee_id = employee_salary.employee_id;

select dem.employee_id, age, occupation from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

