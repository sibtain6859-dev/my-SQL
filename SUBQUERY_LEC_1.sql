-- 28/07/26
-- topic name = single row subquery
drop database corr_db;
create database corr_db;
use corr_db;

create table employee_c ( id int, name varchar(20), salary int);

insert into employee_c values(1, 'a', 100), (2, 'b', 250), (3, 'c', 400), (4, 'd', 100), (5,'a', 300);

-- highest salary kya h
select max(salary) from employee_c;
select * from employee_c where salary = 400;

-- subquery with maximum salary
select * from employee_c where salary = (select max(salary) from employee_c);


select min(salary) from employee_c;
select * from employee_c where salary = 100;

-- subquery with the minimum salary
select * from employee_c where salary = (select min(salary) from employee_c);

insert into employee_c value(5, 'aman', 250);

select * from employee_c;

select salary from employee_c where name = 'b';

select * from employee_c where salary =(select salary from employee_c where name = 'b');

select avg(salary) from employee_c;

select * from employee_c where salary > 260;
select * from employee_c where salary > (select avg(salary) from employee_c);

use world;

select * from city;
select * from country;

-- Q.1 get the name of the city where district of the city is  same for the city abu dhabi
-- Q.2 get all the columns from the city table where the population is the maximum 
-- Q.3 get the district and the name of the city where the country_code is same for the city herat
-- Q.4 get the district city and the population for all the countries where amsterdam and sort the data by the population

select name from city where district= (select district from city where name ='Abu Dhabi'); -- 1
select name, district from city where name = 'abu dhabi';  --

select max(population) from city;
select * from city where population = (select max(population) from city);  -- 2

select countrycode from city where name ='herat';
select district, name from city where countrycode =(select countrycode from city where name ='herat');  -- 3

select countrycode from city where name ='Amsterdam';

select district, name, population from city
where countrycode=(select countrycode from city where name = 'Amsterdam') 
order by population;  -- 4





