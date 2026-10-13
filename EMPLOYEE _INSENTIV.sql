+------------employee table----------
create table employee1
(
emp_id number(5),
First_name varchar2(10),
Last_name varchar2(10),
Salary number (10),
Joining_date date ,
Department varchar2 (20)
);


insert into employee1 (emp_id,First_name ,Last_name,Salary,Joining_date,Department )
values(1,'John','Abrahi',1000000, to_date('01-jan-13','dd-mon-yy'),'Banking');

insert into employee1 (emp_id,First_name,Last_name,Salary,Joining_date,Department )
values(2,'Michel','Clarke',800000, to_date('01-jan-13','dd-mon-yy'),'Insurance');

insert into employee1 (emp_id,First_name,Last_name,Salary,Joining_date ,Department )
values(3,'Roy','Thomas',700000, to_date('01-feb-13','dd-mon-yy'),'Banking');

insert into employee1 (emp_id,First_name, Last_name,Salary,Joining_date ,Department )
values(4,'Tom','Jose',600000, to_date('01-feb-13','dd-mon-yy'),'Insurance');


insert into employee1 (emp_id,First_name, Last_name,Salary,Joining_date ,Department )
values(5,'Jery','Pinto',650000, to_date('01-feb-13','dd-mon-yy'),'Insurance');

insert into employee1 (emp_id,First_name,Last_name,Salary,Joining_date ,Department )
values(6,'Philip','Mathew',750000, to_date('01-jan-13','dd-mon-yy'),'Service');

SELECT * FROM employee1

---------------- Incentive table--------------------

create table Incentive
(Employee_ref_id number(5),
 Incentive_date date,
Incentive_amount number(10)
);

insert into Incentive (Employee_ref_id, Incentive_date,Incentive_amount )
values(1,to_date ('01-Feb-13','dd-mon-yy'),5000);

insert into Incentive (Employee_ref_id, Incentive_date,Incentive_amount )
values(2,to_date ('01-Feb-13','dd-mon-yy'),3000);

insert into Incentive (Employee_ref_id, Incentive_date,Incentive_amount )
values(3,to_date ('01-Feb-13','dd-mon-yy'),4000);

insert into Incentive (Employee_ref_id, Incentive_date,Incentive_amount )
values(1,to_date ('01-jan-13','dd-mon-yy'),4500);

insert into Incentive (Employee_ref_id, Incentive_date,Incentive_amount )
values(2,to_date ('01-Jan-13','dd-mon-yy'),3500);

select* from Incentive


SELECT * FROM employee1


----second highest sallary 


select max(salary) from employee1
where salary<(select max (salary) from employee1);
	
---------------------------------------

SELECT emp_id,
       First_name,
			 salary 
FROM (
    SELECT emp_id, First_name,salary, 
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk 
    FROM employee1 ) ranked_employees  --------------You MUST have a name here for the subquery
WHERE rnk = 2;

-------------------------------------------------------------------------

select * from employee1 a
where (2-1)=(select count (distinct salary)from employee1 b
           where b.salary  > a.salary );


--------------------------3.	Get all employee details from the employee table


select* from employee1


----------------------4.	Get First_Name,Last_Name from employee table

SELECT first_name,last_name from employee1 
  

-------------------5.	Get First_Name from employee table using alias name “Employee Name”

select first_name as EMPLOYEE_NAME
FROM EMPLOYEE1
 
-----------------------------6.	Get First_Name from employee table in upper case

SELECT emp_id ,UPPER(FIRST_NAME)AS FIRST_NAME
FROM EMPLOYEE1

----------------------------7.	Select first 3 characters of FIRST_NAME from EMPLOYEE1
SELECT SUBSTR(First_name, 1, 3) AS First3Chars
FROM EMPLOYEE1;

----------------------------8.	Get position of 'o' in name 'John' from employee table
select instr(first_name,'o')
from employee1
where first_name = 'John'


-----------------------------9 Get FIRST_NAME from employee table after removing white spaces from right side.

select rtrim(first_name) from employee1;

---------------------------------10.	Get First_Name from employee table after replacing 'o' with '$'.
SELECT REPLACE(First_Name, 'o', '$') 
FROM Employee1;

------------------------11.	Get First_Name and Last_Name as single column from employee table separated by a '_'
SELECT FIRST_NAME ||' '|| LAST_NAME AS NAME 
FROM EMPLOYEE1 

----------------------------12.	Get FIRST_NAME, Joiningyear, Joining Month and Joining Date from employee table
SELECT FIRST_NAME, 
    TO_CHAR(JOINING_DATE, 'YYYY') AS JoiningYear, 
    TO_CHAR(JOINING_DATE, 'Month') AS JoiningMonth, 
    TO_CHAR(JOINING_DATE, 'DD') AS JoiningDate
FROM EMPLOYEE1


SELECT FIRST_NAME,
    EXTRACT(YEAR FROM JOINING_DATE) AS JoiningYear,
    EXTRACT(MONTH FROM JOINING_DATE) AS JoiningMonth,
    EXTRACT(DAY FROM JOINING_DATE) AS JoiningDate
FROM EMPLOYEE1;

------------------13.	Get all employee details from the employee table order by First_Name Ascending

SELECT * FROM EMPLOYEE1
ORDER BY FIRST_NAME ASC
-------------------14.	Get all employee details from the employee table order by First_Name Ascending and Salary Descending?
SELECT * FROM EMPLOYEE1
ORDER BY FIRST_NAME ASC,SALARY DESC;

----------------15.	Get employee details from employee table whose employee name is “John”

SELECT * FROM EMPLOYEE1
WHERE FIRST_NAME='John'

---------------------16.	Get employee details from employee table whose employee name are “John” and “Roy”
SELECT *FROM EMPLOYEE1
WHERE FIRST_NAME ='John'
      OR FIRST_NAME='Roy'
------------------ employee details from employee table whose employee name are not “John” and “Roy”.
select* from employee1
where first_name <> 'John'
    and last_name <> 'Roy'   
		
		
-------------.	Get employee details from employee table whose first name starts with 'J'.
select* from employee1
WHERE FIRST_NAME LIKE 'J%';



------------19.	Get employee details from employee table whose first name contains 'o'.
select* from employee1
WHERE FIRST_NAME LIKE '%o%';



---------------20.	Get employee details from employee table whose first name ends with 'n'.
select* from employee1
WHERE FIRST_NAME LIKE '%n';

----------21.	Get employee details from employee table whose first name ends with 'n' and name contains 4 letters.
select* from employee1
WHERE FIRST_NAME LIKE '%n'
and length(FIRST_NAME)=4;

-----------22.	Get employee details from employee table whose first name starts with 'J' and name contains 4 letters.
select* from employee1
WHERE FIRST_NAME LIKE 'j%'
And Length(FIRST_NAME)=4

-----------23.	Get employee details from employee table who’s Salary greater than 600000.
select* from employee1
WHERE salary>60000


-----------24.	Get employee details from employee table whose joining year is “2013”.
SELECT * FROM employee1 
WHERE TO_CHAR(joining_date, 'YY') = '13';
