SET ECHO ON

SET ECHO ON

BREAK ON Man_E# ON M_Last SKIP 1

SELECT M.EmpNo Man_E#, M.LName M_Last, 
   E.EmpNo Emp_E#, E.LName E_Last
FROM Employees E, Employees M
WHERE E.MNum = M.EmpNo(+)
ORDER BY 1 NULLS FIRST,3;

SET ECHO OFF
CLEAR BREAK