create table test_as_select as (select * from TAB_NUMBER);
 ALTER TABLE test_as_select ADD SUPPLEMENTAL LOG DATA (ALL) COLUMNS;

--------------------------------------------------------------------------------------------
create table test_ddl_all_datatypes
	(
		col_id 				  number,
		NUMBER_COL            NUMBER,
		INTEGER_COL           INTEGER,
		DATE_COL              DATE,
		LONG_COL              LONG,
		FLOAT_COL             FLOAT(126),
		DECIMAL_COL           DECIMAL,
		TIMESTAMP_COL         TIMESTAMP(6),
		NCHAR_COL             NCHAR(50),
		CLOB_COL              CLOB,
		NCLOB_COL             NCLOB,
		BLOB_COL              BLOB,
		VARCHAR2_COL          VARCHAR2(30 BYTE),
		NVARCHAR2_COL         NVARCHAR2(1000),
		BIN_DOUBLE_COL        BINARY_DOUBLE,
		BIN_FLOAT_COL         BINARY_FLOAT,
		NUMERIC_COL           NUMERIC,  
		CHAR_COL              CHAR(30 BYTE),
		DOUBLE_PRECISION_COL  FLOAT(126), 		
		Constraint all_datatypes_PK Primary key (col_id)
	);
 ALTER TABLE test_ddl_all_datatypes ADD SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS;

--------------------------------------------------------------------------------------------
create table test_composite_pk
	(
		col_id 				  number,
		number_col 			  number,
		CHAR_COL              CHAR(30 BYTE),
		INTEGER_COL           INTEGER,
		Constraint composite_PK Primary key (col_id,number_col)
	);
 ALTER TABLE test_composite_pk ADD SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS;

--------------------------------------------------------------------------------------------
create table test_composite_pk2
	(
		col_id 				  number,
		number_col 			  number,
		CHAR_COL              CHAR(30 BYTE),
		INTEGER_COL           INTEGER,
		Constraint composite_PK4 Primary key (col_id,char_col)
	);
 ALTER TABLE test_composite_pk2 ADD SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS;

--------------------------------------------------------------------------------------------
-- Table compression.
--for Oracle 11g, advanced compression
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