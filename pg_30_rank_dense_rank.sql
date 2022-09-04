/*Let's assume we want to assign a sequential order, or rank, 
to people within a department based on salary,
 we might use the RANK function like this.
*/
SELECT empno,
       deptno,
       sal,
       RANK() OVER (PARTITION BY deptno ORDER BY sal) AS myrank
FROM   emp;

-- no skipping of numbers for ties
SELECT empno,
       deptno,
       sal,
       DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal) AS myrank
FROM   emp;
