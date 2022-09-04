/*The following example calculates the salary percentile for each 
employee in CLERK Position. 
For example, 67% of clerks have salaries less than or equal to Adams.
100% have salararies = or < than  Miller

*/
SELECT job, ename, sal, ROUND(CUME_DIST() 
   OVER (PARTITION BY job ORDER BY sal),2) AS cume_dist
   FROM emp
   WHERE job LIKE 'CL%';
   
 