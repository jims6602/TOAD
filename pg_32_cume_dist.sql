--analytic function cume_dist example
--Cumulative Distribution = the highest rank 
--for that row (cr)/number of rows 
-- cume_dist return the relative position within the range 0-1 of
-- a given value. 
-- here we have the distribution of sales_amount by salesperson

select sales_name,sales_amount,
round(CUME_DIST() OVER (PARTITION BY sales_name ORDER BY sales_amount),1) c_dist
from company_sales;
