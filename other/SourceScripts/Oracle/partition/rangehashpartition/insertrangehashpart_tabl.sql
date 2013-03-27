
declare 
 begin

for c in 1 .. 10 loop
          INSERT INTO user1.ora_rangehash_part_table
                  (S_NUMBER,  s_varchar, s_integer )
         SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.STRING ('U', 10), 
                 DBMS_RANDOM.random
           FROM DUAL;
         
     end loop;
commit;
end;                                   
/

show errors
exit     