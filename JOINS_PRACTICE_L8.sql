-- Question practice 

-- Q12. How many total row combinations result from CROSS JOIN of employees and departments? Show the count.
select count(*) from employees as e 
cross join departments as d;

-- Q13. Show employees whose salary is greater than 60000.
select * from employees where salary > 60000;

-- Q14. Show all employees based in Delhi or Mumbai. 
select * from employees where city in('delhi', 'mumbai');

-- Q15. Show employees whose dept_id is NULL (unassigned employees). 
select * from employees where dept_id is null;

-- Q16. Show departments located in Bangalore or Delhi.
select dept_id, dept_name, location from departments where location = 'bangalore' or location = 'delhi';
select dept_id, dept_name, location from departments where location in('bangalore', 'delhi');

-- Q17. Show departments whose dept_id is 30 or higher. 
select * from departments where dept_id >= 30;

-- Q18. Show departments whose name starts with the letter "F" or "L". 
select * from departments where dept_name like 'F%' or dept_name like 'L%';

-- Q19. Show projects with a budget between 200000 and 400000 (inclusive).
select * from projects where budget between 200000 and 400000;

-- Q20. Show all projects that belong to dept_id 20.
select * from projects where dept_id = 20;

-- Q21. Show projects whose name contains the word "a" and budget is under 300000. 
select * from projects where proj_name like '%a%' and budget < 300000;

--  Multiple-Table Joins

-- Q22. Show employee name, department name, location and project name for all matching rows across all three tables.
select e.emp_name, d.dept_name, d.location, p.proj_name, p.budget from employees as e
join departments as d 
join projects as p 
on e.dept_id=d.dept_id and d.dept_id=p.dept_id;

-- this is the correct way to write sql syntax
select e.emp_name, d.dept_name, d.location, p.proj_name, p.budget from employees as e
join departments as d 
on e.dept_id=d.dept_id
join projects as p 
on d.dept_id=p.dept_id;

-- Q23. Show ALL employees, plus department and project details where available (keep employees even with no 
-- dept/project).
select e.emp_id, e.emp_name, d.dept_name, p.proj_name from employees as e
left join departments as d
on e.dept_id=d.dept_id
left join projects as p
on p.dept_id=d.dept_id;

-- Q24. Show employees earning more than 60000 along with department and any project over 250000 budget.
select e.emp_name, e.salary, d.dept_name, p.proj_name, p.budget from employees as e 
join departments as d 
on d.dept_id=e.dept_id 
join projects as p 
on p.dept_id=d.dept_id where salary > 60000 and budget > 250000;

-- Q25. List ALL departments with their employees and projects, including departments having neither. 
select e.dept_id, d.dept_name, e.emp_name, p.proj_name from employees as e
join departments as d
on e.dept_id=d.dept_id
join projects as p
on p.dept_id=d.dept_id;

-- Q26. Show employees who work in a department located in Bangalore or Mumbai, along with the projects of that 
-- department. 
select e.emp_name, p.proj_name, d.location from employees as e 
join departments as d 
on e.dept_id=d.dept_id
join projects as p
on p.dept_id=d.dept_id where location in('Bangalore', 'Mumbai');

-- SELF JOIN QUESTION 
-- Q27. Pair employees who work in the same city (avoid duplicate pairs and self-pairing). 
select e1.emp_id, e1.emp_name, e2.emp_id, e2.emp_name, e1.city, e2.city from employees as e1
join employees as e2
on e1.city=e2.city and e1.emp_id!=e2.emp_id and e1.emp_id < e2.emp_id;

select  e1.emp_name,  e2.emp_name, e1.city, e2.city from employees as e1
join employees as e2
on e1.city=e2.city and e1.emp_id < e2.emp_id;


-- Q28. Show every project along with employees of that department; keep projects with no employees. 
select p.proj_name, e.dept_id, e.emp_name from employees as e
join departments as d 
on d.dept_id=e.dept_id
right join projects as p
on d.dept_id=p.dept_id;