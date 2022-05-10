SET SERVEROUTPUT ON;
DECLARE 
v_dept department.department_id%type;
w_dept department.department_name%type;
x_dept department.location_id%type;
CURSOR c_dept is SELECT department_id, department_name, location_id FROM department order by 
department_id asc;
BEGIN dbms_output.put_line('Department Details are :');
OPEN c_dept;
LOOP
FETCH c_dept INTO v_dept, w_dept, x_dept;
EXIT WHEN c_dept%notfound;
dbms_output.put_line(v_dept || ', ' || w_dept || ', ' || x_dept);
END LOOP;
CLOSE c_dept; 
END;
/