
declare 
      v_id   INT;
      v_cnt INT;
begin
for c in 1 .. &1 loop
begin

select count(*) into v_cnt from SIMPLE_IOT;

DELETE FROM SIMPLE_IOT
      WHERE EMPLOYEE_NO =
                         (SELECT MAX (EMPLOYEE_NO)
                            FROM (SELECT EMPLOYEE_NO
                                    FROM SIMPLE_IOT
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   
commit;

exception
when others then null;
end;

for c in 1 .. 2 loop
    -- char inserts
      INSERT INTO SIMPLE_IOT
                  (WORK_DATE,EMPLOYEE_NO,CLASS_CODE)
         SELECT 
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                (FOR_IOT_SEQ.nextval),
                DBMS_RANDOM.STRING ('A', 6)
           FROM DUAL;
   commit;
end loop;       

    -- updates
declare       
   cursor c is select * from SIMPLE_IOT 
                      where
                      EMPLOYEE_NO =
                         (SELECT MAX (EMPLOYEE_NO)
                            FROM (SELECT EMPLOYEE_NO
                                    FROM SIMPLE_IOT
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
    begin
              for c1 in c 
      loop 
           UPDATE SIMPLE_IOT
             set  (WORK_DATE,CLASS_CODE) =
           (SELECT 
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                DBMS_RANDOM.STRING ('A', 6)
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
   commit;
   end;
   
   
end loop;
end;                                   
/

show errors
exit                                 