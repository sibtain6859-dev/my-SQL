USE world;

-- numeric function
-- round = value ko round off kar deta h.. 
-- truncate = to extract the decimmal value
-- mod = to give reminder 
-- floor = to give the lowest round off value 
-- ceil = it's like opposite of floor
-- abs = absolute value means it will always give positive value 
 
SELECT * FROM country;
SELECT lifeexpectancy, round(lifeexpectancy) FROM country;

SELECT 34.58, round(34.58); -- it will be 35 after round off

select 76.469, round(76.469, 1);  -- point k baad 2nd digit k hisab se round off hoga.. 
select 76.469, round(76.269, 1);  -- it will be 76.3 after round off 
select 76.469, round(76.369, 2);  -- it will be 76.37 after round off
select 76.469, round(76.362, 2);  -- it will be 76.36 after round off 

-- round off to nearest 10, 100, 1000

select 9, round(9.2, -1); -- it will be 10 after round off
select 9, round(5.2, -1);
select 9, round(4.2, -1); -- it will be 0 after round off 
select 13, round(13, -1);
select 13, round(15, -1); -- it will be 20 after round off 
select 13, round(13.2, -2);  -- it will be 0 after round off
select 13, round(51.2, -2); -- it will be 100 after round off

select round(34.857, 1), truncate(34.857, 1), mod(3,2);

SELECT floor(39.0001);  -- it will give 39
select floor(39.9999);  -- it will give 39

select ceil(39.0001); -- it will give 40
select ceil(39.9999); -- it will give 40

select abs(10.34235), abs(-10.387457);

