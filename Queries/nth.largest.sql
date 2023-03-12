

--list all salaries without duplicates from top to bottom
select distinct SALARY
from EMPLOYEES
order by SALARY desc ;


--find the 14th highest salary
select min(SALARY)
from (select distinct SALARY from  EMPLOYEES
               order by SALARY desc )
where  ROWNUM < 15;

--find employee info who is making 14th highest salary

select * from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct SALARY from  EMPLOYEES
                order by SALARY desc )
                where  ROWNUM < 15);

