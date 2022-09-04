select ename from emp
where deptno =
(select deptno from emp
where empno=7934);