-- 14 employees with salaries from 800 to 5000
-- 14 salaries divided by 5 is 2 remainder 2 , the two remaining 
-- will go into buckets 1 and 2
-- the width_bucket allows us to construct equal size buckets for our data
-- this is a comparision of the two 
break on ntile5 skip 1
select ntile(5) over(order by sal) ntile5,
empno, ename, sal,
-- width_bucket example
width_bucket(sal,0,5000,5) width_bucket
-- 5 buckets 0 to 1199 , 1200 - 1399 , 1400-1599 etc
from emp
where sal  is not null
order by sal;

select 6000/5 from dual;