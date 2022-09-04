--analytic function cume_dist example
--Cumulative Distribution = the highest rank 
--for that row (cr)/number of rows 
-- cume_dist return the relative position within the range 0-1 of
-- a given value. 
-- here we have the distribution of sales_amount by salesperson

select DEPTNO,sal,
round(CUME_DIST() 
OVER (PARTITION BY DEPTNO ORDER BY SAL),2) c_dist
from EMP;
