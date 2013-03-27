
declare 
   
begin


    -- char inserts
      INSERT INTO user1.ORA_listpartition_table
                  (s_varchar2, s_char, s_nvarchar2)
         SELECT 
               'California',
                DBMS_RANDOM.STRING ('U', 20),
                DBMS_RANDOM.STRING ('A', 20)
                
           FROM DUAL;
           
             INSERT INTO user1.ORA_listpartition_table
                  (s_varchar2, s_char, s_nvarchar2)
         SELECT 
               'New York',
                DBMS_RANDOM.STRING ('U', 20),
                DBMS_RANDOM.STRING ('A', 20)
           FROM DUAL;
             INSERT INTO user1.ORA_listpartition_table
                  (s_varchar2, s_char, s_nvarchar2)
         SELECT 
               'Texas',
                DBMS_RANDOM.STRING ('U', 20),
                DBMS_RANDOM.STRING ('A', 20)
           FROM DUAL;
            
     
commit;
end;                                   
/

show errors
exit       