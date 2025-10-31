select * 
from employee_demographics;

select first_name, length(first_name) as total_letter, upper(first_name) 
from employee_demographics 
order by 2 desc;

select first_name, left(first_name, 3)
from employee_demographics;

select first_name, left(first_name, 3), right(first_name, 3), substring(first_name, 3, 2), birth_date, substring(birth_date, 6, 2)
from employee_demographics;

select locate('A', 'Alhamdulillah');

select first_name, replace(first_name, 'n', 'a') from employee_demographics;

select first_name, last_name, concat(first_name, ' ', last_name) as full_name 
from employee_demographics;   

