--add range-list partition


alter table user1.ora_rangelist_part_table add PARTITION part3_2012 VALUES LESS THAN (TO_DATE('1-10-2012','DD-MM-YYYY');
commit;

--add subpartition

ALTER TABLE user1.ora_rangelist_part_table
   MODIFY PARTITION part1_2012
      ADD SUBPARTITION part1_2012_varchar5
         VALUES  ('varchar5');
commit;

--drop  partition

alter table  user1.ora_rangelist_part_table drop partition part3_2012;
commit;

--drop subpartition


ALTER TABLE user1.ora_rangelist_part_table
        DROP SUBPARTITION part1_2012_varchar5;
commit;

--update  partition

  UPDATE user1.ora_rangelist_part_table1 PARTITION  (part1_2012 ) 
    SET S_NUMBER   =  round(DBMS_RANDOM.random/DBMS_RANDOM.random,10)
   WHERE S_date  = '10032012' ;
 commit;

 UPDATE user1.ora_rangelist_part_table PARTITION  (part2_2012 ) 
    SET S_NUMBER   =  round(DBMS_RANDOM.random/DBMS_RANDOM.random,10)
   WHERE S_date  = '10062012' ;
 commit;

--update subpartition

 UPDATE user1.ora_rangelist_part_table PARTITION  (part1_2012 ) 
     subpartition    part1_2012_varchar1
    SET S_NUMBER   =  round(DBMS_RANDOM.random/DBMS_RANDOM.random,10)
      WHERE s_varchar  = 'varchar1' ;
 commit;


 UPDATE user1.ora_rangelist_part_table
     subpartition    part2_2012_varchar4 
    SET S_NUMBER   =  round(DBMS_RANDOM.random/DBMS_RANDOM.random,10)
   WHERE s_varchar  = 'varchar4' ;
 commit;
------------------------------------------------------------------------------


--truncate range list partition

ALTER TABLE user1.ora_rangelist_part_table
TRUNCATE PARTITION part1_2012; 
commit;  

--ALTER TABLE user1.ora_rangelist_part_table
--TRUNCATE PARTITION part2_2012;  
--commit; 


--truncate subpartition

ALTER TABLE user1.ora_rangelist_part_table
   TRUNCATE SUBPARTITION part1_2012_varchar1;

--ALTER TABLE user1.ora_rangelist_part_table
--   TRUNCATE SUBPARTITION part2_2012_varchar3;

commit;              


--truncate table

Truncate table    user1.ora_rangelist_part_table;
commit;

-- delete partition

DELETE FROM user1.ora_rangelist_part_table PARTITION ( part1_2012 );
COMMIT;

--delete subpartition

DELETE FROM user1.ora_rangelist_part_table SUBPARTITION ( part2_2012_varchar3);
COMMIT;

--delete table

declare 
            v_cnt INT;
begin
for c in 1 .. 3 loop


select count(*) into v_cnt from user1.ora_rangelist_part_table;

DELETE FROM user1.ora_rangelist_part_table
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM user1.ora_rangelist_part_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   commit;


end loop;
end;

