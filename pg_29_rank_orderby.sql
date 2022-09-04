select sales_name, sum(sales_amount),
RANK() OVER(ORDER BY sum(sales_amount) desc) as rank
from company_sales
group  by sales_name
order by rank desc;

select sales_name, sum(sales_amount) as total_sales
from company_sales
group by sales_name
order by total_sales desc;