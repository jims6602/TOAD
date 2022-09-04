select cc.cust_name, sum(c.sales_amount),
rank() over (order by sum(c.sales_amount) desc) as rank_id
from company_sales c, company_customers cc
where c.cust_id = cc.cust_id
group by cc.cust_name
order by rank_id desc;

select * from
(select cc.cust_name, sum(c.sales_amount),
rank() over (order by sum(c.sales_amount) desc) as rank_id
from company_sales c, company_customers cc
where c.cust_id = cc.cust_id
group by cc.cust_name)
order by rank_id desc;