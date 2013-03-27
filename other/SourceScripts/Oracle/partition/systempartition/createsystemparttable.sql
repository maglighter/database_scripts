create SEQUENCE ORA_PK_ID4;

create table ORA_system_part_table
(
 s_number number,
s_varchar2 varchar2(20),
 S_PK_FORMAPPING           INTEGER
)
partition by system
(
 partition partition_1 tablespace users,
 partition partition_2 tablespace users
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE ORA_system_part_table ADD (
  CONSTRAINT ORA_system_part_table_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));

CREATE OR REPLACE TRIGGER ORA_PK_TRG_system_part
BEFORE INSERT
ON ORA_system_part_table
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT ORA_PK_ID4.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END ORA_PK_TRG_system_part;
/
show errors