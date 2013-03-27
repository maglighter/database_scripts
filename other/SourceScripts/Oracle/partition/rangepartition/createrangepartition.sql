create SEQUENCE ORA_PK_ID1;

--CREATE SMALLFILE TABLESPACE "TBLSP_PARTITION_1" DATAFILE '/orainst/data/IDR11/datafile/partition_1.dbf' 
--SIZE 1m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;
--CREATE SMALLFILE TABLESPACE "TBLSP_PARTITION_2" DATAFILE '/orainst/data/IDR11/datafile/partition_2.dbf' 
--SIZE 1m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;
--CREATE SMALLFILE TABLESPACE "TBLSP_PARTITION_3" DATAFILE '/orainst/data/IDR11/datafile/partition_3.dbf' 
--SIZE 1m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLE ORA_range_partition_table
(
  S_NUMBER                  NUMBER(38,10),
  S_INTEGER                 INTEGER,
  S_DECIMAL                 NUMBER(30,8),
  S_PK_FORMAPPING           INTEGER
)
PARTITION by RANGE ( S_INTEGER )
(partition partition_1
 values less than (5)
	pctfree 0 pctused 99
	storage (initial 64k next 64k pctincrease 0)
  tablespace SRC,
partition partition_2
 values less than (10)
	pctfree 0 pctused 99
 	storage (initial 64k next 64k pctincrease 0)
  tablespace SRC,
  partition partition_3
 values less than (15)
 	pctfree 0 pctused 99
 	storage (initial 64k next 64k pctincrease 0)
  tablespace SRC);

ALTER TABLE ORA_range_partition_table ADD (
  CONSTRAINT ORA_range_part_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));

CREATE OR REPLACE TRIGGER ORA_PK_TRG_range_part
BEFORE INSERT
ON ORA_range_partition_table
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT ORA_PK_ID1.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END ORA_PK_TRG_range_part;
/
show errors
