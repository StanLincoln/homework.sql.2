-- Найти количество сотрудников из департамента с айди 60, которые зарабатывают больше средней зарплаты по компании
use hr;

select
count(*) as employees_count
from employees
where department_id = 60 
and salary > (select avg(salary) from employees);