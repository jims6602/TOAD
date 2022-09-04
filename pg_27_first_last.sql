/*The FIRST and LAST functions can be used to return the first or last value
 from an ordered sequence. Say we want to display the salary of each employee, 
 along with the lowest and highest 
 within their department we may use something like.
*/
SELECT empno,
       deptno,
       sal,
       MIN(sal) KEEP (DENSE_RANK FIRST ORDER BY sal)
        OVER (PARTITION BY deptno) AS lowest,
       MAX(sal) KEEP (DENSE_RANK LAST ORDER BY sal)
        OVER (PARTITION BY deptno) AS highest
FROM   emp
ORDER BY deptno, sal;