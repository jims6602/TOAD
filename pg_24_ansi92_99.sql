-- ANSI99 and ANSI92 outer joins
-- will show employees/departments and departments with no employees
-- ANSI99DEPT 
select ename, dname, d.deptno
from emp e right outer join dept d
on e.deptno=d.deptno;
-- in ANSI92 this would be:
select ename, dname, d.deptno
from emp e, dept d
where  e.deptno(+)=d.deptno;

-- will show employees/departments and employees with no department
select ename, dname, d.deptno
from emp e left outer join dept d
on e.deptno=d.deptno;

--
-- ansi99 inner join
select dname, ename
from emp e inner join dept d 
on e.deptno=d.deptno;

-- ansi92 inner join
select dname, ename
from emp e, dept d;

-- cross join (Cartesan product)
select ename, dname
from emp cross join  dept ;