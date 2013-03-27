
declare 
   
begin

for c in 1 .. 10 loop
    -- char inserts
      INSERT INTO user1.ora_hashpartition_table1
                  (S_NUMBER,  s_varchar2 )
         SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.STRING ('U', 30)               
           FROM DUAL;
         
     end loop;
commit;
end;                                   
/

show errors
exit       