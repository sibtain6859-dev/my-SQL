use joinsdb;

-- join se pahle jo bhi likha hua h wo left table hoga....

select * from departments; -- departmentID is common
select * from employees;  -- departmentID is common

select e.employeeid, e.employeename, e.departmentid from employees as e;

select d.departmentid, d.departmentname from departments as d;

-- old syntax
select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from employees as e
join departments as d 
where e.departmentid=d.departmentid;

-- new syntax  INNER JOIN
select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from employees as e 
join departments as d 
ON d.departmentid=e.departmentid;

-- LEFT JOIN 
select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from employees as e 
left join departments as d 
ON d.departmentid=e.departmentid;

select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from departments as d
left join employees as e
ON d.departmentid=e.departmentid;

use world;

select * from city;
select * from country;

select c.id, c.name, c.countrycode, cty.code, cty.name from city as c 
join country as cty
on c.countrycode=cty.code;

-- CROSS JOIN / CARTESIAN JOIN
-- every row of 1 table is connected with every row of another table
-- it is used to identify the relationship
-- isme condition nahi lagana hota h / or isme cross likho ya na likho tab bhi output same rahe ga 

select c.id, c.name, c.countrycode, cty.code, cty.name from city as c 
cross join country as cty;

select c.id, c.name, c.countrycode, cty.code, cty.name from city as c 
join country as cty;


