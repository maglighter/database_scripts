create SEQUENCE ORA_PK_ID3;

CREATE TABLE ORA_listpartition_table
(
  S_VARCHAR2       VARCHAR2(40 BYTE),
  S_CHAR           CHAR(20 BYTE),
  S_NVARCHAR2      NVARCHAR2(20),
  S_PK_FORMAPPING  INTEGER 
)
PARTITION BY LIST (S_VARCHAR2 ) 
(
 PARTITION west_state VALUES('California', 'Hawaii'),
 PARTITION east_state  VALUES('New York', 'Virginia'),
 PARTITION central_state  VALUES('Texas', 'Illinois'))
  
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

ALTER TABLE ORA_listpartition_table ADD (
  CONSTRAINT ORA_CHAR_list_part_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));

CREATE OR REPLACE TRIGGER ORA_PK_TRG_list_part
BEFORE INSERT
ON ORA_listpartition_table
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT ORA_PK_ID3.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END ORA_PK_TRG_list_part;
/
show errors