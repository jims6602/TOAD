select deptno, dname department, emp_count
from dept join
(select deptno, count(*) emp_count 
from emp
group by deptno) virtual using (deptno)
order by 2 desc;

/*create view emp_vw1
as select deptno, count(*) emp_counts
from emp
group by deptno;

select d.deptno, dname department
,emp_counts from dept d, emp_vw1 v
where d.deptno = v.deptno;
*/