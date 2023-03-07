SELECT * FROM COUNTRIES;
select * from DEPARTMENTS;
select * from  EMPLOYEES;
select * from EMPLOYEES;
select FIRST_NAME from EMPLOYEES;
select CITY from LOCATIONS;
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;
select STREET_ADDRESS, POSTAL_CODE from  LOCATIONS;
select distinct FIRST_NAME from EMPLOYEES;

select FIRST_NAME, LAST_NAME, PHONE_NUMBER from EMPLOYEES
where FIRST_NAME = 'David' and LAST_NAME = 'Lee';

select * from EMPLOYEES where SALARY > 7000;

select EMAIL from EMPLOYEES where SALARY <4000;

select * from  EMPLOYEES WHERE JOB_ID = 'IT_PROG' OR JOB_ID= 'SA_REP';

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY >= 5000 AND SALARY <= 10000;

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 10000;

select  * from EMPLOYEES where EMPLOYEE_ID between 130 and 170;

select * from EMPLOYEES where EMPLOYEE_ID = 135 or EMPLOYEE_ID = 176 or EMPLOYEE_ID = 154 or
                              EMPLOYEE_ID = 129;

select *
from EMPLOYEES
where EMPLOYEE_ID in(135, 176,154,129); -- all info of employee with id 135,176,154,129

--get me city where country_id IT,US,UK

SELECT CITY FROM LOCATIONS WHERE COUNTRY_ID IN ('US', 'UK', 'IT');

--get me info who is working as IT_PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_REP');

--how many employee working as IT_PROG OR SA_REP
select count(*) from EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_REP');

--how many employees making more than 8000?

select count(*) from EMPLOYEES
where SALARY >8000;

--how many unique first names do we have?
select count(distinct   FIRST_NAME) from EMPLOYEES;

--get me all employees info based on who is making more salary to low salary?

select * from EMPLOYEES
order by SALARY desc ;

--get me all employees info based on firstname

select * from EMPLOYEES
order by FIRST_NAME;     --default order is asc

--all employee names that start wih c
select * from EMPLOYEES
where FIRST_NAME like 'C%';

--name starts with  C and is 5 characters long

select * from EMPLOYEES
    where FIRST_NAME like 'C____';

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';

--firs names with second character is 'u'
select * from EMPLOYEES
where FIRST_NAME like '_u%';

--min salary
select min(SALARY) from EMPLOYEES;
select max(SALARY) from EMPLOYEES;

--round with two decimals
select round(avg(SALARY),2) from EMPLOYEES;

--total salaries
select sum(SALARY) from EMPLOYEES;

















