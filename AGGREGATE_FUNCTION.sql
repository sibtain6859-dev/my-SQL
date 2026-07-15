USE world;

-- multi row function
-- distinct = to find unique value 
-- aggregate function = are the function which r used to apply the calculation  on the set of rules... 
-- example of aggregate function - count(), max(), min(), avg(), sum() 
-- order by = it is used for sorting data 

select continent from country;
SELECT distinct(continent) from country;

select name from country;
select distinct(name) from country;


select count(continent), count(distinct(continent)) from country;

select count(name), count(distinct(name)) from country;

select count(population), sum(population), avg(population) from country;

select count(surfacearea), sum(surfacearea), max(surfacearea) from country;

select count(continent), max(continent), min(continent) from country;

select population, replace(population, 1,4) from country;
select avg(population), avg(replace(population, 1,4)) from country;

-- order by clause = data sort karna
SELECT name, continent, region , population FROM country;

SELECT name, continent, region , population FROM country order by name;
SELECT name, continent, region , population FROM country order by name desc;

SELECT name, continent, region , population FROM country order by population;
select population from country order by population;

SELECT name, continent, region , population FROM country order by population, name;

SELECT name, continent, region , population FROM country order by continent;
SELECT name, continent, region , population FROM country order by continent, name;