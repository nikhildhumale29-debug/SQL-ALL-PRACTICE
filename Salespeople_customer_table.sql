


---------------------------------------------------------------------------------------------
Salespeople
Snum (PK) Sname City  Comm
1001  Peel  London  .12
1002  Serres  San Jose  .13
1004  Monika  London  .11
1007  Rifkin  Barcelona .15
1003  Axelrod New York  .10
1005  Franc London  .26


SELECT* FROM Salespeople;
SELECT* FROM orders;
SELECT* FROM customers;

CREATE TABLE Salespeople (
Snum NUMBER(10) PRIMARY KEY,
sname VARCHAR2(20),
city VARCHAR2(20),
comm NUMBER(4,2)
);

INSERT INTO salespeople VALUES(1001,'Peel','London', 0.12);
INSERT INTO salespeople VALUES(1002,'Serres','San Jose', 0.13);
INSERT INTO salespeople VALUES(1004,'Monika','London',0.11);
INSERT INTO salespeople VALUES(1007,'Rifkin','Barcelona', 0.15);
INSERT INTO salespeople VALUES(1003,'Axelrod','New York', 0.10);
INSERT INTO salespeople VALUES(1005,'Franc','London', 0.26);



---------------------------------------------------------------
Customers
Cnum (PK) Cname City  Rating  Snum (FK)
2001  Hoffman London  100 1001
2002  Giovanni  Rome  200 1003
2003  Liu San Jose  200 1002
2004  Grass Berlin  300 1002
2006  Clemens London  100 1001
2008  Cisneros  San Jose  300 1007
2007  Pereira Rome  100 1004


drop table Customers

create table Customers
(
Cnum number (10) primary key,
Cname varchar2 (10),
City varchar2 (10),
Rating number (10),
Snum number (20),
foreign key (snum)references salespeople(snum)
);

SELECT * FROM customers 

insert into customers values (2001,'Hoffman','London',100, 1001);
insert into customers values (2002,'Giovanni','Rome',200, 1003);
insert into customers values (2003,'Liu','San Jose' ,200, 1002);
insert into customers values (2004 ,'Grass','Berlin',300,1002);
insert into customers values (2006,'Clemens','London' ,100 ,1001);
insert into customers values (2008,'Cisneros','San Jose',300,1007);
insert into customers values (2007,'Pereira','Rome',100,1004);


-------------------orders table----------------
ORDERS
Onum (PK) Amt Odate Cnum (FK) Snum (FK)
3001  18.69 03-Oct-96 12:30 2008  1007
3003  767.19  03-Oct-96 13:45 2001  1001
3002  1900.10 03-Oct-96 12:05 2007  1004
3005  5160.45 03-Oct-96 14:00   2003  1002
3006  1098.16 03-Oct-96 13:37 2008  1007
3009  1713.23 04-Oct-96 15:21 2002  1003
3007  75.75 04-Oct-96 16:02 2002  1003
3008  4723.00 05-Oct-96 12:07 2006  1001
3010  1309.95 06-Oct-96 13:12 2004  1002
3011  9891.88 06-Oct-96 13:09 2006  1001
3012  3455.78 04-Oct-96 15:21 2002  1003
3013  1245.98 04-Oct-96 16:32 2002  1003
3014  3721.53 05-Oct-96 12:45 2006  1001
3015  734.50  06-Oct-96 13:16 2004  1002
3016  1729.67 06-Oct-96 13:07 2006  1001 



create table ORDERS(
ONUM NUMBER(10)PRIMARY KEY,
Amt number (10,2),
Odate date,
Cnum number (10),
snum number (10),
foreign key (Cnum)references customers(Cnum),
foreign key (snum)references salespeople(snum)
);

select * from orders

insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3001,18.69, to_date('03-Oct-96 12:30','dd-mon-yy hh24:mi'), 2008 , 1007 );
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3003, 767.19, to_date('03-Oct-96 13:45','dd-mon-yy hh24:mi'),2001, 1001);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3002,1900.10, to_date('03-Oct-96 12:05','dd-mon-yy hh24:mi'),2007, 1004);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3005,5160.45, to_date('03-Oct-96 14:00','dd-mon-yy hh24:mi'),2003,1002 );
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3006,1098.16, to_date('03-Oct-96 13:37','dd-mon-yy hh24:mi'),2008 , 1007 );
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3009,1713.23, to_date('04-Oct-96 15:21','dd-mon-yy hh24:mi'),2002 , 1003 );
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3007,75.75, to_date('04-Oct-96 16:02','dd-mon-yy hh24:mi'),2002 ,1003);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3008,4723.00,to_date('05-Oct-96 12:07','dd-mon-yy hh24:mi'),2006,1001 );
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3010,1309.95,to_date('06-Oct-96 13:12','dd-mon-yy hh24:mi'),2004, 1002 );
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3011,9891.88,to_date('06-Oct-96 13:09','dd-mon-yy hh24:mi'),2006 ,1001);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3012,3455.78,to_date('04-Oct-96 15:21','dd-mon-yy hh24:mi'),2002 ,1003);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3013,1245.98,to_date('04-Oct-96 16:32','dd-mon-yy hh24:mi'),2002, 1003);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3014,3721.53,to_date('05-Oct-96 12:45','dd-mon-yy hh24:mi'),2006,1001);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3015,734.50,to_date('06-Oct-96 13:16','dd-mon-yy hh24:mi'),2004, 1002);
insert into orders (ONUM,Amt,Odate,Cnum,snum) values(3016,1729.67,to_date('06-Oct-96 13:07','dd-mon-yy hh24:mi'),2006, 1001);



select* from  orders;
SELECT * FROM SALESPEOPLE;
SELECT * FROM  Customers;

------------1  List all customers with a rating of 100.
select * from customers
where rating=100

-----2.  Find all records in the Customer table with NULL values in the city column.
select * from customers
where city=null


--------3.  Find the largest order taken by each salesperson on each date.
	SELECT 
    s.sname AS salesperson,
    o.odate AS order_date,
    MAX(o.amt) AS largest_order
    FROM orders o
JOIN salespeople s ON o.snum = s.snum
GROUP BY 
    s.sname, o.odate
ORDER BY 
    s.sname, o.odate;
----------------------
	 	SELECT 
    s.sname AS salesperson,
    o.odate AS order_date,
    MAX(o.amt) AS largest_order
    FROM orders o
JOIN salespeople s ON o.snum = s.snum
GROUP BY 
    s.sname, o.odate ;

	 
-----------4.  Arrange the Orders table by descending customer number.
SELECT * from orders
ORDER BY cnum DESC;

------------5.  Find which salespeople currently have orders in the Orders table
SELECT DISTINCT 
    s.snum,
    s.sname,
    s.city,
    s.comm
FROM salespeople s
JOIN orders o ON s.snum = o.snum
ORDER BY s.snum;
 

----------6.  List names of all customers matched with the salespeople serving them.
SELECT 

     c.cname AS customer,
    s.sname AS salesperson
FROM customers c
JOIN salespeople s 
    ON c.snum = s.snum
ORDER BY c.cname;
----------7.  Find the names and numbers of all salespeople who had more than one customer.

select
      s. sname as  salespeople_name,
	    s. snum  as  salespeople_number
		  from  salespeople s 
		  join customers c
		  on s.snum = c.snum
		group by s.snum,sname
		having count(c.cnum)>1;
		
		


----------8.  Count the orders of each of the salespeople and output the results in descending order.
select s.snum as salespepole_number ,
       s.sname as salespepole_name,
			 count(o.onum) as order_count
       from salespeople s 
			 join  orders o  on s.snum= o.snum
			 group by s.snum, s.sname
			 order by order_count desc;
			 

--9.  List the Customer table if and only if one or more of the customers in the Customer tables are located in San Jose.

SELECT *FROM customers
WHERE CASE 
          WHEN EXISTS (SELECT 1 FROM customers WHERE city = 'San Jose') 
          THEN 1 
          ELSE 0 
      END = 1


-----10. Match salespeople to customers according to what city they lived in.
select s.snum as salespeople_number,
       s.sname as salespeople_name,
			 s.city as salespeople_city,
			 c.cnum as customers_number,
			 c.cname as customers_name,
			 c.city as customers_city
			 from  salespeople s
			 join customers c
			 on s.city =c.city


------11. Find the largest order taken by each salesperson.

SELECT 
    s.Snum AS Salesperson_ID,
    s.Sname AS Salesperson_Name,
    max(o.amt) AS Largest_Order_Amount
from Salespeople s
join Orders o
    on s.Snum = o.Snum
group by s.Snum, s.Sname
order by Largest_Order_Amount DESC;

---------12. Find customers in San Jose who has a rating above 200.

SELECT 
    CNUM AS CUSTOMER_NUMBER,
		CNAME AS CUSTOMER_NAME,
   CITY,
	 RATING
	 FROM CUSTOMERS
WHERE CITY = 'San Jose' 
AND RATING >200;

------14. List all the orders of salesperson Monika from the Orders table.

SELECT 
    o.Onum AS Order_ID,
    o.Amt AS Order_Amount,
    o.Odate AS Order_Date,
    o.Cnum AS Customer_ID,
    o.Snum AS Salesperson_ID,
    s.Sname AS Salesperson_Name
FROM Orders o
JOIN Salespeople s
    ON o.Snum = s.Snum
WHERE s.Sname = 'Monika'
ORDER BY o.Odate;



select *
from orders o
join salespeople s
on o.snum= s.snum
where s.sname = 'Monika' 


--------15. Find all customers with orders on October 3.

TRUNC(o.Odate) = TO_DATE('03-OCT-1996', 'DD-MON-YYYY')


SELECT 
    c.Cnum AS Customer_ID,
    c.Cname AS Customer_Name, 
    c.City AS Customer_City
FROM Customers c
JOIN Orders o
    ON c.Cnum = o.Cnum
WHERE TRUNC(o.Odate) = TO_DATE('03-OCT-1996', 'DD-MON-YYYY')
ORDER BY c.Cname;



---16. Give the sums of the amounts from the orders table, grouped by date, 

SELECT 
    TRUNC (Odate) AS Order_Date,
    SUM(Amt) AS Total_Amount
FROM Orders
GROUP BY TRUNC(Odate)
ORDER BY Order_Date;
-----17. Eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount.
SELECT 
    TRUNC(Odate) AS Order_Date, 
    SUM(Amt) AS Total_Amount, 
    MAX(Amt) AS Max_Order_Amount 
FROM Orders 
GROUP BY TRUNC(Odate) 
HAVING SUM(Amt) >= MAX(Amt) + 2000 
ORDER BY Order_Date;


-----18. Select all orders that had amounts that were greater than at least one of the orders from October 6.

SELECT 
    o.Onum AS Order_ID,
    o.Amt AS Order_Amount,
    o.Odate AS Order_Date,
    o.Cnum AS Customer_ID,
    o.Snum AS Salesperson_ID
FROM Orders o
WHERE o.Amt > ANY (
    SELECT o2.Amt
    FROM Orders o2
    WHERE TO_CHAR(o2.Odate, 'DD-Mon-YY') = '06-Oct-96'
);
-------
SELECT *
FROM Orders o
WHERE o.Amt > ANY (
    SELECT o2.Amt
    FROM Orders o2
    WHERE TO_CHAR(o2.Odate, 'DD-Mon-YY') = '06-Oct-96'
);

----19. Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.
SELECT 
    s.Snum AS Salesperson_NUM,
    s.Sname AS Salesperson_Name,
    s.City AS Salesperson_City,
    s.Comm AS Commission
FROM Salespeople s
WHERE EXISTS (SELECT 1
    FROM Customers c
    WHERE c.Snum = s.Snum
    AND c.Rating = 300);

----20. Find all pairs of customers having the same rating.

SELECT 
    c1.Cnum AS Customer1_ID,
    c1.Cname AS Customer1_Name,
    c2.Cnum AS Customer2_ID,
    c2.Cname AS Customer2_Name,
    c1.Rating
FROM Customers c1
JOIN Customers c2
    ON c1.Rating = c2.Rating
   AND c1.Cnum < c2.Cnum   
ORDER BY c1.Rating, c1.Cname, c2.Cname;

----21. Find all customers with CNUM, 1000 above the SNUM of Serres.
select 
       cnum as customer_id,
			 cname as customer_name, 
			 city,
			 snum
			 from customers
			 where snum > 1000 ;

-----22. Give the salespeople’s commissions as percentage instead of decimal numbers.
select
     snum as salespeople_name,
		 sname as salespeople_name,
		 city,
		to_char(Comm * 100) || '%' as Commission_Percentage
  FROM Salespeople ;


----23. Find the largest order taken by each salesperson on each date, eliminating those MAX orders, which are less than $3000.00 in value.
SELECT 
    s.Snum AS Salesperson_ID,
    s.Sname AS Salesperson_Name,
    max(o.amt) AS Largest_Order_Amount,
		o.odate as oder_date
from Salespeople s
join Orders o
    on s.Snum = o.Snum
where o. amt >	3000	
group by s.Snum, s.Sname,o.odate
order by Largest_Order_Amount DESC;
-----------
SELECT o.Snum,
       o.Odate,
       MAX(o.Amt) AS Largest_Order_Amount
FROM Orders o
GROUP BY o.Snum, o.Odate

HAVING MAX(o.Amt) >= 3000
order by Largest_Order_Amount DESC;
----24. List the largest orders on October 3, for each salesperson.

SELECT o.Snum,
       MAX(o.Amt) AS Max_Order_Amount
FROM Orders o
WHERE TO_CHAR(o.Odate, 'DD-Mon-YY') = '03-Oct-96'
GROUP BY o.Snum;
		
      

----25. Find all customers located in cities where Serres (SNUM 1002) has customers.
SELECT * FROM customers
where snum=1002

-----26. Select all customers with a rating above 200.00.
SELECT * FROM cust omers
where rating>200
----27. Count the number of salespeople currently listing orders in the Orders table.
SELECT COUNT(DISTINCT Snum) AS Num_Salespeople
FROM Orders;

----28. Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name and the salesperson‘s rate of commission.
       
			 SELECT 
			      c.Cname AS Customer_Name,
            s.Comm  AS Salesperson_Commission
FROM Customers c
JOIN Salespeople s
     ON c.Snum = s.Snum
WHERE s.Comm > 0.12;

---29. Find salespeople who have multiple customers.
SELECT s.Sname AS Salesperson_Name,
       COUNT(c.Cnum) AS Num_Customers
FROM Salespeo00ple s
JOIN Customers c
     ON s.Snum = c.Snum
GROUP BY s.Sname
HAVING COUNT(c.Cnum) > 1;
	

-  ---30. Find salespeople with customers located in their city.
SELECT
      S.SNAME  AS salespeople_NAME,
			C.CNAME AS customers_NAME,
			S.CITY ASCITY
			FROM  Customers c
JOIN Salespeople s
ON  C.SNUM= S.SNUM
WHERE C.CITY=S.CITY;
---31. Find all salespeople whose name starts with ‘P’ and the fourth character is ‘I’.
SELECT
      SNAME,SNUM,CITY
			FROM salespeople
			WHERE  SNAME LIKE 'P__I%';
--32. Write a query that uses a sub query to obtain all orders for the customer named ‘Cisneros’. Assume you do not know his customer number.

select * from orders
     where cnum=(select cnum from customer
			      where  cname='Cisneros');

---33. Find the largest orders for ‘Serres’ and ‘Rifkin’.
select s.Sname AS Salesperson_Name,
       MAX(o.Amt) AS Largest_Order
from Orders o
join Salespeople s
     ON o.Snum = s.Snum
where s.sname in ('Serres', 'Rifkin')
GROUP BY s.Sname;
---34. Extract the Salespeople table in the following order: SNUM, SNAME, COMMISSION, CITY.
     select
		       SNUM,
					 SNAME,
					 COMM as commission,
					 CITY
					 from Salespeople ;
					 
---35. Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.
select cname
from customers 
where cname BETWEEN 'A' AND 'H'

------

SELECT Cname
FROM Customers
WHERE SUBSTR(Cname,1,1) IN ('A','B','C','D','E','F','G');

---36. Select all the possible combinations of customers that you can assign.


---37. Select all orders that are greater than the average for October 4.

SELECT *
FROM Orders
WHERE Amt > (
    SELECT AVG(Amt)
    FROM Orders
    WHERE TO_CHAR(Odate, 'DD-Mon-YY') = '04-Oct-96');			




--38. Write a select command using a correlated sub query that selects the names and numbers of all customers with ratings equal to the maximum for their city.

SELECT c.Cname, c.Cnum, c.City, c.Rating
FROM Customers c
WHERE c.Rating = (
    SELECT MAX(c2.Rating)
    FROM Customers c2
    WHERE c2.City = c.City  );

---39. Write a query that totals the orders for each day and places the results in descending order.


select 
      odate,city,
      sum(amt) as total_orders
			from orders 
			group by odate,
	     order by total_orders desc;
			 	 
	 SELECT 
    snum,odate,city,
    SUM(amt) AS total_orders
FROM orders
join salespeople
on o.snum = s.snum
GROUP BY odate,city
ORDER BY total_orders DESC;
			

----40. Write a select command that produces the rating followed by the name of each customer in San Jose.
select
      rating,
			cname
			from customers
where city ='San Jose';
 select * from orders


----41. Find all orders with amounts smaller than any amount for a customer in San Jose.
select* from orders 
where amt< any (select amt 
            from orders o
						join customers c 
            on o.cnum = c.cnum
						where city='San Jose'  );
						

---42. Find all orders with above average amounts for their customers.
select* from orders 
where amt>any (select amt 
            from orders o
            join customers c 
            on o.cnum = c.cnum
             );
            



---43. Write a query that selects the highest rating in each city.
select 
      city, 
			max (rating)
			from customers
			group by city


---44. Write a query that calculates the amount of the salesperson’s commission on order by a customer with a rating above 100.00.
 select 
			 c.cname  as customer_name
       c.rating 
			 o.amt  as order_amount
			 o.onum  as order_num
			 sname   as  salespeople_name
			 scomm   as  commition rate
       (o.Amt * s.Comm) AS Commission_Amount
       FROM Orders o
       JOIN Customers c
       ON o.Cnum = c.Cnum
       JOIN Salespeople s
       ON o.Snum = s.Snum
       WHERE c.Rating > 100;

--45. Count the customers with rating above San Jose’s average.

select
      count(*) as customers_num
			from customers 
			where rating  > (select avg(rating) from customers 
			                      where city ='San Jose');
														
	--------													
														
	select
      count(cnum) 
			from customers 
			where rating  > (select avg(rating) from customers 
			                      where city ='San Jose');


--46. Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.
SELECT 
       s1.Sname AS Salesperson_1,
       s2.Sname AS Salesperson_2
       FROM Salespeople s1, Salespeople s2
       ORDER BY s1.Sname, s2.Sname;


---47. Find all salespeople that are located in either Barcelona or London.
 SELECT
       snum,
			 sname,
			 city
			 from salespeople
			 where city=any('Barcelona' , 'London');




---48. Find all salespeople with only one customer.

SELECT s.Sname as salespeople_Name,
       s.Snum  as salespeople_Number,
       COUNT(c.Cnum) AS Num_Customers
FROM Salespeople s
JOIN Customers c
     ON s.Snum = c.Snum
GROUP BY s.Sname, s.Snum
HAVING COUNT(c.Cnum) = 1;

---49. Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.
SELECT 
      C1.CNAME AS CUSTOMER1,
      C2.CNAME AS CUSTOMER2,
			C1.SNUM AS SALESPEOPLE_NUMBER
			FROM CUSTOMERS C1
			JOIN CUSTOMERS C2
			           ON C1.SNUM =  C2. SNUM
			WHERE C1. CNUM < C2.CNUM
			ORDER BY C1.SNUM, C1.CNAME,C2.CNAME;
			------------------------------------
	
--50. Write a query that will give you all orders for more than $1000.00.
SELECT * FROM ORDERS
         WHERE AMT > 1000 ;


---51. Write a query that lists each order number followed by the name of the customer who made that order.
SELECT 
      O.Onum,
      C.Cname 
			FROM ORDERS O
			JOIN CUSTOMERS C
			ON O.Cnum= C.Cnum 
			order by o.cnum;


---52. Write 2 queries that select all salespeople (by name and number) who have customers in their cities who they do not service, one using a join and one a correlated subquery. Which solution is more elegant?

     
			
			
			SELECT DISTINCT s.Sname, s.Snum
FROM Salespeople s
JOIN Customers c
     ON s.City = c.City
WHERE s.Snum <> c.Snum;

------------------------------------

SELECT s.Sname, s.Snum
FROM Salespeople s
WHERE EXISTS (
    SELECT 1
    FROM Customers c
    WHERE c.City = s.City
      AND c.Snum <> s.Snum
);
			

----53. Write a query that selects all customers whose ratings are equal than ANY (in the SQL sense) of Serres.

SELECT c.cname, c.cnum, c.rating
FROM Customers c
WHERE c.Rating = ANY (
       SELECT c2.Rating
       FROM Customers c2
       JOIN Salespeople s
         ON c2.Snum = s.Snum
    WHERE s.Sname = 'Serres'  );


----54. Write2 queries that will produce all orders taken on October3 or October 4.
select * from orders 
WHERE TO_CHAR(Odate, 'DD-Mon') IN ('03-Oct', '04-Oct');

      


------55. Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates.
select
       c.Cname AS Customer_Name,
       o1.Onum  AS Order_1,
       o2.Onum  AS Order_2
FROM Orders o1
JOIN Orders o2
     ON o1.Cnum = o2.Cnum
    AND o1.Onum < o2.Onum   
JOIN Customers c
     ON o1.Cnum = c.Cnum  
ORDER BY o1.Onum, o2.Onum;






------56. Find only those customers whose ratings are higher than every customer in Rome.
SELECT Cname, Cnum, City, Rating
FROM Customers
WHERE Rating > (
    SELECT MAX(Rating)
    FROM Customers
    WHERE City = 'Rome'
);

-------57. Write a query on the customers table whose output will exclude all customers with a rating < = 100.00, unless they are located in Rome.
SELECT Cname, Cnum, City, Rating
FROM Customers
WHERE (Rating>101
         OR CITY ='ROME');
     

-----58. Find all rows from the Customer table for which the salesperson number is 1001.
SELECT * FROM CUSTOMERS
WHERE SNUM=1001 ;


---59. Find the total amount in Orders for each salesperson for which this total is greater than the amount of the largest order in the table.
SELECT 
       s.Sname AS Salesperson_Name,
       s.Snum  AS Salesperson_Number,
       SUM(o.Amt) AS Total_Orders
       FROM Orders o
       JOIN Salespeople s
       ON o.Snum = s.Snum
       GROUP BY s.Sname, s.Snum
       HAVING SUM(o.Amt) > (SELECT MAX(Amt) FROM Orders);
---------------------------


----60. Write a query that selects all orders that have Zeroes or NULL in the Amount field.
SELECT *
FROM Orders
WHERE Amt = 0
   OR Amt IS NULL;


----61. Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically, and the latter has a rating of less than 200.

SELECT 
       s.Sname AS Salesperson_Name,
       c.Cname AS Customer_Name,
       c.Rating
       FROM Salespeople s
       JOIN Customers c
       ON s.Sname < c.Cname  
       WHERE c.Rating < 200
       ORDER BY s.Sname, c.Cname;


--62. List all salespeople’s names and the commission they have earned.
SELECT 
       Snum  as salespeople_num,
       Sname  as salespeople_num,
			 comm as commition
			 FROM Salespeople;
			 
-----63. Write a query that produces the names and cities of all customers with the same rating as Hoffman. Write the query using Hoffman’s CNUM rather than his rating, so that it would still be usable if his rating changed.
SELECT c.Cname, c.City, c.Rating
FROM Customers c
WHERE c.Rating = (
    SELECT Rating
    FROM Customers
    WHERE Cnum =(select cnum from customer
		                      where cname= 'Hoffman') );


-------64. Find all salespeople for whom there are customers that follow them in alphabetical order.

SELECT DISTINCT 
        s.Sname AS Salesperson_Name,
        s.Snum AS Salesperson_Number
        FROM Salespeople s
        JOIN Customers c
        ON c.Snum = s.Snum
        WHERE c.Cname > s.Sname
        ORDER BY s.Sname;

-----65. Write a query that produces the names and ratings of all customers of all who have above average orders.

SELECT 
      C.CNAME,
			C.RATING,
			O.AMT
			FROM CUSTOMERS C
			JOIN ORDERS O 
			ON C.CNUM = O.CNUM 
			WHERE O. AMT >(SELECT  AVG(AMT)FROM ORDERS);

---66. Find the sum of all purchases from the Orders table.

SELECT
    SUM(AMT) AS TOTAL_purchases
		FROM ORDERS;


----67. Write a select command that produces the order number, amount, and date for all rows in the Order table.
SELECT 
      Onum as order_number,
			amt as order_amount,
		  odate 
			from orders;


---68. Count the number of not null rating fields in the Customer table including duplicates.

SELECT COUNT(Rating) AS NotNull_Rating_Count
FROM Customers;


---69. Write a query that gives the names of both the salesperson and the customer for each order after the order number.
select 
      o.onum,
			s.sname,
			c.cname
			from orders o
			join customers c
			on o.cnum =c.cnum
			join salespeople s
			on o.snum =s.snum ;


--70. List the commissions of all salespeople servicing customers in London.
select distinct
           s.comm,
           s.snum,
           s.sname 
from salespeople s
join customers c 
on c. snum = s.snum
where c.city ='London' ;

       


----71. Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.
select  s.snum,
        s.sname
from salespeople s
 where  S.CITY  = ALL (select c.city  
                    from customers c
		                where cnum =snum );
										
										
select  s.snum,
        s.sname
from salespeople s
 where  S.CITY  = ANY (select c.city  
                    from customers c
		                where cnum =snum );

------72. Write a query using the EXISTS operator that selects all salespeople with customers located in their cities who are not assigned to them.
SELECT s.Sname, s.Snum, s.City
FROM Salespeople s
WHERE EXISTS (
    SELECT 1
    FROM Customers c
     WHERE c.City = s.City
     AND c.Snum <> s.Snum);


----73. Write a query that selects all customers serviced by Peel or Motika.
SELECT c.Cname ,
       c.City,
       s.Sname 
FROM Customers c
JOIN Salespeople s
     ON c.Snum = s.Snum
WHERE s.Sname IN ('Peel', 'Motika');


-----74. Count the number of salespeople registering orders for each day.
           -- (If a salesperson has more than one order on a given day, he or she should be counted only once.).
SELECT o.Odate AS Order_Date,
       COUNT(DISTINCT o.Snum) AS Salespeople_Count
       FROM Orders o
      GROUP BY o.Odate
      ORDER BY o.Odate;


--75. Find all orders attributed to salespeople in London.
SELECT o.Onum AS Order_Number,
       o.Amt  AS Order_Amount,
       o.Odate AS Order_Date,
       s.Sname AS Salesperson_Name,
       s.City  AS Salesperson_City,
       c.Cname AS Customer_Name
FROM Orders o
JOIN Salespeople s
     ON o.Snum = s.Snum
JOIN Customers c
     ON o.Cnum = c.Cnum
WHERE s.City = 'London'
ORDER BY o.Onum;

--76. Find all orders by customers not located in the same cities as their salespeople.
SELECT o.Onum AS Order_Number,
       o.Amt  AS Order_Amount,
       o.Odate AS Order_Date,
       s.Sname AS Salesperson_Name,
       s.City  AS Salesperson_City,
       c.Cname AS Customer_Name
			 FROM Orders o
       JOIN Salespeople s
       ON o.Snum = s.Snum
			 JOIN Customers c
     ON o.Cnum = c.Cnum
		 WHERE s.City = c.city


---77. Find all salespeople who have customers with more than one current order.
SELECT DISTINCT
      Snum as salesperson_num 
      sname as salesperson_name
FROM Salespeople s
JOIN Customers c
     ON s.Snum = c.Snum
JOIN Orders o
     ON c.Cnum = o.Cnum
GROUP BY s.Sname, s.Snum, c.Cnum
HAVING COUNT(o.Onum) > 1
ORDER BY s.Sname;

			
			
			
			                           
---78. Write a query that extracts from the Customer table every customer assigned to a salesperson who currently has at least one other customer (besides the customer being selected) with orders in the Orders table.




SELECT c.Cname AS Customer_Name,
       c.Cnum  AS Customer_Number,
       c.Snum  AS Salesperson_Number
FROM Customers c
WHERE EXISTS ( SELECT 1
               FROM Customers c2
               JOIN Orders o
               ON c2.Cnum = o.Cnum
               WHERE c2.Snum = c.Snum
               AND c2.Cnum <> c.Cnum);
							 
---79. Write a query that selects all customers whose name begins with ‘C’.
SELECT Cname AS Customer_Name,
       Cnum  AS Customer_Number,
       City,
       Rating
       FROM Customers
       WHERE Cname LIKE 'C%';

---80. Write a query on the Customers table that will find the highest rating in each city. Put the output in this form:  for the city (city) the highest rating is : (rating).
SELECT 
    'for the city ' || City || ' the highest rating is : ' || MAX(Rating) AS Result
FROM Customers
GROUP BY City;



--81. Write a query that will produce the Snum values of all salespeople with orders currently in the Orders table without any repeats.

SELECT DISTINCT Snum
FROM Orders;


---82. Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customers’ names and numbers.
SELECT 
    rating, 
    customer_name, 
    customer_number
FROM customers
ORDER BY rating DESC;

----83. Find the average commission for salespeople in London.
SELECT snum,
       city,
       comm  = avg(comm)
       from salespeople
        where city = London ;

--------84. Find all orders credited to the same salesperson that services Hoffman.

SELECT O.*
FROM Orders O
WHERE O.Snum = (SELECT S.Snum
               FROM Salespeople S
               JOIN Customers C ON S.Snum = C.Snum
               WHERE C.Cname = 'Hoffman');


---85. Find all salespeople whose commission is in between 0.10 and 0.12 both inclusive.
SELECT * FROM Salespeople
WHERE Commission BETWEEN 0.10 AND 0.12;

---86. Write a query that will give you the names and cities of all salespeople in London with commission above 0.10
SELECT  sname ,
        city
				 FROM Salespeople
				 where city= 'London'
				             and comm > 0.10 ;
										 

				 
---87. What will be the output from the following query?
----------SELECT * FROM ORDERS WHERE (AMT < 1000 OR NOT (ODATE = 10/03/1996 AND CNUM > 2003));
SELECT *
FROM Orders
WHERE (Amt < 1000 
       OR NOT (Odate = '10-03-1996' AND Cnum > 2003));

--88. Write a query that selects each customer’s smallest order.
SELECT 
      O.Cnum, 
			O.Onum, 
			O.Amt
FROM Orders O
WHERE O.Amt = (
    SELECT MIN(O2.Amt)
    FROM Orders O2
    WHERE O2.Cnum = O.Cnum
);
      			
		
---89. Write a query that selects the first customer in alphabetical order whose name begins with ‘G’.
SELECT Cname
FROM Customers
WHERE Cname LIKE 'G%'
ORDER BY Cname ASC
FETCH FIRST 1 ROW ONLY;

---90. Write a query that counts the number of different not NULL city values in the Customers table.

SELECT COUNT(DISTINCT City) AS NumCities
FROM Customers
WHERE City IS NOT NULL;

---91. Find the average amount from the Orders table.
SELECT AVG (AMT)from Orders 

---92. What would be the output from the following query?
----SELECT*FROM ORDERS WHERE NOT  (Odate =10/03/1996 OR Snum>1006) AND amt. >=1500);


----93. Find all customers who are not located in San Jose & whose rating is above 200.
SELECT *
FROM Customers
WHERE City <> 'San Jose'
  AND Rating > 200;
	
----94. Give a simpler way to write this query:
---SELECT Snum, Sname, city, Comm FROM salespeople WHERE (Comm>0.12 and Comm <0.14);
SELECT Snum, Sname, City, Comm
FROM Salespeople
WHERE Comm BETWEEN 0.12 AND 0.14;

-----95. Evaluate the following query:
--SELECT * FROM orders WHERE NOT ((Odate = 10/03/1996 AND Snum>1002) OR amt>2000);



----96. Which salespeople attend to customers not in the city they have been assigned to?
SELECT DISTINCT S.Snum,
                S.Sname, 
                S.City AS SalespersonCity, 
                C.Cname,
                C.City AS CustomerCity
                FROM Salespeople S
                JOIN Customers C
							   ON S.Snum = C.Snum
                 WHERE S.City <> C.City;


----97. Which salespeople get commission greater than 0.11 and serving customers rated less than 250?

SELECT DISTINCT S.Snum, 
                S.Sname,
                S.City,
                S.Comm
                FROM Salespeople S
                JOIN Customers C ON S.Snum = C.Snum
                 WHERE S.Comm > 0.11
                     AND C.Rating < 250;


---98. Which salespeople have been assigned to the same city but get different commission percentage
SELECT DISTINCT S1.Snum, 
                S1.Sname,
								S1.City,
							  S1.Comm,
                S2.Snum AS OtherSnum,
								S2.Sname AS OtherSname, 
								S2.Comm AS OtherComm
FROM Salespeople S1
JOIN Salespeople S2 
     ON S1.City = S2.City 
    AND S1.Snum <> S2.Snum
    AND S1.Comm <> S2.Comm
ORDER BY S1.City;

----99. Which SELECT S.Snum, S.Sname, S.City, SUM(O.Amt * S.Comm) AS TotalCommissionEarned
FROM Salespeople S
JOIN Orders O ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname, S.City
ORDER BY TotalCommissionEarned DESC
FETCH FIRST 1 ROW ONLY

-------100.  Does the customer who has placed the maximum number of orders have the maximum rating?
SELECT 
    CASE 
        WHEN (
            SELECT Cnum
            FROM Orders
            GROUP BY Cnum
            ORDER BY COUNT(*) DESC
            LIMIT 1) = (
                          SELECT Cnum
                          FROM Customers
                          ORDER BY Rating DESC
                          LIMIT 1 )
        THEN 'Yes, the customer with the maximum number of orders also has the maximum rating.'
        ELSE 'No, the customer with the maximum number of orders does not have the maximum rating.'
    END AS Result;




------101.  Has the customer who has spent the largest amount of money been given the highest rating?

SELECT 
    CASE 
        WHEN (
            SELECT Cnum
            FROM Orders
            GROUP BY Cnum
            ORDER BY SUM(Amt) DESC
            LIMIT 1
        ) = (
            SELECT Cnum
            FROM Customers
            ORDER BY Rating DESC
            LIMIT 1
        )
        THEN 'Yes, the customer who spent the most has the highest rating.'
        ELSE 'No, the customer who spent the most does not have the highest rating.'
    END AS Result;


-------------102.  List all customers in descending order of customer rating.
SELECT Cnum, Cname, City, Rating
FROM Customers
ORDER BY Rating DESC;



---103.  On which days has Hoffman placed orders?
SELECT DISTINCT O.Odate
                FROM Orders O
                JOIN Customers C ON O.Cnum = C.Cnum
                 WHERE C.Cname = 'Hoffman';



---104.  Do all salespeople have different commissions?
SELECT 
    CASE 
        WHEN COUNT(*) = COUNT(DISTINCT Comm) 
        THEN 'Yes, all salespeople have different commissions.'
        ELSE 'No, some salespeople share the same commission.'
    END AS Result
FROM Salespeople;


----105.  Which salespeople have no orders between 10/03/1996 and 10/05/1996?

SELECT S.Snum, S.Sname, S.City, S.Comm
     FROM Salespeople S
       WHERE S.Snum NOT IN (SELECT O.Snum
			                      FROM Orders O
                            WHERE O.Odate BETWEEN '1996-03-10' AND '1996-03-05');

----106.  How many salespersons have succeeded in getting orders?
SELECT COUNT(DISTINCT Snum) AS NumSalespersonsWithOrders
         FROM Orders;


---107.  SELECT COUNT(DISTINCT Cnum) AS NumCustomersWithOrders
SELECT COUNT(DISTINCT Cnum) AS NumCustomersWithOrders
FROM Orders;


---108.  On which date has each salesperson booked an order of maximum value?

SELECT S.Snum,
       S.Sname,
			 O.Odate, 
			 O.Amt
FROM Salespeople S
JOIN Orders O ON S.Snum = O.Snum
WHERE O.Amt = (
    SELECT MAX(O2.Amt)
    FROM Orders O2
    WHERE O2.Snum = S.Snum);

---109.  Who is the most successful salesperson?

SELECT S.Snum, 
       S.Sname,
       S.City,
			 SUM(O.Amt * S.Comm) AS TotalCommission
FROM Salespeople S
JOIN Orders O   ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname, S.City
ORDER BY TotalCommission DESC
FETCH FIRST 1 ROW ONLY;


----110.  Who is the worst customer with respect to the company?

SELECT C.Cnum, C.Cname, C.City, SUM(O.Amt) AS TotalSpent
FROM Customers C
LEFT JOIN Orders O ON C.Cnum = O.Cnum
GROUP BY C.Cnum, C.Cname, C.City
ORDER BY TotalSpent ASC
FETCH FIRST 1 ROW ONLY;

----111.  Are all customers not having placed orders greater than 200 totally been serviced by salesperson Peel or Serres?




----112.  Which customers have the same rating?

SELECT C1.Cnum ,
       C1.Cname ,
       C2.Cnum ,
			 C2.Cname ,
       C1.Rating
FROM Customers C1
JOIN Customers C2 
  ON C1.Rating = C2.Rating 
 AND C1.Cnum < C2.Cnum
ORDER BY C1.Rating;


----113.  Find all orders greater than the average for October 4th.
SELECT Onum, Cnum, Snum, Amt, Odate
FROM Orders
WHERE Amt > (
    SELECT AVG(Amt)
    FROM Orders
    WHERE Odate = '1996-10-04'
);



----114.  Which customers have above average orders?
SELECT DISTINCT C.Cnum, 
                C.Cname,
								C.City, 
								O.Amt
              FROM Customers C
              JOIN Orders O ON C.Cnum = O.Cnum
              WHERE O.Amt > (
                              SELECT AVG(Amt)
                              FROM Orders  ) ;



-----115.  List all customers with ratings above San Jose’s average.
              SELECT Cnum, Cname, City, Rating
               FROM Customers
               WHERE Rating > (
               SELECT AVG(Rating)
                FROM Customers
              WHERE City = 'San Jose');

-----116.  Select the total amount in orders for each salesperson for which the total is greater than the amount of the largest order in the table.

SELECT S.Snum,
       S.Sname, 
			 SUM(O.Amt) AS TotalSales
FROM Salespeople S
JOIN Orders O ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname
HAVING SUM(O.Amt) > (SELECT MAX(Amt)
                      FROM Orders  );


----117.  Give names and numbers of all salesperson that have more than one customer.
SELECT  S.Snum
        s.sname
				count(cnum)
				FROM Salespeople S
JOIN Customers C ON S.Snum = C.Snum
GROUP BY S.Snum, S.Sname
HAVING COUNT(C.Cnum) > 1;



------118.  Select all salesperson by name and numbers who have customers in their city whom they don’s the service.
SELECT CNUM,
       S.Snum,
       s.sname,
			 C.CITY
			 FROM salespeople s
			 join customers c   ON s.snum=c.snum
       WHERE S.city =C.city ;
				
				
---------119.  Which customers’ rating should be lowered?
SELECT C.Cnum,
       C.Cname,
			 C.City, 
			 C.Rating, 
       COALESCE(SUM(O.Amt), 0) AS TotalSpent
       FROM Customers C
       LEFT JOIN Orders O ON C.Cnum = O.Cnum
GROUP BY C.Cnum, C.Cname, C.City, C.Rating
HAVING C.Rating > (SELECT AVG(Rating) FROM Customers)
   AND COALESCE(SUM(O.Amt), 0) < (SELECT AVG(Amt) FROM Orders);



--------120.  Is there a case for assigning a salesperson to Berlin?
SELECT Cnum, Cname, Rating
FROM Customers
WHERE City = 'Berlin';



--------121.  Is there any evidence linking the performance of a salesperson to commission that he or she is being paid?


-------122.  Dose the total amount in orders by customer in Rome and London exceeds the commission paid to salesperson in London and New York by more than 5 times?
SELECT 
    CASE 
        WHEN (
            (SELECT COALESCE(SUM(O.Amt),0)
             FROM Orders O
             JOIN Customers C ON O.Cnum = C.Cnum
             WHERE C.City IN ('Rome','London'))
                  > 5 * (SELECT COALESCE(SUM(O.Amt * S.Comm),0)
                    FROM Orders O
                 JOIN Salespeople S ON O.Snum = S.Snum
                 WHERE S.City IN ('London','New York'))  )
        THEN 'Yes, total orders by Rome and London customers exceed 5 times the commission of London and New York salespeople.'
        ELSE 'No, the condition is not satisfied.'
    END AS Result;


-------123.  Which is the date, order number, amt and city for each salesperson (byname) for   the maximum order he 


SELECT S.Sname ,
       O.Onum ,
       O.Odate ,
       O.Amt ,
       S.City 
       FROM Salespeople S
       JOIN Orders O ON S.Snum = O.Snum
     WHERE O.Amt = (SELECT MAX(O2.Amt)
                          FROM Orders O2
                      WHERE O2.Snum = S.Snum );






