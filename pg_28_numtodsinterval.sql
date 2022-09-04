--add 1 year to current year and 1 day to current day
--with 1 year added

select current_date, 
current_date + numtoyminterval(1,'YEAR')
+ numtodsinterval(1,'DAY') "YRandDAY+1"
from dual;

