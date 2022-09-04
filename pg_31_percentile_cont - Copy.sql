SELECT deptno,
   PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary DESC) 
      "Median cont",
   PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY salary DESC) 
      "Median disc"
   FROM employees GROUP BY deptno;