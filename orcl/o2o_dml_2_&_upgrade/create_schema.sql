--  boolean, bfile,
--  set echo on
--  set serveroutput on
--  spool spool_create_schema.txt
--  create source
--  CREATE SEQUENCE  DATAREP_USER.ORA_PK_ID
--  START WITH 1
--  MAXVALUE 9999999999999999999999999999
--  MINVALUE 0
--  NOCYCLE
--  NOCACHE
--  NOORDER;

CREATE TABLE  DATAREP_USER.ORA_NUMBERTYPES
(
  S_NUMBER_MAX			NUMBER(38,10),
  S_NUMBER_MID			NUMBER(19,10),
  S_NUMBER_MIN              	NUMBER(1,1),
  S_INTEGER                 	INTEGER,
  S_BINARY_DOUBLE           	BINARY_DOUBLE,
  S_BINARY_FLOAT            	BINARY_FLOAT,
  S_DECIMAL_MAX             	DECIMAL(30,8),
  S_DECIMAL_MID             	DECIMAL(15,8),
  S_DECIMAL_MIN             	DECIMAL(2,1),
  S_DOUBLE_PRECISION_FLOAT_MAX  FLOAT(126),
  S_DOUBLE_PRECISION_FLOAT_MID  FLOAT(63),
  S_DOUBLE_PRECISION_FLOAT_MIN  FLOAT(1),  
  S_PK_FORMAPPING           	INTEGER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE  DATAREP_USER.ORA_CHARTYPES
(
  S_VARCHAR2_MAX       VARCHAR2(4000 BYTE),
  S_VARCHAR2_MID       VARCHAR2(2000 BYTE),
  S_VARCHAR2_MIN       VARCHAR2(1 BYTE),
  S_CHAR_MAX           CHAR(2000 BYTE),
  S_CHAR_MID           CHAR(1000 BYTE),
  S_CHAR_MIN           CHAR(1 BYTE),
  S_NVARCHAR2_MAX      NVARCHAR2(2000),
  S_NVARCHAR2_MID      NVARCHAR2(1000),
  S_NVARCHAR2_MIN      NVARCHAR2(1),
  S_NCHAR_MAX          NCHAR(1000),
  S_NCHAR_MID          NCHAR(500),
  S_NCHAR_MIN          NCHAR(1),
  S_PK_FORMAPPING      INTEGER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE  DATAREP_USER.ORA_DATATYPES
(
  S_DATE                     DATE,
  S_TIMESTAMP_WITOUT_TZ_MAX      TIMESTAMP(9),
  S_TIMESTAMP_WITOUT_TZ_MID      TIMESTAMP(6),
  S_TIMESTAMP_WITOUT_TZ_MIN      TIMESTAMP(0),
  S_TIMESTAMP_WITH_TZ_MAX        TIMESTAMP(9) WITH TIME ZONE,
  S_TIMESTAMP_WITH_TZ_MID        TIMESTAMP(6) WITH TIME ZONE,
  S_TIMESTAMP_WITH_TZ_MIN        TIMESTAMP(0) WITH TIME ZONE,
  S_TIMESTAMP_WITH_LOCAL_TZ_MAX  TIMESTAMP(9) WITH LOCAL TIME ZONE,
  S_TIMESTAMP_WITH_LOCAL_TZ_MID  TIMESTAMP(6) WITH LOCAL TIME ZONE,
  S_TIMESTAMP_WITH_LOCAL_TZ_MIN  TIMESTAMP(0) WITH LOCAL TIME ZONE,
  S_INTERVAL_DAY_SECOND      INTERVAL DAY(2) TO SECOND(6),
  S_INTERVAL_YEAR_MONTH      INTERVAL YEAR(2) TO MONTH,
  S_PK_FORMAPPING            INTEGER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE  DATAREP_USER.ORA_RAWLOBTYPES
(
--  S_LONG           LONG,
  S_RAW_MAX            RAW(2000),
  S_RAW_MID            RAW(1000),
  S_RAW_MIN            RAW(1),
--  S_LONG_RAW       LONG RAW,
  S_BLOB           BLOB,
  S_BLOB_NAME      VARCHAR2(2000 BYTE),
  S_CLOB           CLOB,
  S_NCLOB          NCLOB,
  S_PK_FORMAPPING  INTEGER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

ALTER TABLE  DATAREP_USER.ORA_NUMBERTYPES ADD (
  CONSTRAINT ORA_NUMBERTYPES_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));

ALTER TABLE  DATAREP_USER.ORA_DATATYPES ADD (
  CONSTRAINT ORA_DATATYPES_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));

ALTER TABLE  DATAREP_USER.ORA_RAWLOBTYPES ADD (
  CONSTRAINT ORA_RAWLOBTYPES_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));

ALTER TABLE  DATAREP_USER.ORA_CHARTYPES ADD (
  CONSTRAINT ORA_CHARTYPES_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));
 
 
CREATE OR REPLACE TRIGGER  DATAREP_USER.ORA_PK_TRG_NUMBERTYPES
BEFORE INSERT
ON  DATAREP_USER.ORA_NUMBERTYPES 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT  DATAREP_USER.ORA_PK_ID.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END DATAREP_USER.ORA_PK_TRG_NUMBERTYPES;
/
--show errors


CREATE OR REPLACE TRIGGER  DATAREP_USER.ORA_PK_TRG_RAWLOBTYPES
BEFORE INSERT
ON  DATAREP_USER.ORA_RAWLOBTYPES 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT  DATAREP_USER.ORA_PK_ID.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END DATAREP_USER.ORA_PK_TRG_RAWLOBTYPES;
/
--show errors


CREATE OR REPLACE TRIGGER  DATAREP_USER.ORA_PK_TRG_CHARTYPES
BEFORE INSERT
ON  DATAREP_USER.ORA_CHARTYPES 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT  DATAREP_USER.ORA_PK_ID.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END DATAREP_USER.ORA_PK_TRG_CHARTYPES;
/
--show errors


CREATE OR REPLACE TRIGGER  DATAREP_USER.ORA_PK_TRG_DATATYPES
BEFORE INSERT
ON  DATAREP_USER.ORA_DATATYPES 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT  DATAREP_USER.ORA_PK_ID.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END DATAREP_USER.ORA_PK_TRG_DATATYPES;
/
--show errors


