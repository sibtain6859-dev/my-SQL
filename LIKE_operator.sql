USE world;
SHOW tables;

SELECT * FROM city;

SELECT * FROM city WHERE name = 'breda';
SELECT * FROM city WHERE name LIKE 'breda';

-- Some imp points to remember
-- 'B%' = 1st character B se hee start hoga... ex- B, BAD, BADSHAH
-- '%B' = last character B hee hoga..
-- '_' = only one character
-- %BB% = double BB letter me kahi bhi aa sakta hai
-- % = zero or more character 

SELECT * FROM city WHERE name LIKE 'B%';
SELECT * FROM city WHERE name LIKE 'Ka%';
SELECT * FROM city WHERE name LIKE '%a';
SELECT * FROM city WHERE name LIKE 'B%A'; -- start with B char and end with A char
SELECT * FROM city WHERE name LIKE '%a%';
SELECT * FROM city WHERE name LIKE 'T__'; -- means only 3 char
SELECT * FROM city WHERE name LIKE 'T__%'; -- minimum 3 char hona hee chahiye
SELECT * FROM city WHERE name LIKE 'S%_';  -- min 2 char hona hee chahiye or uske baad kitna bhi ho chale ga
SELECT * FROM city WHERE name LIKE '_A%_';



