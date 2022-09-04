/*
The Oracle function PERCENTILE_DISC is a built in inverse 
distribution analytic function which works on discrete distribution model
 to get the median of a column value. It takes a numeric input which 
 is assumed as percentile rank and grouping specification as input. 
 It returns the least value whose percentile 
 is greater than or equal to the given percentile.

*/

select sales_name
,percentile_cont(0.5) within group(order by sales_amount) as P_cont
,percentile_disc(0.5) within group(order by sales_amount) as P_disc
,CUME_DIST() over (order by sales_name) "Cume_Dist"
from company_sales
group by sales_name;