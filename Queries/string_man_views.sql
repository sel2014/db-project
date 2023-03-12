--how to rename the column that we displayed
select FIRST_NAME as "given_name", LAST_NAME as "surname"
from EMPLOYEES;

----------------------------------------------------

--text function, string mani.
--java first_name+" "+last_name
--in sql concat is ||

select FIRST_NAME || ' ' || LAST_NAME as "full_name"
from EMPLOYEES;

-------------------------------------------------------
--Task
-- add @gmail.com and name new column to full_email
select EMAIL || '@gmail.com' as "full_email"
from EMPLOYEES;
-------------------------------------------------------
--making all lowercase
select lower(EMAIL || '@gmail.com') as "full_email"
from EMPLOYEES;
-------------------------------------------------------
-- uppercase
select upper(EMAIL || '@gmail.com') as "full_email"
from EMPLOYEES;
-------------------------------------------------------
--length(value)
select FIRST_NAME, length(FIRST_NAME) as "length"
from EMPLOYEES
order by "length" desc;

-------------------------------------------------------

--substr(colName, begIndex, NumberOfChars)

select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) as "initials"
from EMPLOYEES;

-------------------------------------------------------
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) as "initials",
       FIRST_NAME || ' ' || LAST_NAME as "full_name",
       lower(EMAIL || '@gmail.com') as "full_email"
       from EMPLOYEES;
-------------------------------------------------------

--VIEW
  CREATE VIEW  EmailList_Selcuk as select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) as "initials",
       FIRST_NAME || ' ' || LAST_NAME as "full_name",
       lower(EMAIL || '@gmail.com') as "full_email"
  from EMPLOYEES;

--to remove view
 drop view EMAILLIST_SELCUK;

select "full_name"
from EMAILLIST_SELCUK;
------------------------------------------------------------------











