 CREATE TABLE EMP4 (
    EMPNO    NUMBER(4) PRIMARY KEY,
    ENAME    VARCHAR2(20),
    JOB      VARCHAR2(20),
    MGR      NUMBER(4),
    HIREDATE DATE,
    SAL      NUMBER(7,2),
    COMM     NUMBER(7,2),
    DEPTNO   NUMBER(2)
);
INSERT INTO EMP4 VALUES (7839, 'KING',   'PRESIDENT', NULL, TO_DATE('17-NOV-81','DD-MON-RR'), 5100, NULL, 10);
INSERT INTO EMP4 VALUES (7698, 'BLAKE',  'MANAGER',   7839, TO_DATE('01-MAY-81','DD-MON-RR'), 2850, NULL, 30);
INSERT INTO EMP4 VALUES (7782, 'CLARK',  'MANAGER',   7839, TO_DATE('09-JUN-81','DD-MON-RR'), 2550, NULL, 10);
INSERT INTO EMP4 VALUES (7566, 'JONES',  'MANAGER',   7839, TO_DATE('02-APR-81','DD-MON-RR'), 2975, NULL, 20);
INSERT INTO EMP4 VALUES (7788, 'SCOTT',  'ANALYST',   7566, TO_DATE('19-APR-87','DD-MON-RR'), 3000, NULL, 20);
INSERT INTO EMP4 VALUES (7902, 'FORD',   'ANALYST',   7566, TO_DATE('03-DEC-81','DD-MON-RR'), 3000, NULL, 20);
INSERT INTO EMP4 VALUES (7369, 'SMITH',  'CLERK',     7902, TO_DATE('17-DEC-80','DD-MON-RR'), 800,  NULL, 20);
INSERT INTO EMP4 VALUES (7499, 'ALLEN',  'SALESMAN',  7698, TO_DATE('20-FEB-81','DD-MON-RR'), 1600, 300,  30);
INSERT INTO EMP4 VALUES (7521, 'WARD',   'SALESMAN',  7698, TO_DATE('22-FEB-81','DD-MON-RR'), 1250, 500,  30);
INSERT INTO EMP4 VALUES (7654, 'MARTIN', 'SALESMAN',  7698, TO_DATE('28-SEP-81','DD-MON-RR'), 1250, 1400, 30);
INSERT INTO EMP4 VALUES (7844, 'TURNER', 'SALESMAN',  7698, TO_DATE('08-SEP-81','DD-MON-RR'), 1500, 0,    30);
INSERT INTO EMP4 VALUES (7876, 'ADAMS',  'CLERK',     7788, TO_DATE('23-MAY-87','DD-MON-RR'), 1100, NULL, 20);
INSERT INTO EMP4 VALUES (7900, 'JAMES',  'CLERK',     7698, TO_DATE('03-DEC-81','DD-MON-RR'), 950,  NULL, 30);
INSERT INTO EMP4 VALUES (7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-JAN-82','DD-MON-RR'), 1400, NULL, 10);


select *from emp4



--------employee getting salary greter than avg sallary

select * from emp4 a,
(select deptno, avg(sal) as av_sal from emp4  group by deptno )b
where a. deptno  = b. deptno
and  a. sal> av_sal ; 


select * from emp4 a
where a. sal > (select  avg(b.sal) from emp4b where a.deptno= b.deptno);


select * from ( select empno,ename, job,hiredate,sal,comm,deptno,
avg(sal)over (partition by deptno) as avg_sal
from emp4)
where sal > avg_sal


INSERT INTO cricket VALUES (1,  'WESTINDIES',  'SRILANKA',    'WESTINDIES');
INSERT INTO cricket VALUES (2,  'INDIA',       'SRILANKA',    'INDIA');
INSERT INTO cricket VALUES (3,  'AUSTRALIA',   'SRILANKA',    'AUSTRALIA');
INSERT INTO cricket VALUES (4,  'WESTINDIES',  'SRILANKA',    'SRILANKA');
INSERT INTO cricket VALUES (5,  'AUSTRALIA',   'INDIA',       'AUSTRALIA');
INSERT INTO cricket VALUES (6,  'WESTINDIES',  'SRILANKA',    'WESTINDIES');
INSERT INTO cricket VALUES (7,  'INDIA',       'WESTINDIES',  'WESTINDIES');
INSERT INTO cricket VALUES (8,  'WESTINDIES',  'AUSTRALIA',   'AUSTRALIA');
INSERT INTO cricket VALUES (9,  'WESTINDIES',  'INDIA',       'INDIA');
INSERT INTO cricket VALUES (10, 'AUSTRALIA',   'WESTINDIES',  'WESTINDIES');
INSERT INTO cricket VALUES (11, 'WESTINDIES',  'SRILANKA',    'WESTINDIES');
INSERT INTO cricket VALUES (12, 'INDIA',       'AUSTRALIA',   'INDIA');
INSERT INTO cricket VALUES (13, 'SRILANKA',    'NEWZEALAND',  'SRILANKA');
INSERT INTO cricket VALUES (14, 'NEWZEALAND',  'INDIA',       'INDIA');



CREATE TABLE cricket(
    match_no NUMBER PRIMARY KEY,
    team_a   VARCHAR2(50),
    team_b   VARCHAR2(50),
    winner   VARCHAR2(50)
);


 select * from cricket
 
 ----calculate each team played maches)
 select team_name ,count(*) from(
 select team_a  as team_name from cricket
 union all
 select team_b  from cricket)
 group by team_name
 
 
 
SELECT * from TAB1;


SELECT   * from TAB2;



create table TAB1(
C1 VARCHAR2 (5) );




create table TAB2(
C1 VARCHAR2 (5) );

INSERT INTO TAB1 VALUES('A'); 
INSERT INTO TAB1 VALUES('B'); 
INSERT INTO TAB1 VALUES('C'); 
INSERT INTO TAB1 VALUES('D'); 
INSERT INTO TAB1 VALUES('E'); 
INSERT INTO TAB1 VALUES('F'); 


INSERT INTO TAB2 VALUES('A'); 
INSERT INTO TAB2 VALUES('C'); 
INSERT INTO TAB2 VALUES('E'); 
INSERT INTO TAB2 VALUES('G');




SELECT * FROM TAB1 WHERE C1 NOT IN (FROM SELECT * TAB2);


SELECT * FROM TAB1 WHERE NOT EXISTS (SELECT 1 FROM TAB2 WHERE TAB2.C1=TAB1.C1);

SELECT* FROM TAB1
MINUS
SELECT* FROM TAB2 ;
 


SELECT C1 FROM TAB1
WHERE (SELECT COUNT (1)FROM TAB2 WHERE TAB2.C1=TAB1.C1)=0 ;


SELECT * FROM TAB1
 JOIN TAB2
 ON (TAB1.C1=TAB2.C1)
WHERE TAB2.C1 IS NOT NULL
 

SELECT ROWNUM, 'WELCOME'
FROM DUAL


CONNECT BY LEVEL <=LENGTH('WELCOME');


select ROWNUM,
SUBSTR (S, ROWNUM,1) OUTPUT1,
SUBSTR (S, ROWNUM*-1, 1) OUTPUT2,
SUBSTR (S,1,ROWNUM) OUTPUT3,
SUBSTR (S, ROWNUM) OUTPUT4,
RPAD(' ', ROWNUM,' ')||SUBSTR(S,ROWNUM) OUTPUT5,
RPAD(' ',LENGTH(S)+1-ROWNUM ,' ')||SUBSTR(S,1,ROWNUM) OUTPUT6
FROM DUAL , (SELECT 'WELCOME' S FROM DUAL)
CONNECT BY LEVEL<=LENGTH (S);


select ROWNUM,
RPAD(' ', ROWNUM,' ')||SUBSTR(S,ROWNUM) OUTPUT5
FROM DUAL , (SELECT 'WELCOME' S FROM DUAL)
CONNECT BY LEVEL<=LENGTH (S);
RPAD(' ',LENGTH(S+1-ROWNUM) ,' ')||SUBSTR(S,1,ROWNUM) OUTPUT6


with d as (select 'siva.k.academy@gmail.com'm
from dual),
ds as (select substr(m,1,instr(m,'@')-1)n,
     substr(m,1,instr(m,'@')+1)d
		 from d)
		 from ds
		
drop table CITY;

create table  CITY
(
     CITY_id NUMBER (10),
     CITY_NAME VARCHAR2 (20) );
		 
		 insert into city values (1,'dilhi');
		 insert into city values (2,'chinai');
			 insert into city values (3,'mum');
			  insert into city values (4,'kolkata');

select* from city a,city b
where a. city_id < b. city_id


drop table em
 
create table em(
                 EMNO NUMBER (10),
								 ENAME VARCHAR(20),
								 MGR NUMBER(10) );
 
insert into em values(7369,'smith',7902 );
insert into em values(7499,'allen',7698 );
insert into em values(7369,'ward',7698 );
insert into em values(7566,'jones',7839 );
insert into em values(7654,'martin',7698 );
insert into em values(7698,'blake',7839);
insert into em values(7782,'clark',7839 );
insert into em values(7788,'scott',7902 );
insert into em values(7839,'king',null );
insert into em values(7844,'turner',7698 );
insert into em values(7876,'adam',7788 );
insert into em values(7900,'jems',7698 );
insert into em values(7902,'ford',7566 );
insert into em values(7934,'miller',7782 );


---------
select *from em

select emno,ename as name_of_reporter 
from em,
(SELECT 
    MGR AS Manager_ID,
    COUNT(*) AS Number_of_Reports,
    LISTAGG(ENAME, ', ') WITHIN GROUP (ORDER BY ENAME) AS Employees_Reporting
FROM em
GROUP BY  MGR)r
where e. emno= r. mgr(+);


----------------------------------------------

SELECT 
    e.EMNO,
    e.ENAME AS name_of_reporter,
    r.Number_of_Reports,
    r.Employees_Reporting
FROM 
    em e
 JOIN (
    SELECT 
        MGR AS Manager_ID,
        COUNT(*) AS Number_of_Reports,
        LISTAGG(ENAME, ', ') WITHIN GROUP (ORDER BY ENAME) AS Employees_Reporting
    FROM em
    GROUP BY MGR 
		             ) r
ON e.EMNO = r.Manager_ID;

