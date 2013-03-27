--add range-list partition


alter table dbsync_user.ora_rangehash_part_table add partition partition_3 VALUES LESS THAN (20);
commit;

--add subpartition

ALTER TABLE dbsync_user.ora_rangelist_part_table
   MODIFY PARTITION part1_2012
      ADD SUBPARTITION part1_2012_varchar5
         VALUES  ('varchar5');
commit;

--drop  partition

alter table  dbsync_user.ora_rangehash_part_table drop partition partition_3;


--drop subpartition


ALTER TABLE dbsync_user.ora_rangelist_part_table
        DROP SUBPARTITION part1_2012_varchar5;


--update  partition

 declare  
 v_cnt INT;
   cursor c is select * from dbsync_user.ora_rangehash_part_table
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM dbsync_user.ora_rangehash_part_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
    begin
              for c1 in c 
      loop 
           UPDATE dbsync_user.ora_rangehash_part_table
             set  (s_number, s_varchar, s_integer) =
           (SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.STRING ('U', 20),
                DBMS_RANDOM.random
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
   commit;
   end;
                              
/

show errors
exit  
------------------------------------------------------------------------------


--truncate range list partition

ALTER TABLE dbsync_user.ora_rangehash_part_table
TRUNCATE PARTITION partition_1;   
commit; 

--truncate table

truncate table dbsync_user.ora_rangehash_part_table;
commit;


--delete partition

DELETE FROM dbsync_user.ora_rangehash_part_table PARTITION ( partition_1);
COMMIT;


--delete table
declare 
            v_cnt INT;
begin
for c in 1 .. 3 loop


select count(*) into v_cnt from dbsync_user.ora_rangehash_part_table;

DELETE FROM dbsync_user.ora_rangehash_part_table
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM dbsync_user.ora_rangehash_part_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   commit;


end loop;
end;


                  