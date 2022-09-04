-- here we do a 6 month average of sales  for the company in 2010 and 2011

SELECT TRUNC(Sales_Date,'MM') Month, SUM(sales_Amount) Sales,
   ROUND((AVG(SUM(sales_Amount)) OVER (ORDER BY TRUNC(Sales_Date,'MM')
   ROWS 5 PRECEDING))) SIX_MO_AVG_ROWS,

   ROUND((AVG(SUM(sales_Amount)) OVER (ORDER BY TRUNC(Sales_Date,'MM')
   RANGE 5 PRECEDING))) SIX_MO_AVG_RANGE
FROM company_sales
WHERE Sales_Date BETWEEN '01-FEB-12' AND '01-JUL-12'
GROUP BY TRUNC(Sales_Date,'MM')
ORDER BY TRUNC(Sales_Date,'MM');


