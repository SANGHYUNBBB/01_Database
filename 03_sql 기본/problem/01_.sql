use employees;
select
    *
        from
            employees;
describe employees;
select
    employees.first_name
from employees;

select
    employees.first_name,employees.last_name,employees.gender
from employees;

select
    employees.first_name as '이름',gender '성별',hire_date as '회사입사일'
from employees