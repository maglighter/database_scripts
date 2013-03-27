--add system partition

alter table user1.ORA_system_part_table add partition partition_3  tablespace users;
commit;

--drop system partition

alter table user1.ORA_system_part_table drop partition partition_3;
commit;

--update system partition




declare  
 v_cnt INT;  
 cursor c is select * from user1.ORA_system_part_table
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM user1.ORA_system_part_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
begin
   for c1 in c
      loop 
      update user1.ORA_system_part_table
      set
                  (s_number, s_varchar2) =
         (SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10), 
                DBMS_RANDOM.STRING ('U', 20)
           FROM DUAL)
           where CURRENT OF c; 
      end loop;
  commit;
end;
/
show errors
exit 
-----------------------------------------------------------------------------------------------------

--truncate system partition
ALTER TABLE user1.ORA_system_part_table
TRUNCATE PARTITION partition_1;  
commit; 

--ALTER TABLE user1.ORA_system_part_table
--TRUNCATE PARTITION partition_2;  
--commit; 


--TRUNCATE TABLE

TRUNCATE TABLE user1.ORA_system_part_table
COMMIT;


--DELETE PARTITION

DELETE FROM  user1.ORA_system_part_table PARTITION ( partition_1);
COMMIT;


--DELETE TABLE
declare 
            v_cnt INT;
begin
for c in 1 .. 3 loop


select count(*) into v_cnt from user1.ORA_system_part_table;

DELETE FROM user1.ORA_system_part_table
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM user1.ORA_system_part_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   commit;


end loop;
end;

                            