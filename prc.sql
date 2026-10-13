




CREATE TABLE cricket(
    match_no NUMBER PRIMARY KEY,
    team_a   VARCHAR2(50),
    team_b   VARCHAR2(50),
    winner   VARCHAR2(50)
);


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


 select * from cricket
 
 
 
 ----calculate how many times each team played maches)
 
 select team_name ,
 count(*) as cnt from(
 select team_a  as team_name from cricket
 union all
 select team_b  from cricket)
 group by team_name
    
 -----------no of maches won by each team 
 with matches_played as(select team_name ,
                         count(*) as cnt from( select team_a  as team_name from cricket
                                        union all
                                        select team_b  from cricket)
                             group by team_name ), 
 
matches_won as( select winner, count(*) as cnt
                  from cricket  
                group by winner )
select  matches_played.team_name,
       matches_played.cnt as total_matches,
       nvl(matches_won.cnt,0) mach_won,
			 matches_played.cnt - nvl(matches_won.cnt,0) matches_lose
 from matches_played full outer join matches_won 
         on matches_played.team_name =matches_won.winner;
				 
				 --------------------------
				 
				 
				 
				 
	WITH matches_played AS (
    SELECT team_name, COUNT(*) AS cnt
    FROM (
        SELECT team_a AS team_name FROM cricket
        UNION ALL
        SELECT team_b AS team_name FROM cricket
    )
    GROUP BY team_name
),
matches_won AS (
    SELECT winner AS team_name, COUNT(*) AS cnt
    FROM cricket
    GROUP BY winner
)
SELECT mp.team_name,
       mp.cnt AS total_matches,
       NVL(mw.cnt, 0) AS matches_won,
       mp.cnt - NVL(mw.cnt, 0) AS matches_lost
FROM matches_played mp
FULL OUTER JOIN matches_won mw
ON mp.team_name = mw.team_name;

----------------------
`
select* from employee5;

SELECT first_name,last_name,department, SALARY
FROM (
    SELECT first_name,last_name,department, SALARY,
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS rnk
    FROM employee5
) ranked_emp
WHERE rnk = 2;

select emp_id,salary
from( select emp_id,salary,
        DENSE_RANK () OVER (ORDER BY SALARY DESC) AS rnk
	      from employee5 ) ranked_emp
	where rnk=2;
	
	SELECT emp_id, first_name,last_name,department, salary
FROM employee5
WHERE salary = (
    SELECT MAX(salary)
    FROM employee5
    WHERE salary < (SELECT MAX(salary) FROM employee5)
);

	
	select *from employee5
	where salary<(select max(salary) from employee5);
	
	DROP TABLE EMPLOYEE1;
