-- the percentille_cont/dist
/*PERCENTILE_CONT and PERCENTILE_DISC may return different results.
PERCENTILE_CONT returns a computed result after doing linear interpolation. 
PERCENTILE_DISC simply returns a value from the set of values that are
 aggregated over (it uses the cume_dist function).
  When the percentile value is 0.5, as in this example,
 PERCENTILE_CONT returns the average of the two middle values for groups 
 with even number of elements, whereas PERCENTILE_DISC returns the value 
 of the first one among the two middle values. 
 For aggregate groups for the EMP table odd number of elements, 
  both functions return the value of the middle element.

Analytic Example dept 30 has 6 values hence the middle two (1500 and 1250) 
are avg for _cont and the _disc the first one of the middle two is chosen.
 */
SELECT deptno,
   ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sal DESC),0) 
      "Median cont SAL",
   ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY sal DESC),0)
      "Median disc SAL"
   FROM emp GROUP BY deptno;
   
   BREAK ON DEPTNO SKIP 1
   
   select DEPTNO,sal,
round(CUME_DIST() 
OVER (PARTITION BY DEPTNO ORDER BY SAL),2) c_dist
from EMP
where deptno in (20,30);
