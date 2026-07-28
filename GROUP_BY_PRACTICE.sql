use world;

select * from country;

select continent, count(*) from country group by continent 
having count(*) > 30;

use sakila;
select * from employees;

-- Q1. Find the total number of employees in each department.
select department, count(*) from employees group by department;

-- Q2. Find the total salary paid per department.
select department, sum(salary) from employees group by department;

--  Q3. Find the average salary in each city.
select city, avg(salary) from employees group by city;

-- Q4. Find the maximum salary in each department. 
select department, max(salary) from employees group by department;

-- Q5. Find the minimum salary in each department. 
select department, min(salary) from employees group by department;

--  Q6. List departments with their employee count, sorted by count descending.
select department, count(*) as empcount from employees group by department order by empcount desc;

--  Q7. List cities with total salary, sorted by TotalSalary ascending.
select city, sum(salary) as Totalsalary from employees
group by city 
order by Totalsalary;

-- Q8. List all employees ordered by department (A–Z) then by salary (highest first).
select first_name, department, salary from employees order by department, salary desc;
select first_name as name, department as dept, salary from employees order by department, salary desc;

-- Q9. List all employees ordered by city (A–Z) then by join date (oldest first). 
select first_name as name, city, hire_date as joinDate from employees 
order by city, joinDate;

-- Q10. List all employees ordered by role (A–Z) then by salary (lowest first).
select first_name as name, job_title as role, salary from employees
order by role, salary;

-- Q11. Show only departments that have more than 7 employees.
select department as dept, count(*) as empcount from employees
group by dept having empcount > 7;

-- Q12. Show departments where the average salary exceeds 65000.
select department as dept, avg(salary) from employees 
group by dept having avg(salary) > 65000;

--  Q13. Show cities where the total salary bill is greater than 650000. 
select city, sum(salary) as Totalsalary from employees 
group by city having Totalsalary > 650000;

-- Q14. Show departments where the maximum salary is at least 80000. 
select department as dept, max(salary) as Maxsalary from employees 
group by department 
having Maxsalary >= 80000;

-- Q15. Show roles that appear more than 5 times in the table.
select job_title as role, count(*) as rolecount from employees
group by role 
having rolecount > 5;

-- Q16. Find the overall average salary of all employees. 
select avg(salary) as CompanyAvgSalary from employees;

-- Q17. Count how many female employees exist in each department.
select department as dept, count(*) as Femalecount from employees
where gender = 'Female'
group  by dept;

-- Q18. Find the highest and lowest salary across the entire company. 
select max(salary) as highest, min(salary) as lowest from employees;

--  Q19. Find the total salary paid to employees who joined after 2019-01-01. 
select sum(salary) as Totalsalary from employees 
where hire_date > 2019-01-01;

--  Q20. Find the average salary grouped by gender. 
select gender, avg(salary) as AvgSalary from employees 
group by gender;

-- Q21. Find total employees grouped by department AND city.
select department as dept, city, count(*) as empcount from employees 
group by dept, city order by dept;

-- Q22. Find average salary grouped by department AND gender.
select department as dept, gender, avg(salary) as AvgSalary from employees
group by dept, gender 
order by dept, gender;

-- Q23. Find total salary grouped by city AND role, ordered by city and total salary descending. 
select city, job_title as role, sum(salary) as TotalSalary from employees
group by city, role
order by city, TotalSalary desc;

-- Q24. Count employees grouped by department AND role, show only groups with more than 1 employee.
select department as dept, job_title as role, count(*) as empcount from employees
group by dept, role
having empcount > 1
order by dept, role;

-- Q25. Find max salary grouped by city AND gender. 
select city, gender, max(salary) as MaxSalary from employees
group by city, gender;

--  Q26. Show departments with avg salary > 60000, ordered by avg salary descending.
select department as dept, avg(salary) as AvgSalary from employees
group by dept
having AvgSalary > 60000
order by AvgSalary desc;

-- Q27. Show city+dept combos with more than 1 employee, ordered by count descending then city.
select city, department as dept, count(*) as empcount from employees
group by city, dept
having empcount > 1
order by empcount desc, city;

-- Q28. Show roles where total salary exceeds 300000, ordered by total salary ascending. 
select job_title as role, sum(salary) as TotalSalary from employees 
group by role 
having TotalSalary > 300000
order by TotalSalary;

-- Q29. List each employee's name in UPPER CASE along with the year they joined, ordered by join year. 
 select first_name as empname, upper(first_name), EXTRACT(YEAR FROM hire_date) AS join_year from employees
 order by join_year;
 
 -- Q30. Find the number of employees who joined each year, sorted by year.
 select EXTRACT(YEAR FROM hire_date) AS join_year, count(*) as joiners from employees 
 group by join_year
 order by join_year;
 
 
