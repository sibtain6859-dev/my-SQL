use world;

-- group by 

SELECT distinct(continent) FROM country;

SELECT continent FROM country group by continent;
SELECT count(name), continent FROM country group by continent;

select * from country where continent = 'north america';
select count(name) from country where continent = 'north america';

select count(name) from country where continent = 'asia';

select count(name), count(distinct(name)) from country;

select name, count(name) from country group by name;

select  count(continent), Continent from country GROUP BY Continent;
select  count(*), Continent from country GROUP BY Continent;

select count(name) from city where district = 'zuid-holland';
select district, count(name) from city group by district;

select district, count(name), sum(population) from city group by district;

select countrycode, count(name) from city group by countrycode;

select * from country where indepyear is null;

select count(name) from country where indepyear is null;
select count(name) - count(indepyear) from country;

select continent, region, count(name) from country group by continent, region;







