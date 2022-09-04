select distinct sales_name,
sum(sales_amount) OVER(PARTITION BY sales_name) as Total_Sales,
min(sales_amount) OVER(PARTITION BY sales_name) as Min_Sales,
max(sales_amount) OVER(PARTITION BY sales_name) as Max_Sales
from company_sales
order by sales_name;


