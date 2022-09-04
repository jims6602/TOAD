 --The following query computes the moving average of the sales amount 
 --between the current month and the previous three months:

SELECT
  EXTRACT (MONTH FROM SALES_DATE) MONTH ,SUM(sales_amount) AS month_amount,
   AVG(SUM(sales_amount)) OVER
    (ORDER BY EXTRACT(MONTH FROM SALES_DATE)
      ROWS BETWEEN 3 PRECEDING AND CURRENT ROW)
   AS moving_average
   FROM company_sales
   GROUP BY EXTRACT(MONTH FROM SALES_DATE)
   ORDER BY 1;
  
