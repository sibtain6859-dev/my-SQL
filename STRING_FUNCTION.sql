USE world;

-- concat = it is used to join 2 or more strings into a single strings
-- concat_ws = isme wide space dene ki jarurat nahi padti hai
-- substr = it is used to extract letter... indexing start with 1
-- length = to find no. of bytes.. but it looks like similar to char_length
-- char_length = to find total no. of character.. mostly we will use this char_length
-- replace = character replace karne k kaam aata hai
-- trim = it removes wide spaces sirf starting or ending wala 
-- lpad = add from left side
-- rpad = add from right side

SELECT name, continent, concat(continent, name) FROM country;
SELECT name, continent, concat(continent, ' have ', name,' country') FROM country;

SELECT name, continent, concat_ws(' ', continent, 'have', name, 'country') FROM country;

SELECT name, upper(name) from country; -- capital letter me convert ho jaye ga 
SELECT name, lower(name) from country; -- lower letter me convert ho jaye ga

select name, upper(name), substr(name, 2) from country; -- 2nd letter se start hogi
select name, substr(name, 2), substr(name, 2,4) from country; -- 2nd letter se start hogi or phir only 4 letter aaye gi
select name, substr(name, 2,4)from country;

SELECT name, substr(name ,2), substr(name, 2,4), substr(name, 1,4) from country WHERE name = 'colombia';

SELECT name, substr(name, -4) FROM country WHERE name = 'colombia'; -- last4 char will be extracted
SELECT name, substr(name, -4,2) FROM country WHERE name = 'colombia';

select name, length(name) , char_length(name) from country;

select name, replace(name, 'a', '@') from country; 

SELECT trim('       he  llo      ');

SELECT name, lpad(name, 6, '-') from country; 
-- if koi char 6 letter ka nahi h tab waha pe hyphen add ho jaye gi left side se

SELECT name, rpad(name, 8, '#') FROM country;