use joinsdb;

-- Natural join 
-- it is a type in which we don't provide the condition
-- it performs automatically join based on the same column name.. agar same column nahi h tab koi output nahi dega
-- isme condition lagana nahi hota h 

select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from employees as e 
natural join departments as d;

use world;
select c.id, c.name, c.countrycode, cty.code, cty.name from city as c 
natural join country as cty;

-- SELF JOIN  (most imp)
-- when a table is join with itself
-- employee ka manager = manager ka khud ka id

create database selfjoindb;
use selfjoindb;

create table employees(eid int, name varchar(20), manager_id int);

insert into employees values(1, 'tushar', null), (2, 'abhinav', 1), (3, 'saksham', 1), (4, 'akshay', 2);

select * from employees;

select emp.eid, emp.name, emp.manager_id from employees as emp;

select mngr.eid, mngr.name from employees as mngr;

select emp.eid, emp.name, emp.manager_id, mngr.eid, mngr.name from employees as emp
join employees as mngr
ON emp.manager_id=mngr.eid;                                                                        