-- the following query returns the rank 
--for a $1000 salary among the employee salaries:
--
SELECT  RANK(1000) WITHIN GROUP 
   (ORDER BY sal DESC) "Rank of 1000" 
   FROM emp;
