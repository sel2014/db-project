--everyone's salary in descending order
select * from EMPLOYEES
order by SALARY desc ;
-----------------------------------------------------
-- min salary
select min(SALARY) from EMPLOYEES;
-----------------------------------------------------
--get me highest salary
select max(SALARY) from EMPLOYEES;

select *
from EMPLOYEES
where SALARY = 11000;
-----------------------------------------------------
--sub-query solution in one shot
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);
------------------------------------------------------
--employee id who is making the max salary
select EMPLOYEE_ID
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);
-----------------------------------------------------
--finding second highest salary after 24k
select max(SALARY)
from EMPLOYEES
where SALARY < 24000;
--------------------------------------------------
--one shot combining 2 queries
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);
---------------------------------------------------
--all salaries less than max salary
select SALARY
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);
-----------------------------------------------------
--employee info who is making second highest salary

select * from EMPLOYEES
where SALARY = (select max(SALARY)
                from EMPLOYEES
                where SALARY < (select max(SALARY) from EMPLOYEES));
--------------------------------------------------
select * from EMPLOYEES
    order by SALARY desc ;
--first 10 rows
select *
from EMPLOYEES
where ROWNUM < 11
order by SALARY desc ;


--order all employees based on salary high to low then display only first 10 result
select *
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 11;   ---top 5 earners < 6

-----------------------------------------------------




