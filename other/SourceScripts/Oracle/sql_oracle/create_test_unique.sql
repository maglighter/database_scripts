CREATE SEQUENCE SEQ_test_unique_id
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER;


create table test_unique
    (
        col_id                number,
        NUMBER_COL            NUMBER,
        INTEGER_COL           INTEGER,
        DATE_COL              DATE,
        FLOAT_COL             FLOAT(126),
        TIMESTAMP_COL         TIMESTAMP(6),
        NCHAR_COL             NCHAR(50),
        VARCHAR2_COL          VARCHAR2(30 BYTE),
        Constraint test_unique_PK Primary key (col_id)
    );
ALTER TABLE test_unique ADD SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS;
 
ALTER TABLE test_unique add CONSTRAINT test_unique_unique UNIQUE (NUMBER_COL);
ALTER TABLE test_unique add CONSTRAINT test_unique_int UNIQUE (INTEGER_COL);
ALTER TABLE test_unique add CONSTRAINT test_unique_varchar UNIQUE (VARCHAR2_COL);
