CREATE OR REPLACE procedure SCOTT.looping_example
is
CURSOR EMP_CUR is
select ename from emp;
loop_counter number := 0;
v_ename varchar2(10) ;

BEGIN
OPEN emp_cur;
FETCH emp_cur into v_ename;

WHILE emp_cur%FOUND
LOOP
LOOP_COUNTER :=loop_counter+1;
DBMS_OUTPUT.PUT_LINE ('Record ' || loop_counter || ' is employee ' || v_ename);
fetch  emp_cur into v_ename;
END LOOP;
DBMS_OUTPUT.PUT_LINE ('Employee listing is completed');
CLOSE EMP_cur;
END;
/