use employees;
create view v_employees as
select
    e.emp_no,e.birth_date,e.first_name,e.last_name,e.gender,e.hire_date,title,t.from_date as t_from,t.to_date as t_to,salary,s.from_date as s_from,s.to_date as s_to
from
    employees e join titles t
                   on e.emp_no = t.emp_no
join salaries s
on s.emp_no = e.emp_no;
select * from v_employees;
select * from v_employees
where s_to = '9999-01-01' and t_to = '9999-01-01';

create view EMP_DEPT_INFO as
select
    e.emp_no,de.dept_no,d.dept_name,de.from_date, de.to_date
from
    employees e join dept_emp de
                     on e.emp_no = de.emp_no
                join departments d
                     on de.dept_no = d.dept_no;

select * from EMP_DEPT_INFO
where to_date ='9999-01-01'
order by emp_no;