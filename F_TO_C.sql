CREATE OR REPLACE procedure SCOTT.f_to_c (degree NUMBER) 
IS
     result NUMBER(3,0);
 
    BEGIN
       result := (5/9) * (degree - 32);
    dbms_output.put_line('The value in Celcius is:  ' || RESULT);
    END f_to_c;
/