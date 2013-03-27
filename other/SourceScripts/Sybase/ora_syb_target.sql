
/*Generated by Informatica Data Replication Console */
/*Converting DDL from ORACLE to Sybase ASE*/
CREATE TABLE [test_excellent].[dbo].[ORA_CHARTYPES]
(S_VARCHAR2 VARCHAR(4000)/*ORACLE datatype: VARCHAR2(4000)*/,
S_CHAR CHAR(200)/*ORACLE datatype: CHAR(200)*/,
S_NVARCHAR2 NVARCHAR(4000)/*ORACLE datatype: NVARCHAR2(4000)*/,
S_NCHAR NCHAR(2000)/*ORACLE datatype: NCHAR(2000)*/,
S_PK_FORMAPPING NUMERIC(38, 0) NOT NULL/*ORACLE datatype: NUMBER(22)*/,
PRIMARY KEY (S_PK_FORMAPPING)
)

CREATE TABLE [test_excellent].[dbo].[ORA_DATATYPES]
(S_DATE date/*ORACLE datatype: DATE(7)*/,
S_TIMESTAMP_WITOUT_TZ BIGDATETIME/*ORACLE datatype: TIMESTAMP(6)*/,
S_TIMESTAMP_WITH_TZ BIGDATETIME/*ORACLE datatype: TIMESTAMP(6) WITH TIME ZONE*/,
S_TIMESTAMP_WITH_LOCAL_TZ BIGDATETIME/*ORACLE datatype: TIMESTAMP(6) WITH LOCAL TIME ZONE*/,
S_PK_FORMAPPING NUMERIC(38, 0) NOT NULL/*ORACLE datatype: NUMBER(22)*/,
PRIMARY KEY (S_PK_FORMAPPING)
)

CREATE TABLE [test_excellent].[dbo].[ORA_NUMBERTYPES]
(S_NUMBER NUMERIC(38, 10)/*ORACLE datatype: NUMBER(38, 10)*/,
S_INTEGER NUMERIC(38, 0)/*ORACLE datatype: NUMBER(22)*/,
S_BINARY_DOUBLE double precision/*ORACLE datatype: BINARY_DOUBLE(8)*/,
S_BINARY_FLOAT FLOAT/*ORACLE datatype: BINARY_FLOAT(4)*/,
S_DECIMAL NUMERIC(30, 8)/*ORACLE datatype: NUMBER(30, 8)*/,
S_DOUBLE_PRECISION_FLOAT FLOAT/*ORACLE datatype: FLOAT(126)*/,
S_PK_FORMAPPING NUMERIC(38, 0) NOT NULL/*ORACLE datatype: NUMBER(22)*/,
PRIMARY KEY (S_PK_FORMAPPING)
)

CREATE TABLE [test_excellent].[dbo].[ORA_RAWLOBTYPES]
(S_RAW VARBINARY(2000)/*ORACLE datatype: RAW(2000)*/,
S_BLOB IMAGE/*ORACLE datatype: BLOB*/,
S_BLOB_NAME VARCHAR(2000)/*ORACLE datatype: VARCHAR2(2000)*/,
S_CLOB TEXT/*ORACLE datatype: CLOB*/,
S_NCLOB TEXT/*ORACLE datatype: NCLOB*/,
S_PK_FORMAPPING NUMERIC(38, 0) NOT NULL/*ORACLE datatype: NUMBER(22)*/,
PRIMARY KEY (S_PK_FORMAPPING)
)
