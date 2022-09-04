ttitle center 'Employee Manager Report' skip 2
--break on manager  on deptno skip 1
break on manager  skip 1
select m.ename manager,  e.deptno, e.ename employee
from emp m, emp e
where e.mgr= m.empno
order by 1,2;