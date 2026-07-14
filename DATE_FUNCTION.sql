USE world;

-- some imp terms to remember 
-- current_date() = it shows current date 
-- current_time() = it shows current time 
-- current_timestamp() = it shows both date and time together 
-- now() = it shows both date and time together 
-- YYYY-MM-DD follow this pattern
-- adddate = it is used to add the date
-- via adddate we can also substract,(add month, year, hour we use INTERVAL in the parenthesis..
-- date_format = it is use to display date in custom format
-- extract = it is used to extract a specific part of a date or time
-- concat = it is used to join two or more strings into single string

SELECT current_time(), current_date(), current_timestamp(), now();

SELECT now(), adddate(now(), 2);

USE sakila;
SELECT * FROM payment;

SELECT payment_id, payment_date, adddate(payment_date, 2) from payment;
SELECT payment_id, payment_date, adddate(payment_date, -2) from payment;

SELECT payment_id, payment_date, adddate(payment_date, interval 2 month) FROM payment;
SELECT payment_id, payment_date, adddate(payment_date, interval 2 year) FROM payment;
SELECT payment_id, payment_date, adddate(payment_date, interval 3 hour) FROM payment;

SELECT payment_id, payment_date, month(payment_date) FROM payment; -- to extract month
SELECT payment_id, payment_date, year(payment_date) FROM payment; -- to extract year
SELECT payment_id, payment_date, hour(payment_date) FROM payment;
SELECT payment_id, payment_date, second(payment_date) FROM payment;

SELECT payment_id, payment_date, year(payment_date) FROM payment WHERE year(payment_date) = 2006;

SELECT payment_id, payment_date, extract( month from payment_date) FROM payment;
SELECT payment_id, payment_date, extract( hour from payment_date) FROM payment;
SELECT payment_id, payment_date, extract( minute from payment_date) FROM payment;
SELECT payment_id, payment_date, extract( second from payment_date) FROM payment;
SELECT payment_id, payment_date, extract( quarter from payment_date) FROM payment;

SELECT payment_id, payment_date, concat('current month is : ', month(payment_date)) FROM payment;
SELECT payment_id, payment_date, concat('current hour is : ', hour(payment_date)) FROM payment;

SELECT payment_id, payment_date, date_format(payment_date, 'current year is %Y') FROM payment;
SELECT payment_id, payment_date, date_format(payment_date, 'current year is %y') FROM payment;
SELECT payment_id, payment_date, date_format(payment_date, 'current year is %M') FROM payment;
SELECT payment_id, payment_date, date_format(payment_date, 'current year is %m') FROM payment;
SELECT payment_id, payment_date, date_format(payment_date, 'current year is %i') FROM payment; -- it extract minutes
SELECT payment_id, payment_date, date_format(payment_date, 'current year is %W') FROM payment; -- it extract weekday name
SELECT payment_id, payment_date, date_format(payment_date, 'current year is %d') FROM payment;








