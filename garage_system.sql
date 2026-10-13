create Table Customer(
  CID NUMBER (10) primary key,
	CNAME VARCHAR2 (20),
	CADD VARCHAR2 (20),
	C_CONTACT NUMBER (10),
	C_CREDITDAYS NUMBER(10),
	CJ_DATE DATE,
	SEX VARCHAR2(20)
	);
	
INSERT INTO CUSTOMER VALUES(1001,'Cyona blank','NEW YORK',1235684,20,TO_DATE('20-Jan-11','dd-mon-yy'),'FEMALE');
INSERT INTO CUSTOMER VALUES(1002,'JOHAN SMITH','NEW JERSI',1341684,20,TO_DATE('21-FEB-11','dd-mon-yy'),'MALE');
INSERT INTO CUSTOMER VALUES(1003,'JORDAN WOOD','PRAG',1805184,20,TO_DATE('22-Mar-11','dd-mon-yy'),'MALE');
INSERT INTO CUSTOMER VALUES(1004,'CHRISTNA','MANHATTON',1125684,31,TO_DATE('23-Apr-13','dd-mon-yy'),'FEMALE');
INSERT INTO CUSTOMER VALUES(1005,'TOM HILL','LONDON',1239284,10,TO_DATE('25-Jun-15','dd-mon-yy'),'MALE');
INSERT INTO CUSTOMER VALUES(1006,'KAMILA JOSEF','PARIS',12568,09,TO_DATE('28-Jul-11','dd-mon-yy'),'FEMALE');
INSERT INTO CUSTOMER VALUES(1007,'ANDRU SYMON','TAXES',125654,15,TO_DATE('01-Apr-16','dd-mon-yy'),'MALE');
INSERT INTO CUSTOMER VALUES(1008,'SANJU SAMSUNG','NEW YORK',12346341,04,TO_DATE('20-Jan-16','dd-mon-yy'),'MALE');

select * from Customer

------Vendors Table

create table Vendors 
(
VID number (10) primary key,
VNAME VARCHAR2 (20),
VADD VARCHAR2 (20),
VCONTACT number(10),
VCREDITDAYS number(10), 
VJDATES date
);

insert into Vendors (VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJDATES)
VALUES(2001,'KIRAN PATIL','PUNE',20535535,20,TO_DATE('20-Jan-10','dd-mon-yy') );
insert into Vendors (VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJDATES)
VALUES(2002,'prakash jain','MUMBAI',2063564,10,TO_DATE('5-Nov-11','dd-mon-yy') );
insert into Vendors (VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJDATES)
VALUES(2003,'SWAPNIL THETE','NASHIK',25355352,15,TO_DATE('18-Mar-10','dd-mon-yy') );
insert into Vendors (VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJDATES)
VALUES(2004,'AMOL SHINDE','SATARA',23674776,18,TO_DATE('07-Apr-15','dd-mon-yy') );
insert into Vendors (VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJDATES)
VALUES(2005,'KARAN SINTRE','BULDHANA',256756,30,TO_DATE('22-Apr-09','dd-mon-yy') );
insert into Vendors (VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJDATES)
VALUES(2006,'RAM KULKARNI','OSMANABAD',20367454,21,TO_DATE('09-Jul-10','dd-mon-yy') );
insert into Vendors (VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJDATES)
VALUES(2007,'KIRAN PATIL','PUNE',20535535,20,TO_DATE('20-Jan-10','dd-mon-yy') );


select * from  Vendors


---------------------------
DROP table Employee 
create table Employee (
EID NUMBER (10)PRIMARY KEY,
ENAME VARCHAR2 (20),
EADD VARCHAR2 (20),
EJOB VARCHAR2 (20),
ECONTACT NUMBER(15),
ESAL NUMBER(10),
EDOJ DATE,
EDOL DATE
);

TO_DATE('09-JUL-10','DD-MON-YY')

INSERT INTO EMPLOYEE VALUES (3001,'STVEN KING','PAINTER','NEW YORK',10367454,1200,TO_DATE('09-JUL-10','DD-MON-YY'),NULL); 
INSERT INTO EMPLOYEE VALUES (3002,'DAVID AUSTIN','FITTER','MAN HATON',10367434,1100,TO_DATE('19-AUG-10','DD-MON-YY'),NULL); 
INSERT INTO EMPLOYEE VALUES (3003,'BRUCE ERNST','MECHANIC','NEW JERCY',10367264,2200,TO_DATE('09-JUL-10','DD-MON-YY'),NULL); 
INSERT INTO EMPLOYEE VALUES (3004,'LUIS POPP','MECHANIC','NEW JERCYK',10367264,1200,TO_DATE('08-SEP-10','DD-MON-YY'),TO_DATE('06-SEP-10','DD-MON-YY')); 
INSERT INTO EMPLOYEE VALUES (3005,'SHERI GOMES','FITTER','PARIS',10327264,1200,TO_DATE('19-OCT-09','DD-MON-YY'),TO_DATE('01-AUG-10','DD-MON-YY'));
INSERT INTO EMPLOYEE VALUES (3000,'JAMES PHILLIP','FITTER','PARIS',10322264,1200,TO_DATE('19-OCT-09','DD-MON-YY'),NULL);


SELECT *FROM EMPLOYEE

DROP TABLE SPAREPART

CREATE TABLE SPAREPART (
SPID NUMBER (10)PRIMARY KEY,
SPNAME VARCHAR2(40),
SPRATE NUMBER(10),
SPUNIT VARCHAR2(20)
);

INSERT INTO SPAREPART VALUES (4001,'TWO WHEER TUBE',250,'NOS');
INSERT INTO SPAREPART VALUES (4002,'TWO WHEER ENGINE OIL',400,'LTRS');
INSERT INTO SPAREPART VALUES (4003,'TWO WHEER ENGINE OIL ',5000,'LTRS');
INSERT INTO SPAREPART VALUES (4004,'TWO WHEER CARBORATOR',680,'NOS');
INSERT INTO SPAREPART VALUES (4005,'TWO WHEER CLUCH WIRE',129,'MTRS');
INSERT INTO SPAREPART VALUES (4006,'TWO WHEER TAIL LIGHT',100,'NOS');
INSERT INTO SPAREPART VALUES (4007,'TWO WHEER INDICATORS',150,'NOS');
INSERT INTO SPAREPART VALUES (4008,'TWO WHEER GASKIT',1340,'NOS');
INSERT INTO SPAREPART VALUES (4009,'WHITE COLOUR',340,'LTRS');
INSERT INTO SPAREPART VALUES (4010,'BLACK COLOR',240,'LTRS');
INSERT INTO SPAREPART VALUES (4011,'TWO WHEER SIDE MIRROR',250,'NOS');
INSERT INTO SPAREPART VALUES (4012,'FOUR WHEER SIDE MIRROR',450,'NOS');
INSERT INTO SPAREPART VALUES (4013,'TWO WHEER SHCKUP',1320,'PAIR');
INSERT INTO SPAREPART VALUES (4014,'FOUR WHEER BUMPER',6000,'NOS');
INSERT INTO SPAREPART VALUES (4015,'FOUR WHEER FRONT GLASS',7000,'PCS');

SELECT * FROM  SPAREPART

--------------------------------------------------------------------------------
DROP TABLE PURCHESE

CREATE TABLE PURCHASE (
PID NUMBER (10) PRIMARY KEY,
VID NUMBER (10),
SPID NUMBER (10),
PQTY NUMBER (10),
SPRATE NUMBER (10,2),
SPGST NUMBER (10,2),
PDATE DATE,
TRANCOST NUMBER(10),
TOTAL NUMBER(10,2),
RCV_EID NUMBER(10,2),
foreign key (VID)references VENDORS (VID),
foreign key (SPID)references SPAREPART (SPID),
foreign key (RCV_EID)references EMPLOYEE(EID)  
);

INSERT INTO Purchase  VALUES (5001, 2001, 4001, 10, 250.00, 350.00, TO_DATE('2011-01-01','YYYY-MM-DD'), 1300.00, 4150.00, 3001);
INSERT INTO Purchase  VALUES (5002, 2002, 4002, 4, 400.00, 288.00, TO_DATE('2011-03-02','YYYY-MM-DD'), 100.00, 1988.00, 3001);
INSERT INTO Purchase  VALUES (5003, 2003, 4004, 8, 680.00, 761.60, TO_DATE('2011-06-12','YYYY-MM-DD'), 50.00, 6251.60, 3003);
INSERT INTO Purchase  VALUES (5004, 2004, 4005, 10, 129.00, 154.80, TO_DATE('2011-08-22','YYYY-MM-DD'), 125.00, 1569.80, 3004);
INSERT INTO Purchase  VALUES (5005, 2005, 4006, 20, 100.00, 300.00, TO_DATE('2011-09-07','YYYY-MM-DD'), 20.00, 2320.00, 3003);
INSERT INTO Purchase  VALUES (5006, 2006, 4007, 30, 150.00, 630.00, TO_DATE('2011-10-12','YYYY-MM-DD'), 60.00, 5190.00, 3000);
INSERT INTO Purchase  VALUES (5007, 2001, 4003, 20, 5000.00, 14000.00, TO_DATE('2011-09-07','YYYY-MM-DD'), 1000.00, 115000.00, 3000);
INSERT INTO Purchase  VALUES (5008, 2006, 4005, 1, 129.00, 15.48, TO_DATE('2011-10-12','YYYY-MM-DD'), 50.00, 194.48, 3005);
INSERT INTO Purchase  VALUES (5009, 2006, 4005, 1, 129.00, 15.48, TO_DATE('2011-10-15','YYYY-MM-DD'), 50.00, 194.48, 3005);
INSERT INTO Purchase  VALUES (5010, 2006, 4009, 5, 340.00, 238.00,TO_DATE( '2011-10-20','YYYY-MM-DD'), 0.00, 2938.00, 3005);

SELECT * FROM  PURCHASE

------------------------------------------
SER_DET Table
CREATE Table SER_DET (

    SID NUMBER(10) PRIMARY KEY,
    CID NUMBER (10),
    EID  NUMBER (10),
    SPID  NUMBER (10),
    TYP_VEH VARCHAR(20),
    VEH_NO VARCHAR(20),
    TYP_SER VARCHAR(50),
    SER_DATE DATE,
    QTY NUMBER(5, 2),
    SP_RATE NUMBER(10, 2),
    SP_AMT NUMBER(10, 2),
    SP_G DECIMAL(10, 2),
    SER_AMT DECIMAL(10, 2),
    COMM DECIMAL(10, 2),
    TOTAL DECIMAL(10, 2),
    FOREIGN KEY (CID) REFERENCES Customer(CID),
    FOREIGN KEY (EID) REFERENCES Employee(EID),
    FOREIGN KEY (SPID) REFERENCES SPAREPART(SPID)
);

INSERT INTO SER_DET VALUES (6001, 1001, 3001, 4001, 'TWO WHEELER', 'MH15CA3228', 'TUBE DAMAGED', TO_DATE('02-Jan-11', 'DD-Mon-YY'), 1, 250, 250, 35, 50, 0, 335);
INSERT INTO SER_DET VALUES (6002, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', TO_DATE('04-Mar-11', 'DD-Mon-YY'), 1, 400, 400, 52, 300, 50, 752);
INSERT INTO SER_DET VALUES (6003, 1003, 3004, 4005, 'TWO WHEELER', 'MH12PQ1313', 'CLUCH WIRE', TO_DATE('22-Aug-11', 'DD-Mon-YY'), 1, 129, 129, 0, 10, 0, 139);
INSERT INTO SER_DET VALUES (6004, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', TO_DATE('05-May-11', 'DD-Mon-YY'), 1, 400, 400, 52, 300, 50, 752);
INSERT INTO SER_DET VALUES (6005, 1004, 3001, 4009, 'TWO WHEELER', 'MH-14PA335', 'COLOR', TO_DATE('21-Oct-11', 'DD-Mon-YY'), 2.5, 340, 850, 119, 500, 150, 1469);
INSERT INTO SER_DET VALUES (6006, 1006, 3001, 4009, 'TWO WHEELER', 'MH-12WE334', 'COLOR', TO_DATE('01-Dec-11', 'DD-Mon-YY'), 2.5, 340, 850, 119, 500, 150, 1469);
INSERT INTO SER_DET VALUES (6007, 1007, 3001, 4001, 'FOUR WHEELER', 'MH17BB1345', 'TUBE DAMAGED', TO_DATE('01-Jan-12', 'DD-Mon-YY'), 1, 250, 250, 35, 150, 0, 435);



-----------------

SELECT*FROM SER_DET;

SELECT * FROM  PURCHASE;

SELECT * FROM  SPAREPART;

select * from  Vendors;

SELECT *FROM EMPLOYEE;

select * from Customer;



-------------------------------------

-----1 List all the customers serviced.
SELECT DISTINCT
      C.CID, 
			C.CNAME, 
			S.SID 
			C.CADD,
			C.C_CONTACT, 
			C_CREDITDAYS, 
			CJ_DATE, 
			SEX
			FROM Customer C
			JOIN SER_DET S
			ON C.CID=S.CID
			ORDER BY C.CID DESC
			



-----Q.2 Customers who are not serviced.

      SELECT  C.CID, 
			        C.CNAME, 
							C. CADD
							FROM Customer C
WHERE C.CID NOT IN (SELECT S.CID FROM SER_DET S);

			       
			

------Q.3 Employees who have not received the commission.
SELECT DISTINCT E.EID, E.ENAME 
FROM Employee E
WHERE E.EID NOT IN (
    SELECT S.EID 
    FROM SER_DET S 
    WHERE S.COMM > 0
);


---Q.4 Name the employee who have maximum Commission.
SELECT E.EID, 
      E.ENAME,
			 S.COMM
FROM Employee E
JOIN SER_DET S ON E.EID = S.EID
WHERE S.COMM = (SELECT MAX(COMM) 
                      FROM SER_DET);


-----Q.5 Show employee name and minimum commission amount received by an employee.

SELECT E.EID,
       E.ENAME,
			 S.COMM
FROM Employee E
JOIN SER_DET S ON E.EID = S.EID
WHERE S.COMM = ( SELECT MIN(COMM) 
                 FROM SER_DET);

------Q.6 Display the Middle record from any table.
SELECT * FROM Customer
ORDER BY CID
OFFSET (SELECT FLOOR(COUNT(*)/2) FROM Customer) ROWS
FETCH NEXT 1 ROWS ONLY;

-----Q.7 Display last 4 records of any table.
SELECT * FROM Customer
ORDER BY CID DESC
FETCH FIRST 4 ROWS ONLY;


--Q.8 Count the number of records without count function from any table.

SELECT MAX(ROWNUM) AS total_records
FROM Customer;

-----Q.9 Delete duplicate records from "Ser_det" table on cid.(note Please rollback after execution).

SELECT CID, 
       COUNT(*) AS cnt
       FROM SER_DET
       GROUP BY CID
       HAVING COUNT(*) > 1;
------Q.10 Show the name of Customer who have paid maximum amount 
SELECT C.CID,
       C.CNAME,
			 S.TOTAL
FROM Customer C
JOIN SER_DET S ON C.CID = S.CID
WHERE S.TOTAL = (
            SELECT MAX(TOTAL) 
            FROM SER_DET);


-------Q.11 Display Employees who are not currently working.
SELECT EID, ENAME, EJOB, EADD, ECONTACT, ESAL, EDOJ, EDOL
FROM Employee
WHERE EDOL IS NOT NULL;
------Q.12 How many customers serviced their two wheelers.
SELECT COUNT(DISTINCT CID) AS TwoWheeler_Customers
FROM SER_DET
WHERE TYP_VEH = 'TWO WHEELER';

-------Q.13 List the Purchased Items which are used for Customer Service with Unit of that Item.
SELECT DISTINCT P.SPNAME,
                P.SPUNIT
                FROM Parts P
                JOIN SER_DET S ON P.SPID = S.SPID;


---------Q.14 Customers who have Colored their vehicles.
SELECT DISTINCT   
               C.CID, 
               C.CNAME, 
							 C.CADD, 
							 C.C_CONTACT
               FROM Customer C
               JOIN SER_DET S ON C.CID = S.CID
               WHERE S.TYP_SER = 'COLOR';

-----Q.15 Find the annual income of each employee inclusive of Commission
SELECT E.EID, E.ENAME,
       NVL(E.ESAL,0)*12 + NVL(SUM(S.COMM),0) AS Annual_Income
       FROM Employee E
       LEFT JOIN SER_DET S  ON  E.EID = S.EID
GROUP BY E.EID, E.ENAME, E.ESAL;

---Q.16 Vendor Names who provides the engine oil.

SELECT DISTINCT V.VNAME
               FROM Vendors V
               JOIN Purchase P ON V.VID = P.VID
               JOIN SparePart SP ON P.SPID = SP.SPID
               WHERE SP.SPNAME LIKE '%ENGINE OIL%';



---Q.17 Total Cost to purchase the Color and name the color purchased.


SELECT DISTINCT SP.SPNAME AS Color_Name,
       (SELECT SUM(P.TOTAL)
        FROM Purchase P
        WHERE P.SPID = SP.SPID) AS Total_Cost
FROM SparePart SP
WHERE SP.SPNAME LIKE '%COLOR%';


-----Q.18 Purchased Items which are not used in "Ser_det".

SELECT DISTINCT SP.SPNAME,
                P.SPID
                FROM Purchase P
                JOIN SparePart SP ON P.SPID = SP.SPID
                WHERE P.SPID NOT IN (SELECT DISTINCT SPID FROM Ser_Det);

----Q.19 Spare Parts Not Purchased but existing in Sparepart


SELECT SP.SPNAME, 
       SP.SPID
       FROM SparePart SP
       WHERE SP.SPID NOT IN (SELECT DISTINCT SPID FROM Purchase);
			 
			 
---Q.20 Calculate the Profit/Loss of the Firm. consider one month salary of each employee for Calculation.
	SELECT SUM(TOTAL) AS Service_Income
				 FROM SER_DET;
			 
SELECT SUM(TOTAL) AS Purchase_Cost
FROM Purchase;		
 
SELECT SUM(ESAL) AS Monthly_Salary
FROM Employee;

SELECT 
    ( (SELECT SUM(TOTAL) FROM SER_DET) 
    - (SELECT SUM(TOTAL) FROM Purchase) 
    - (SELECT SUM(ESAL) FROM Employee) ) AS Profit_or_Loss
FROM dual;

			 

----Q.21 Specify the names of customers who have serviced their vehicles more than one time.
SELECT C.CID, 
       C.CNAME
       FROM Customer C
       JOIN SER_DET S 
			 ON C.CID = S.CID
     GROUP BY C.CID, C.CNAME
     HAVING COUNT(S.SID) > 1;

----Q.22 List the Items purchased from vendors locationwise.

SELECT V.VADD AS Vendor_Location,
       SP.SPNAME AS Item_Purchased,
       SUM(P.PQTY) AS Total_Quantity,
       SUM(P.TOTAL) AS Total_Cost
       FROM Purchase P
       JOIN Vendors V ON P.VID = V.VID
       JOIN SparePart SP ON P.SPID = SP.SPID
       GROUP BY V.VADD, SP.SPNAME
       ORDER BY V.VADD;

---Q.23 Display count of two wheeler and four wheeler from ser_details
SELECT TYP_VEH AS Vehicle_Type,
       COUNT(*) AS Vehicle_Count
FROM Ser_Det
GROUP BY TYP_VEH;


---Q24 Display name of customers who paid highest SPGST and for which item 
SELECT C.CNAME AS Customer_Name,
       SP.SPNAME AS Item_Name,
       S.SPG AS GST_Paid
       FROM Ser_Det S
       JOIN Customer C ON S.CID = C.CID
       JOIN SparePart SP ON S.SPID = SP.SPID
       WHERE S.SPG = (SELECT MAX(SPG) FROM Ser_Det);


---Q25 Display vendors name who have charged highest SPGST rate  for which item
SELECT V.VNAME AS Vendor_Name,
       SP.SPNAME AS Item_Name,
       P.SPGST AS GST_Charged
       FROM Purchase P
       JOIN Vendors V ON P.VID = V.VID
       JOIN SparePart SP ON P.SPID = SP.SPID
       WHERE P.SPGST = (SELECT MAX(SPGST) FROM Purchase);



---Q26   list name of item and employee name who have received item 

SELECT SP.SPNAME AS Item_Name,
       E.ENAME AS Employee_Name
       FROM Purchase P
       JOIN SparePart SP ON P.SPID = SP.SPID
       JOIN Employee E ON P.RCV_EID = E.EID;

--Q27 Display the Name and Vehicle Number of Customer who serviced his vehicle, And Name the Item used for Service, And specify the purchase date of that Item with his vendor and Item Unit and Location, And employee Name who serviced the vehicle. for Vehicle NUMBER "MH-14PA335".'

SELECT C.CNAME AS Customer_Name,
       S.VEH_NO AS Vehicle_Number,
       SP.SPNAME AS Item_Used,
       P.PDATE AS Purchase_Date,
       V.VNAME AS Vendor_Name,
       SP.SPUNIT AS Item_Unit,
       V.VADD AS Vendor_Location,
       E.ENAME AS Employee_Name
FROM Ser_Det S
JOIN Customer C ON S.CID = C.CID
JOIN SparePart SP ON S.SPID = SP.SPID
JOIN Purchase P ON S.SPID = P.SPID
JOIN Vendors V ON P.VID = V.VID
JOIN Employee E ON S.EID = E.EID
WHERE S.VEH_NO = 'MH-14PA335';



----Q28 who belong this vehicle  MH-14PA335" Display the customer name 
SELECT C.CNAME AS Customer_Name
       FROM Ser_Det S
       JOIN Customer C ON S.CID = C.CID
       WHERE S.VEH_NO = 'MH-14PA335';



----Q29 Display the name of customer who belongs to New York and when he /she service their  vehicle on which date    

SELECT C.CNAME AS Customer_Name,
       S.SER_DATE AS Service_Date
FROM Customer C
JOIN Ser_Det S ON C.CID = S.CID
WHERE C.CADD = 'NEW YORK';

---Q 30 from whom we have purchased items having maximum cost?
SELECT V.VNAME AS Vendor_Name,
       SP.SPNAME AS Item_Name,
       P.TOTAL AS Purchase_Cost
       FROM Purchase P
       JOIN Vendors V ON P.VID = V.VID
       JOIN SparePart SP ON P.SPID = SP.SPID
       WHERE P.TOTAL = (SELECT MAX(TOTAL) FROM Purchase);



---Q31 Display the names of employees who are not working as Mechanic and that employee done services.
SELECT DISTINCT 
              E.ENAME AS Employee_Name
              FROM Employee E
              JOIN Ser_Det S ON E.EID = S.EID
              WHERE E.EADD <> 'MECHANIC';

---Q32 Display the various jobs along with total number of employees in each job. The output should contain only those jobs with more than two employees.
		 
SELECT
       EADD AS Job,
       COUNT(*) AS Total_Employees
       FROM Employee
       GROUP BY EADD
       HAVING COUNT(*) > 2;


----Q33 Display the details of employees who done service  and give them rank according to their no. of services .

SELECT E.EID,
       E.ENAME AS Employee_Name,
       E.EADD AS Job,
       COUNT(SID) AS No_Of_Services,
       RANK() OVER (ORDER BY COUNT(SID) DESC) AS Service_Rank
       FROM Employee E
       JOIN Ser_Det S ON E.EID = S.EID
       GROUP BY E.EID, E.ENAME, E.EADD
       ORDER BY Service_Rank;


----Q 34 Display those employees who are working as Painter and fitter and who provide service and total count of service done by fitter and painter  
SELECT E.ENAME AS Employee_Name,
       E.EADD AS Job,
       COUNT(S.SID) AS No_Of_Services
FROM Employee E
JOIN Ser_Det S ON E.EID = S.EID
WHERE E.EADD IN ('PAINTER', 'FITTER')
GROUP BY E.ENAME, E.EADD
ORDER BY E.EADD, No_Of_Services DESC;

----Q35 Display employee salary and as per highest  salary provide Grade to employee 
SELECT E.ENAME AS Employee_Name,
       E.ESAL AS Salary,
       CASE
         WHEN E.ESAL = (SELECT MAX(ESAL) FROM Employee) THEN 'A'   -- Highest salary
         WHEN E.ESAL >= (SELECT MAX(ESAL) FROM Employee) * 0.75 THEN 'B'
         WHEN E.ESAL >= (SELECT MAX(ESAL) FROM Employee) * 0.50 THEN 'C'
         ELSE 'D'
        END AS Grade
        FROM Employee E
        ORDER BY Grade;


---Q36  display the 4th record of emp table without using group by and rowid

SELECT *FROM Employee
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY;



---Q37 Provide a commission 100 to employees who are not earning any commission.
CREATE TABLE Employees2 AS
SELECT EID,
       ENAME,
       EADD,
       ESAL,
       CASE 
         WHEN ECOMM IS NULL OR ECOMM = 0 THEN 100
         ELSE ECOMM
       END AS ECOMM
FROM Employee;

Q38 write a query that totals no. of services  for each day and place the results in descending order

SELECT SER_DATE AS Service_Date,
       COUNT(SID) AS Total_Services
       FROM Ser_Det
       GROUP BY SER_DATE
       ORDER BY Total_Services DESC;
			 
-----Q39 Display the service details of those customer who belong from same city 
SELECT C1.CNAME AS Customer1,
       C2.CNAME AS Customer2,
       C1.CADD AS City,
       S1.VEH_NO AS Vehicle1,
       S2.VEH_NO AS Vehicle2,
       S1.SER_DATE AS Service_Date1,
       S2.SER_DATE AS Service_Date2,
       SP1.SPNAME AS Item1,
       SP2.SPNAME AS Item2,
       E.ENAME AS Employee_Name
       FROM Customer C1
			 JOIN Ser_Det S1 ON C1.CID = S1.CID
			 JOIN Customer C2 ON C1.CADD = C2.CADD AND C1.CID < C2.CID
			 JOIN Ser_Det S2 ON C2.CID = S2.CID
			 JOIN SparePart SP1 ON S1.SPID = SP1.SPID
			 JOIN SparePart SP2 ON S2.SPID = SP2.SPID
			 JOIN Employee E ON S1.EID = E.EID
			 ORDER BY City, Customer1, Customer2;


----Q40 write a query join customers table to itself to find all pairs of customers service by a single employee

SELECT
       C1.CNAME AS Customer1,
       C2.CNAME AS Customer2,
       E.ENAME AS Employee_Name
       FROM Ser_Det S1
      JOIN Customer C1 ON S1.CID = C1.CID
      JOIN Ser_Det S2 ON S1.EID = S2.EID AND S1.CID < S2.CID
      JOIN Customer C2 ON S2.CID = C2.CID
      JOIN Employee E ON S1.EID = E.EID
      ORDER BY E.ENAME, Customer1, Customer2;

---  Q41 List each service number follow by name of the customer who made  that service
SELECT 
       S.SID AS Service_Number,
       C.CNAME AS Customer_Name
       FROM Ser_Det S
       JOIN Customer C ON S.CID = C.CID
       ORDER BY S.SID;

----Q42 Write a query to get details of employee and provide rating on basis of  maximum services provide by employee  .Note (rating should be like A,B,C,D)

SELECT E.EID,
       E.ENAME AS Employee_Name,
       E.EADD AS Job,
       COUNT(S.SID) AS No_Of_Services,
       CASE
         WHEN COUNT(S.SID) = (SELECT MAX(COUNT(S2.SID)) 
                              FROM Ser_Det S2 
                              GROUP BY S2.EID) THEN 'A'   -- Highest service count
         WHEN COUNT(S.SID) >= (SELECT MAX(COUNT(S2.SID)) 
                               FROM Ser_Det S2 
                               GROUP BY S2.EID) * 0.75 THEN 'B'
         WHEN COUNT(S.SID) >= (SELECT MAX(COUNT(S2.SID)) 
                               FROM Ser_Det S2 
                               GROUP BY S2.EID) * 0.50 THEN 'C'
         ELSE 'D'
       END AS Rating
FROM Employee E
JOIN Ser_Det S ON E.EID = S.EID
GROUP BY E.EID, E.ENAME, E.EADD
ORDER BY Rating;



------Q43 Write a query to get maximum service amount of each customer with their customer details ?

SELECT 
       C.CID,
       C.CNAME AS Customer_Name,
       C.CADD AS City,
       C.C_CONTACT ,
       MAX(S.SER_AMT) AS Max_Service_Amount
			 FROM Customer C
			 JOIN Ser_Det S ON C.CID = S.CID
			 GROUP BY C.CID, C.CNAME, C.CADD, C.C_CONTACT
			 ORDER BY Max_Service_Amount DESC;


----Q45 From which location sparpart purchased  with highest cost ?

SELECT SPLOC AS Location,
       SPNAME AS SparePart_Name,
       SPCOST AS Cost
FROM SparePart
WHERE SPCOST = (SELECT MAX(SPCOST) FROM SparePart);



----Q46 Get the details of employee with their service details who has salary is null

SELECT E.EID,
       E.ENAME AS Employee_Name,
       E.EADD AS Job,
       E.ESAL AS Salary,
       S.SID AS Service_ID,
       S.SER_DATE AS Service_Date,
       S.VEH_NO AS Vehicle_No,
       S.SER_AMT AS Service_Amount
FROM Employee E
JOIN Ser_Det S ON E.EID = S.EID
WHERE E.ESAL IS NULL
ORDER BY E.ENAME, S.SER_DATE;



------Q47 find the sum of purchase location wise 

SELECT V.VADD AS Vendor_Location,
       SUM(P.TOTAL) AS Total_Purchase
FROM PURCHASE P
JOIN VENDORS V ON P.VID = V.VID
GROUP BY V.VADD
ORDER BY V.VADD;





-----Q48 write a query sum of purchase amount in word location wise ?

SELECT V.VADD AS Vendor_Location,
       SUM(P.TOTAL) AS Total_Purchase,
       TO_CHAR(TO_DATE(SUM(P.TOTAL),'J'),'JSP') AS Total_Purchase_In_Words9
FROM PURCHASE P
JOIN VENDORS V ON P.VID = V.VID
GROUP BY V.VADD
ORDER BY V.VADD;



-------





-----Q49 Has the customer who has spent the largest amount money has been give highest rating

SELECT C.CID,
       C.CNAME AS Customer_Name,
       SUM(S.TOTAL) AS Total_Spent,
       C.C_CREDITDAYS AS Credit_Days
FROM CUSTOMER C
JOIN SER_DET S ON C.CID = S.CID
GROUP BY C.CID, C.CNAME, C.C_CREDITDAYS
ORDER BY SUM(S.TOTAL) DESC;





----Q50 select the total amount in service for each customer for whichthe total is greater than the amount of the largest service amount in the table

SELECT C.CID,
       C.CNAME AS Customer_Name,
       SUM(S.SER_AMT) AS Total_Service_Amount
       FROM Customer C
       JOIN Ser_Det S ON C.CID = S.CID
       GROUP BY C.CID, C.CNAME
       HAVING SUM(S.SER_AMT) > (SELECT MAX(SER_AMT) FROM Ser_Det)
       ORDER BY Total_Service_Amount DESC;



----Q51  List the customer name and sparepart name used for their vehicle and  vehicle type

SELECT C.CNAME AS Customer_Name,
       SP.SPNAME AS SparePart_Name,
       V.VEH_NO AS Vehicle_No,
       V.VEH_TYPE AS Vehicle_Type
FROM Customer C
JOIN Ser_Det S ON C.CID = S.CID
JOIN SparePart SP ON S.SPID = SP.SPID
JOIN Vehicle V ON S.VEH_NO = V.VEH_NO
ORDER BY C.CNAME;






---Q52 Write a query to get spname ,ename,cname quantity ,rate ,service amount for record exist in service table
SELECT SP.SPNAME ,  
       E.ENAME ,      
       C.CNAME ,      
       S.QTY ,       
       S.RATE ,       
       S.SER_AMT,   
FROM Ser_Det S
JOIN SparePart SP ON S.SPID = SP.SPID
JOIN Employee E   ON S.EID  = E.EID
JOIN Customer C   ON S.CID  = C.CID
ORDER BY C.CNAME, SP.SPNAME;


------Q53 specify the vehicles owners who’s tube damaged.
SELECT C.CNAME AS Customer_Name,
       V.VEH_NO AS Vehicle_No,
       V.VEH_TYPE AS Vehicle_Type
FROM Customer C
JOIN Ser_Det S ON C.CID = S.CID
JOIN SparePart SP ON S.SPID = SP.SPID
JOIN Vehicle V ON S.VEH_NO = V.VEH_NO
WHERE SP.SPNAME = 'TWO WHEEL TUBE';


---Q.54 Specify the details who have taken full service.


SELECT C.CID,
       C.CNAME AS Customer_Name,
       C.CADD AS City,
       C.CPHNO AS Phone,
       V.VEH_NO AS Vehicle_No,
       V.VEH_TYPE AS Vehicle_Type,
       S.SER_DATE AS Service_Date,
       S.SER_AMT AS Service_Amount,
       E.ENAME AS Employee_Name,
       SP.SPNAME AS Service_Name
FROM Customer C
JOIN Ser_Det S ON C.CID = S.CID
JOIN SparePart SP ON S.SPID = SP.SPID
JOIN Vehicle V ON S.VEH_NO = V.VEH_NO
JOIN Employee E ON S.EID = E.EID
WHERE SP.SPNAME = 'FULL SERVICING'
ORDER BY C.CNAME;



-----Q.55 Select the employees who have not worked yet and left the job.

SELECT E.EID,
       E.ENAME AS Employee_Name,
       E.EADD  AS Job,
       E.ESAL  AS Salary
FROM Employee E
WHERE E.EID NOT IN (SELECT DISTINCT S.EID FROM Ser_Det S)
  AND E.EADD = 'LEFT JOB';



---Q.56  Select employee who have worked first ever.
SELECT E.EID,
       E.ENAME AS Employee_Name,
       E.EADD  AS Job,
       S.SER_DATE AS First_Service_Date,
       S.SID AS Service_ID
       FROM Employee E
       JOIN Ser_Det S ON E.EID = S.EID
        WHERE S.SER_DATE = (SELECT MIN(SER_DATE) FROM Ser_Det);
				
				




--Q.57 Display all records falling in odd date

SELECT S.SID AS Service_ID,
       S.SER_DATE AS Service_Date,
       C.CNAME AS Customer_Name,
       E.ENAME AS Employee_Name,
       S.SER_AMT AS Service_Amount
       FROM Ser_Det S
       JOIN Customer C ON S.CID = C.CID
       JOIN Employee E ON S.EID = E.EID
       JOIN Vendors V ON S.VEH_NO = V.
      WHERE MOD(EXTRACT(DAY FROM S.SER_DATE), 2) = 1 
       ORDER BY S.SER_DATE;




--Q.58 Display all records falling in even date
SELECT S.SID        AS Service_ID,
       S.SER_DATE   AS Service_Date,
       C.CNAME      AS Customer_Name,
       E.ENAME      AS Employee_Name,
       S.VEH_NO     AS Vehicle_No,
       S.TYP_VEH    AS Vehicle_Type,
       S.TYP_SER    AS Service_Type,
       S.SER_AMT    AS Service_Amount,
       S.TOTAL      AS Total_Bill
FROM SER_DET S
JOIN CUSTOMER C ON S.CID = C.CID
JOIN EMPLOYEE E ON S.EID = E.EID
WHERE MOD(EXTRACT(DAY FROM S.SER_DATE), 2) = 0
ORDER BY S.SER_DATE;


--Q.59 Display the vendors whose material is not yet used.

SELECT V.VID,
       V.VNAME AS Vendor_Name,
       V.VADD  AS Vendor_Address,
       V.VCONTACT AS Contact
FROM VENDORS V
WHERE V.VID NOT IN (
    SELECT DISTINCT P.VID
    FROM PURCHASE P
    JOIN SER_DET S ON P.SPID = S.SPID );




--Q.60 Difference between purchase date and used date of spare part.
  SELECT SP.SPNAME AS SparePart_Name,
       P.PDATE AS Purchase_Date,
       S.SER_DATE AS Used_Date,
       S.SER_DATE - P.PDATE AS Days_Difference
FROM PURCHASE P
JOIN SER_DET S ON P.SPID = S.SPID
JOIN SPAREPART SP ON SP.SPID = S.SPID
ORDER BY Days_Difference DESC;





.
