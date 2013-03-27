
CREATE SEQUENCE ORA_PK_ID2;

--CREATE SMALLFILE TABLESPACE HASH_PART1 DATAFILE '/orainst/data/IDR11/datafile/hash_PART1.dbf' 
--SIZE 1m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;
--CREATE SMALLFILE TABLESPACE HASH_PART2 DATAFILE '/orainst/data/IDR11/datafile/hash_PART2.dbf' 
--SIZE 1m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;

create table ora_hashpartition_table
(
   S_NUMBER                  NUMBER(38,10), 
   s_varchar2 varchar2(30), 
    S_PK_FORMAPPING           INTEGER
   
) 
partition by hash( S_NUMBER ) (
  partition hash_partition1 tablespace SRC, 
  partition hash_partition2  tablespace SRC
)

LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE ora_hashpartition_table ADD (
  CONSTRAINT ORA_hashpart_part_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));


CREATE OR REPLACE TRIGGER ORA_PK_TRG_hashpart
BEFORE INSERT
ON ora_hashpartition_table
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT ORA_PK_ID2.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END ORA_PK_TRG_hashpart;
/
show errors