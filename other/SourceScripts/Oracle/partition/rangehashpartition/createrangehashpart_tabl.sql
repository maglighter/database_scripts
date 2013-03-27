CREATE SEQUENCE ORA_PK_ID6;

--CREATE SMALLFILE TABLESPACE LISTHASH_PART1 DATAFILE '/orainst/data/IDR11/datafile/listhash_PART1.dbf' 
--SIZE 10m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;

--CREATE SMALLFILE TABLESPACE LISTHASH_PART2 DATAFILE '/orainst/data/IDR11/datafile/listhash_PART2.dbf' 
--SIZE 10m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;



CREATE TABLE ora_rangehash_part_table 
(
   s_number NUMBER(10), 
    s_varchar VARCHAR(10),
    s_integer integer ,
   S_PK_FORMAPPING  INTEGER
)   
     PARTITION BY RANGE(s_number) SUBPARTITION BY HASH(s_integer)
        SUBPARTITIONS 2
    (PARTITION partition_1 VALUES LESS THAN (5),
     PARTITION partition_2 VALUES LESS THAN (10)
     	pctfree 0 pctused 99
     	storage (initial 64k next 16k pctincrease 0)
        STORE IN (SRC,SRC)
  )LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
  

  ALTER TABLE ora_rangehash_part_table  ADD (
  CONSTRAINT ORA_rangehashpart_part_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));
 
CREATE OR REPLACE TRIGGER ORA_PK_TRG_rangehashpart
BEFORE INSERT
ON ora_rangehash_part_table 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT ORA_PK_ID6.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END ORA_PK_TRG_rangehashpart;
/
show errors      
      