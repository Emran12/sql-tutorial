select * from parks_and_recreation.employee_demographics;

select gender from parks_and_recreation.employee_demographics group by gender; 

select gender, avg(age) 
from parks_and_recreation.employee_demographics 
group by gender; 

select gender, avg(age), max(age), min(age), count(age) 
from parks_and_recreation.employee_demographics 
group by gender; 

-- order by

select * from parks_and_recreation.employee_demographics order by first_name; 

select * from parks_and_recreation.employee_demographics order by first_name desc; 

select * from parks_and_recreation.employee_demographics order by gender, age desc; 