set serveroutput on;
set autoprint on;
variable var_text varchar2(30);
variable var_number NUMBER;
variable var_date DATE;
declare
v_text varchar2(30);
begin
:var_text := 'Hello SQL';
:var_number := 20;
v_text := :var_text;
end;
/
print var_text;
variable var_sql number;
begin 
  :var_sql := 100;
end;
/
select * from employees where employee_id = :var_sql;