create or replace function calculate_increment
(incperc in number, 
salary  in number
)
return number 
as
begin
return salary * incperc/100;
end;
/

