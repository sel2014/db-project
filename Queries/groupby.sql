
--average salary for IT_PROG
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AC_ACCOUNT';

select JOB_ID
from EMPLOYEES
 group by JOB_ID;

select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

--job_ids where their avg salary is more than 5k
select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000;

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID;




