select round(avg(sal),0) as "Department avg_sal" , deptno as department
 from emp
group by deptno
order by department desc;