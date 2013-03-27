describe tab_number;

describe test_as_select

describe test_compess_tab1;

SELECT * FROM V$VERSION;

drop table test_compess_tab cascade constraints purge;

drop table test_compess_tab2 cascade constraints purge;

CREATE TABLE test_compess_tab (
  id_col        NUMBER(10)    NOT NULL,
  description   VARCHAR2(50)  NOT NULL,
  created_date  DATE          NOT NULL
)
COMPRESS FOR ALL OPERATIONS;
 ALTER TABLE test_compess_tab ADD SUPPLEMENTAL LOG DATA (ALL) COLUMNS;

--for Oracle 10g
CREATE TABLE test_compess_tab2 (
  id_col        NUMBER(10)    NOT NULL,
  description   VARCHAR2(50)  NOT NULL,
  created_date  DATE          NOT NULL
)
COMPRESS;
 ALTER TABLE test_compess_tab2 ADD SUPPLEMENTAL LOG DATA (ALL) COLUMNS;
 
 CREATE TABLE compressed_iot 
(owner, object_id, object_name,
CONSTRAINT pk_compressed_iot
PRIMARY KEY(owner, object_id, object_name))
ORGANIZATION INDEX
COMPRESS 2 AS
SELECT owner, object_id, object_name
FROM all_objects
WHERE SUBSTR(object_name,1,1) BETWEEN 'A' AND 'W';
 ALTER TABLE compressed_iot ADD SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS;
 
 CREATE TABLE simple_iot (
WORK_DATE   DATE,
EMPLOYEE_NO VARCHAR2(8),
CONSTRAINT pk_simple_iot
PRIMARY KEY (work_date, employee_no))
ORGANIZATION INDEX;
 ALTER TABLE simple_iot ADD SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS;

DROP TABLE simple_iot cascade constraints purge;

DROP TABLE compressed_iot cascade constraints purge;

ALTER TABLE compressed_iot ADD OVERFLOW;

Mytablespace

describe compressed_iot

purge recyclebin

drop table simple_iot cascade constraints purge;
