show databases;
use world;
show tables;
select district, population, countrycode from city WHERE countrycode = 'NLD';

select name, district, population, countrycode from city WHERE countrycode = 'IND' AND population>2000000;

select name, district, population, countrycode from city WHERE countrycode = 'IND' OR population>2000000;

SELECT * FROM city WHERE countrycode ='AFG' AND countrycode = 'IND'; 
-- this will give empty result

SELECT * FROM city WHERE countrycode ='AFG' AND district = 'kabol'; 

SELECT * FROM city WHERE population BETWEEN 100000 and 150000;

SELECT * FROM city WHERE population = 129170 or population = 117196;

SELECT * FROM city WHERE population IN(129170, 117196);

