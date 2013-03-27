declare 

 begin

for c in 1 .. 10 loop
          INSERT INTO user1.ORA_system_part_table  partition (partition_1)
                  (S_NUMBER,  s_varchar2 )
         SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.STRING ('U', 10)
           FROM DUAL;
             INSERT INTO user1.ORA_system_part_table  partition (partition_2)
                  (S_NUMBER,  s_varchar2 )
         SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.STRING ('U', 10)
           FROM DUAL;
         
     end loop;
commit;
end;                                   
/

show errors
exit     