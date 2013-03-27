--ALTER TABLE compressed_iot ADD OVERFLOW;

Alter TABLE tab_number add
(
  
  INTEGER_COL           INTEGER,
  DATE_COL              DATE,
--  LONG_COL              LONG,
  FLOAT_COL             FLOAT(126),
  DECIMAL_COL           DECIMAL,
  TIMESTAMP_COL         TIMESTAMP(6),
  TIMESTAMP_TZ_COL      TIMESTAMP(6) WITH TIME ZONE,
  NCHAR_COL             NCHAR(50),
  CLOB_COL              CLOB,
  NCLOB_COL             NCLOB,
  BLOB_COL              BLOB,
  VARCHAR2_COL          VARCHAR2(30 BYTE),
  NVARCHAR2_COL         NVARCHAR2(1000),
  BIN_DOUBLE_COL        BINARY_DOUBLE,
  BIN_FLOAT_COL         BINARY_FLOAT,
  RAW_COL               RAW(1000),
  NUMERIC_COL           NUMERIC,    
  TIMESTAMP_LTZ_COL     TIMESTAMP(6) WITH LOCAL TIME ZONE,
  CHAR_COL             CHAR(30),
  DOUBLE_PRECISION_COL  FLOAT(126)
--  INTERVAL_DS_COL       INTERVAL DAY(2) TO SECOND(6),
--  INTERVAL_YM_COL       INTERVAL YEAR(2) TO MONTH
 );
 
-- Alter TABLE tab_number modify CHAR_COL2 CHAR(50);
-- 
-- Alter TABLE tab_number drop (CHAR_COL2);