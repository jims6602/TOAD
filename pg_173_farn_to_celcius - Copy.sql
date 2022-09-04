CREATE OR REPLACE procedure SCOTT.fahrenheit_to_celsius (degree NUMBER) 
IS
     result NUMBER(3,0);
 
    BEGIN
       result := (5/9) * (degree - 32);
    dbms_output.put_line('The value in Celcius is:  ' || RESULT);
    END fahrenheit_to_celsius;
/