
CREATE TABLE employees (
    employee_id     NUMBER(6) PRIMARY KEY,
    first_name      VARCHAR2(20),
    last_name       VARCHAR2(25) NOT NULL,
    email           VARCHAR2(25),
    hire_date       DATE NOT NULL,
    job_id          VARCHAR2(10) NOT NULL,
    salary          NUMBER(8,2),
    commission_pct  NUMBER(2,2),
    manager_id      NUMBER(6),
    department_id   NUMBER(4)
);

drop TABLE employees 
character.
Employee_id Full Name Salary  Hire_date
100 S.King  24000 6/17/2003
116 S.Baida 2900  12/24/2005
117 S.Tobias  2800  7/24/2005
123 S.Vollman 6500  10/10/2005
128 S.Markle  2200  3/8/2008
138 S.Stiles  3200  10/26/2005
161 S.Sewall  7000  11/3/2006


Job Title   Employees Managers
Accountant  5 1
Accounting Manager  1 1
Administration Assistant  1 1
Administration Vice President 2 1
Finance Manager 1 1
Human Resources Representative  1 1
Marketing Manager 1 1
Sales Representative  30  5
Shipping Clerk  20  5
Stock Clerk 20  5


Employee Id Last _name  Weeks Months  Year
100 King  24  166 14
101 Kochhar 20  139 12
102 De Haan 28  195 16
103 Hunold  19  136 11
104 Ernst 17  119 10
105 Austin  20  142 12


  
SELECT * FROM  employees 


INSERT INTO employees VALUES (100, 'S.', 'King', 'SKING', DATE '2003-06-17', 'AD_PRES', 24000, NULL, NULL, 90);
INSERT INTO employees VALUES (116, 'S.', 'Baida', 'SBAIDA', DATE '2005-12-24', 'PU_CLERK', 2900, NULL, 114, 30);
INSERT INTO employees VALUES (117, 'S.', 'Tobias', 'STOBIAS', DATE '2005-07-24', 'PU_CLERK', 2800, NULL, 114, 30);
INSERT INTO employees VALUES (123, 'S', 'Vollman', 'SVOLLMAN', DATE '2005-10-10', 'PU_CLERK', 6500, NULL, 114, 30);
INSERT INTO employees VALUES (128, 'S.', 'Markle', 'SMARKLE', DATE '2008-03-08', 'ST_CLERK', 2200, NULL, 120, 50);
INSERT INTO employees VALUES (138, 'S.', 'Stiles', 'SSTILES', DATE '2005-10-26', 'ST_CLERK', 3200, NULL, 120, 50);
INSERT INTO employees VALUES (161, 'S.', 'Sewall', 'SSEWALL', DATE '2006-11-03', 'SA_REP', 7000, 0.15, 145, 80);

CREATE TABLE departments (
    department_id   NUMBER(4) PRIMARY KEY,
    department_name VARCHAR2(30) NOT NULL,
    manager_id      NUMBER(6),
    location_id     NUMBER(4)
);

INSERT INTO departments VALUES (90, 'Executive', 100, 1700);
INSERT INTO departments VALUES (30, 'Purchasing', 114, 1700);
INSERT INTO departments VALUES (50, 'Shipping', 120, 1500);
INSERT INTO departments VALUES (80, 'Sales', 145, 2500);

CREATE TABLE jobs (

    job_title   VARCHAR2(45) NOT NULL,
		EMPLOYEES  NUMBER(10),
		MANAGER NUMBER(10)
);
  drop table jobs

select* from jobs

insert into jobs values('Accountant' , 5, 1);
insert into jobs values('Accounting Manager', 1, 1);
insert into jobs values('Administration Assistant',1,1);
insert into jobs values('Administration Vice President',2,1);
insert into jobs values('Finance Manager', 1, 1);
insert into jobs values('Human Resources Representative' , 1, 1);
insert into jobs values('Marketing Manager', 1, 1);
insert into jobs values('Sales Representative' , 30,5);
insert into jobs values('Shipping Clerk',20 ,5);
insert into jobs values('Stock Clerk' ,20,5);
   



Q1: Write a query to display the Full name only those employees whose first name start with ‘S’ character.
Employee_id Full Name Salary  Hire_date
100 S.King  24000 6/17/2003
116 S.Baida 2900  12/24/2005
117 S.Tobias  2800  7/24/2005
123 S.Vollman 6500  10/10/2005
128 S.Markle  2200  3/8/2008
138 S.Stiles  3200  10/26/2005
161 S.Sewall  7000  11/3/2006

SELECT employee_id,
      (substr(first_name,1,1))||'.'||last_name AS Full_Name,
			salary,
			hire_date
      FROM employees
      WHERE first_name like 'S%';

---Q2. Find the highest, lowest, sum, and average salary of all employees. Label the columns Maximum,Minimum, Sum, and Average, respectively. Round your results to the nearest whole number. 

SELECT round(max(salary)) highest_salary,
       round(min(salary)) lowest_salary,
       round(sum(salary)) sum_salary,
       round(avg(salary)) avg_salary
FROM employees;

----Q3. Display following output .
Employee Details
King earns $24,000.00 monthly but wants $72,000.00.
Kochhar earns $20,000.00 monthly but wants $60,000.00.
De Haan earns $17,000.00 monthly but wants $51,000.00.
Hunold earns $9,000.00 monthly but wants $27,000.00.
Ernst earns $6,000.00 monthly but wants $18,000.00.
Austin earns $4,800.00 monthly but wants $14,400.00.

SELECT last_name||' '||'earns'||to_char(salary,'$99999.00')||' '||'but wants'||' '||(to_char(salary*3,'$99999.00'))
FROM employees;





---Q4. Determine the number of managers without listing them. Label the column  Number of Managers Hint: Use the MANAGER_ID column to determine the number of managers. 
SELECT 
      count(manager_id) number_of_managers
FROM employees;

---Q5. Find the difference between the highest and lowest salaries. Label the column DIFFERENCE
SELECT max(salary)-min(salary) as aadifference
FROM employees;

---Q6. Display how many employees joined in each month
     --Hint: Grouping by month and count the employees .use TO_CHAR functions also

SELECT To_char(hire_date,'Month') AS month,
        count(employee_id)
FROM employees
group by to_char(hire_date,'Month')
order by month;

----Q7. Display employee id , full name of employees and their hire date only those employees that has greater than 10 year experience in company.

SELECT Employee_id,
       First_name||' '||last_name  AS Full_name,
			 hire_date
FROM employees
WHERE (to_char(hire_date)<sysdate-365*10);

---Q8. Write a query to multipley  salary to commission and calculate the average salary of employees.
Hint: Commission column contain null values
alter table employees 
add commission number (20);

   insert into employees values  (commission=null)  ; 

--Q9.Write a query to display department_id and number of manager under the particular department exclude the null department.
Hint: Grouping on department id


SELECT department_id,
       count(manager_id)
FROM departments
WHERE department_id is not null
group by department_id;


---Q10.Display job title and number of employees working those job and number of manager they perform job.

Job Title   Employees Managers
Accountant  5 1
Accounting Manager  1 1
Administration Assistant  1 1
Administration Vice President 2 1
Finance Manager 1 1
Human Resources Representative  1 1
Marketing Manager 1 1
Sales Representative  30  5
Shipping Clerk  20  5
Stock Clerk 20  5

SELECT count(employee_id),count(manager_id),j.job_title
FROM employees e,jobs j
WHERE e.job_id=j.job_id and manager_id is not null
group by j.job_title;

Q11. Display employee full name and pad both side asterisk sing 10 time . Example 

Employee Details
**********Ellen Abel**********
**********Sundar Ande**********
**********Mozhe Atkinson**********
**********David Austin**********
**********Hermann Baer**********
**********Shelli Baida**********
**********Amit Banda**********
**********Elizabeth Bates**********

Q12. Display following output. (Hint: Use Months_between Function)
Employee Id Last _name  Weeks Months  Year
100            King      24    166     14
101            Kochhar   20    139     12
102            De Haan   28    195     16
103            Hunold    19    136     11
104            Ernst     17    119     10
105            Austin    20    142     12

  SELECT employee_id,last_name,hire_date,round(months_between(sysdate,hire_date)/7) weeks,
round(months_between(sysdate,hire_date)) months,
round(months_between(sysdate,hire_date)/12) years
FROM employees;


