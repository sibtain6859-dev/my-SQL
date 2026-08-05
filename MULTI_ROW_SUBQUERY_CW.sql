-- 30/07/26
use corr_db;

-- multi row subquery
-- IN , ANY, ALL

select * from employee_c;

select * from employee_c
where salary in( select salary from employee_c where name ='a');

select * from employee_c
where salary =any( select salary from employee_c where name ='a');  -- in, =any both are same 

select * from employee_c
where salary > any( select salary from employee_c where name ='a');

select * from employee_c
where salary < any( select salary from employee_c where name ='a');

select * from employee_c
where salary >all( select salary from employee_c where name ='a');


