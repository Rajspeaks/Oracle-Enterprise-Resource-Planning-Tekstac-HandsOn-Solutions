create or replace function concat_name(v_id employee.emp_id%type)
return varchar2
is
retval varchar2(25);
begin
select first_name || last_name
into retval
from employee
where emp_id = v_id;
return retval;
end;
/
