
/* this is an emp report
kjlkjkljj
kljljjj
*/
-- reprot

spool c:\temp\cleveland.txt
break on deptno
ttitle 'Emp Report'
btitle 'End of Report'
select * from emp
where deptno=20;

spool off