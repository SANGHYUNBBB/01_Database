select
    t.emp_no,first_name, last_name, title
from
    employees e
join titles t
on e.emp_no = t.emp_no
order by e.emp_no;

select
    distinct s.emp_no, birth_date, first_name, last_name, gender, hire_date,title, salary
from
    employees e
        JOIN titles t ON e.emp_no = t.emp_no
        JOIN salaries s ON e.emp_no = s.emp_no
where s.to_date = '9999-01-01' and t.to_date = '9999-01-01'
order by s.emp_no
;

select
    distinct s.emp_no, first_name, last_name,dept_name
from
    employees e
        JOIN titles t ON e.emp_no = t.emp_no
        JOIN salaries s ON e.emp_no = s.emp_no
        join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no
where s.to_date = '9999-01-01' and de.to_date = '9999-01-01'
order by s.emp_no;

select
    de.dept_no, dept_name, count(*)
from departments d
join dept_emp de on de.dept_no =d.dept_no
where de.to_date = '9999-01-01'
group by de.dept_no, dept_name
order by de.dept_no;

select
    e.emp_no, first_name, last_name, dept_name,from_date, to_date
from
    employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no= de.dept_no
where e.emp_no = 10209;
