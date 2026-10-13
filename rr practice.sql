SELECT* FROM Salespeople;
SELECT* FROM orders;
SELECT* FROM customers;

---3.  Find the largest order taken by each salesperson on each date.
select s.sname,city,

select * from employee1 a
where 2-1=(select count (destint salary)from employee1 b
    where b.salary < a.salary );
     
		 
		 
		 
		 
		 
		 
SELECT SNUM,SALARY
FROM(SELECT SNUM,CITY,SALARY,
		      DENSE_RANK () OVER (ORDERED BY SALARY DESC)as rnk
					from employee1)as ranked emp 
			where rnk=2




SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

SELECT salary 
FROM (
    SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM Employee5) AS RankedSalaries
WHERE rnk = 2;
