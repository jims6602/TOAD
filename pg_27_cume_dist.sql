--analytic function cume_dist example
--Cumulative Distribution = the highest rank 
--for that row (cr)/number of rows 
-- cume_dist return the relative position within the range 0-1 of
-- a given value. 
-- here we have the distribution of salaries in marketing dept

select sales_name,sales_amount,
round(CUME_DIST() OVER (PARTITION BY sales_name ORDER BY sales_amount),1) c_dist
from company_sales;

/*The following example calculates the salary percentile for each employee
 in the sales division. In the example, 50% of salesmen have salaries 
 less than or equal to Martin and 100% are less than or equal to Allen.
*/
SELECT job, ename, sal, CUME_DIST() 
   OVER (PARTITION BY job ORDER BY sal) AS cume_dist
   FROM emp
   WHERE job LIKE 'SALES%';