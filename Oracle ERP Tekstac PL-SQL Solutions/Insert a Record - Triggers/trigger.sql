create or replace trigger trigger1
after insert on employee
for each row
begin
dbms_output.put_line('NEW EMPLOYEE DETAILS INSERTED');
end;