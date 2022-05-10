SET SERVEROUTPUT ON;
DECLARE v_dept department.department_name%type;
CURSOR c_dept is SELECT department_name FROM department order by 
department_name asc;
BEGIN dbms_output.put_line('Department Names are :');
OPEN c_dept;
LOOP
FETCH c_dept INTO v_dept;
EXIT WHEN c_dept%notfound;
dbms_output.put_line(v_dept);
END LOOP;
CLOSE c_dept; END;