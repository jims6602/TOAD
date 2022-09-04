-- here we do a 6 month average of sales  for the company in 2010 and 2011

SELECT TRUNC(Sale_Date,'MM') Month, SUM(Amount) Sales,
   ROUND((AVG(SUM(Amount)) OVER (ORDER BY TRUNC(Sale_Date,'MM')
   ROWS 5 PRECEDING)),2) SIX_MO_AVG_ROWS,

   ROUND((AVG(SUM(Amount)) OVER (ORDER BY TRUNC(Sale_Date,'MM')
   RANGE 5 PRECEDING)),2) SIX_MO_AVG_RANGE
FROM ELLView
WHERE Sale_Date BETWEEN '01-JAN-10' AND '31-DEC-11'
GROUP BY TRUNC(Sale_Date,'MM')
ORDER BY TRUNC(Sale_Date,'MM');
