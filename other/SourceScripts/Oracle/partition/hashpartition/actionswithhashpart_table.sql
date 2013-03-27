 
--add hash partition


alter table user1.ora_hashpartition_table add  partition hash_partition3;
commit;

--drop hash partition

alter table  user1.ora_hashpartition_table drop partition hash_partition3;
commit;


  -- updates hash partition

declare   
v_cnt INT;
   cursor c is select * from user1.ora_hashpartition_table
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM  user1.ora_hashpartition_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
    begin
              for c1 in c 
      loop 
           UPDATE user1.ora_hashpartition_table
             set  (S_NUMBER,  s_varchar2) =
           (SELECT 
                 round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.STRING ('U', 30)  
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
   commit;
   end;

-----------------------------------------------------------------------------------------------------

--truncate range partition
ALTER TABLE user1.ora_hashpartition_table
TRUNCATE PARTITION hash_partition1;   
commit; 

--truncate table

TRUNCATE TABLE user1.ora_hashpartition_table;
commit;


--delete  partition


DELETE FROM user1.ora_hashpartition_table PARTITION ( hash_partition1);
COMMIT;


--delete table
declare 
     
      v_cnt INT;
begin
for c in 1 .. 5 loop


select count(*) into v_cnt from user1.ora_hashpartition_table;

DELETE FROM user1.ora_hashpartition_table
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM  user1.ora_hashpartition_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

                                 

commit;
end loop;
end;
                            