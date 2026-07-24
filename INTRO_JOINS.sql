use world;

-- joins = it is used to combine 2 or more tables based on similar column..
select * from city;
select * from country;

select city.name, city.countrycode from city;
select country.name, country.code from country;

select city.name, city.countrycode, country.name, country.code from city
join country
where city.countrycode=country.code;

select city.name, city.countrycode, country.name, country.code from city
join country
where city.countrycode=country.code and city.name='Amsterdam';

select city.name, city.population, country.name, country.population from city 
join country
where city.countrycode=country.code;

select c.name, c.population, cn.name, cn.population from city as c
join country as cn
where c.countrycode=cn.code;

