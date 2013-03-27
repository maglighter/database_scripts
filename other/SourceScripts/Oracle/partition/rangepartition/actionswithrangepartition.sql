--add range partition


alter table user1.ORA_range_partition_table add partition partition_4 values less than (20) tablespace users;
commit;

--drop range partition

alter table  user1.ORA_range_partition_table drop partition partition_4;
commit;

--update range partition

UPDATE user1.ORA_range_partition_table PARTITION  (partition_1 ) 
    SET S_NUMBER   =  1 
   WHERE S_INTEGER  = 2 ;
 commit;

UPDATE user1.ORA_range_partition_table PARTITION  (partition_2 ) 
    SET S_NUMBER   =  1 
   WHERE S_INTEGER  = 6 ;
commit;

UPDATE user1.ORA_range_partition_table PARTITION  (partition_3 ) 
    SET S_NUMBER   =  1 
   WHERE S_INTEGER  = 11 ;
commit;






UPDATE user1.ORA_range_partition_table PARTITION  (partition_1 ) 
    SET S_NUMBER   =    round(DBMS_RANDOM.random/DBMS_RANDOM.random,10)
   WHERE S_INTEGER  = 2 ;
commit;
UPDATE user1.ORA_range_partition_table PARTITION  (partition_2 ) 
    SET S_NUMBER   =   round(DBMS_RANDOM.random/DBMS_RANDOM.random,10)
   WHERE S_INTEGER  = 6 ;
commit;
UPDATE user1.ORA_range_partition_table PARTITION  (partition_3 ) 
    SET S_NUMBER   =    round(DBMS_RANDOM.random/DBMS_RANDOM.random,10)
   WHERE S_INTEGER  = 11 ;
   COMMIT;
------------------------------------------------------------------------------




    -- updates
   
declare  
 v_cnt INT;  
 cursor c is select * from user1.ORA_range_partition_table
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM uuser1.ORA_range_partition_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
begin
   for c1 in c
      loop 
      update user1.ORA_range_partition_table
      set
                  (s_number, s_integer,
                   s_decimal) =
         (SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10), 
                DBMS_RANDOM.random,
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8)
           FROM DUAL)
           where CURRENT OF c; 
      end loop;
  commit;
end;


end loop;
end;                                   
/

show errors
exit  
-----------------------------------------------------------------------------------------------------

--truncate range partition
ALTER TABLE user1.ORA_range_partition_table
TRUNCATE PARTITION partition_1;   
commit;

--ALTER TABLE user1.ORA_range_partition_table
--TRUNCATE PARTITION partition_2;  
--commit;

--ALTER TABLE user1.ORA_range_partition_table
--TRUNCATE PARTITION partition_3; 
--commit; 

  ----------------------------------------------------------------------------------
                
--TRUNCATE TABLE
TRUNCATE TABLE user1.ORA_range_partition_table
COMMIT;


--DELETE PARTITION
DELETE FROM user1.ORA_range_partition_table PARTITION ( partition_1);
COMMIT;


--DELETE TABLE
declare 
            v_cnt INT;
begin
for c in 1 .. 3 loop


select count(*) into v_cnt from  user1.ORA_range_partition_table;

DELETE FROM user1.ORA_range_partition_table
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM user1.ORA_range_partition_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   commit;

exception when others then null;
end loop;
end;


     