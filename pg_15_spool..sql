spool mylist.lst

select round(avg(sal),2) as "Department_Avg_Sal",
deptno as Department
from emp
group by deptno
order by deptno desc;