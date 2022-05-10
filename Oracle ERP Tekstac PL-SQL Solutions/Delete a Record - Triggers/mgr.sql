create or replace trigger trg_bd_emp
  before delete on employee
  for each row
begin
  insert into employee_archive (empid, empname, managerid, deleted_date)
    values (:old.empid, :old.empname, :old.managerid, sysdate);
end trg_bd_emp;
/