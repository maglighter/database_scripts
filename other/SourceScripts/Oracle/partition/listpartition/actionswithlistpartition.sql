--add list partition


alter table user1.ORA_listpartition_table add partition colorado_state  VALUES('Colorado');
commit;

--drop list partition

alter table  user1.ORA_listpartition_table drop partition colorado_state ;
commit;

--update list partition

UPDATE user1.ORA_listpartition_table (west_state) 
    SET S_NVARCHAR2   =  'west_state'
   WHERE S_VARCHAR2  = 'California' ;
commit;

UPDATE user1.ORA_listpartition_table  (east_state ) 
    SET S_NVARCHAR2   =  'east_state' 
   WHERE S_VARCHAR2  = 'New York' ;
commit;
UPDATE user1.ORA_listpartition_table  (central_state ) 
    SET S_NVARCHAR2   =  'central_state'
   WHERE S_VARCHAR2  = 'Texas' ;
commit;
------------------------------------------------------------------------------


declare  
 v_cnt INT;     
   cursor c is select * from user1.ORA_listpartition_table
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM user1.ORA_listpartition_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
    begin
              for c1 in c 
      loop 
           UPDATE user1.ORA_listpartition_table
             set  (s_varchar2, s_char, s_nvarchar2) =
           (SELECT 
                DBMS_RANDOM.STRING ('U', 40),
                DBMS_RANDOM.STRING ('U', 20),
                DBMS_RANDOM.STRING ('A', 20),
                         FROM DUAL)
           where CURRENT OF c ; 
      end loop;
   commit;
   end;
                              
/

show errors
exit  


--truncate list partition
ALTER TABLE user1.ORA_listpartition_table
TRUNCATE PARTITION east_state; 
commit;

--ALTER TABLE user1.ORA_listpartition_table
--TRUNCATE PARTITION west_state;
--commit; 

--ALTER TABLE user1.ORA_listpartition_table
--TRUNCATE PARTITION central_state; 
--commit;


--truncate table

truncate table user1.ORA_listpartition_table;
commit;

--delete partition

DELETE FROM user1.ORA_listpartition_table PARTITION ( west_state);
COMMIT;


--DELETE FROM user1.ORA_listpartition_table PARTITION ( east_state );
--COMMIT;


--DELETE FROM user1.ORA_listpartition_table PARTITION ( central_state);
--COMMIT;
  

--delete table

declare 
            v_cnt INT;
begin
for c in 1 .. 3 loop


select count(*) into v_cnt from  user1.ORA_listpartition_table;

DELETE FROM user1.ORA_listpartition_table
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM user1.ORA_listpartition_table
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   commit;

exception when others then null;
end loop;
end;


