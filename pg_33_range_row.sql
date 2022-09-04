-- range between  current row is logical sum value of current row 
-- that match value of the current row hence two rows have 
-- a value of 800 therefore sum value is 1600
select sales_name,sales_amount
,sum(sales_amount) over(order by sales_amount
range between 2 preceding and 2 following) as sliding_sales
from company_sales;

select sales_name,sales_amount
,sum(sales_amount) over(order by sales_amount
range between 2 preceding and 2 following) as sliding_sales
from cs2;


-- rows between is actual physical rows
select sales_name,sales_amount
,sum(sales_amount) over(order by sales_amount
rows between 1 preceding and 1 following) as sliding_sales
from company_sales;

select sales_name, sales_amount
from company_sales
where sales_amount=800;