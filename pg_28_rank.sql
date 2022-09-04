-- the query assigns a rank to people w/in a dept based on salary
SELECT empno, deptno, sal,
rank() over (partition by deptno order by sal desc ) "Ranking"
from emp
;
-- like RANK except:it assigns consective ranks no skipping of numbers for ties
SELECT empno, deptno, sal,
dense_rank() over (partition by deptno order by sal desc ) "Dense Ranking"
from emp
;