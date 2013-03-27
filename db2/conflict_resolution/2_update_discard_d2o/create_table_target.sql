
/*Generated by Informatica Data Replication Console */
/*Converting DDL from DB2 to ORACLE*/
CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_01"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_SMALLINT NUMBER(5,0)/*DB2 datatype: SMALLINT(2, 0)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_02"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_BIGINT NUMBER(19,0)/*DB2 datatype: BIGINT(8, 0)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_03"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_DECIMAL NUMBER(30, 8)/*DB2 datatype: DECIMAL(30, 8)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_04"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_REAL FLOAT(24)/*DB2 datatype: REAL(4, 0)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_05"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_DOUBLE FLOAT(53)/*DB2 datatype: DOUBLE(8)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_06"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_CHAR CHAR(100 BYTE)/*DB2 datatype: CHARACTER(100, 0)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_07"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_VARCHAR VARCHAR2(500 BYTE)/*DB2 datatype: VARCHAR(500, 0)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_08"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_GRAPHIC VARCHAR2(100 BYTE)/*DB2 datatype: GRAPHIC(100, 0)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_09"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_VARGRAPHIC VARCHAR2(500 BYTE)/*DB2 datatype: VARGRAPHIC(500, 0)*/,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_10"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_DATE DATE/*DB2 datatype: DATE(4, 0)*/,
PRIMARY KEY (S_INTEGER)
);


CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_11"
(S_INTEGER NUMBER(10,0) NOT NULL,
S_TIME TIMESTAMP(0),
PRIMARY KEY (S_INTEGER)
);


CREATE TABLE "CONFLICTS"."D2O_CONFLICT_2_12"
(S_INTEGER NUMBER(10,0) NOT NULL/*DB2 datatype: INTEGER(4, 0)*/,
S_TIMESTAMP TIMESTAMP(6)/*DB2 datatype: TIMESTAMP(10, 6)*/,
PRIMARY KEY (S_INTEGER)
);

/*
CREATE TABLE "D2O_CONFLICT_2_13"
(S_INTEGER NUMBER(10,0) NOT NULL,
S_LONG_VARGRAPHIC CLOB,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "D2O_CONFLICT_2_14"
(S_INTEGER NUMBER(10,0) NOT NULL,
S_LONG_VARCHAR CLOB,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "D2O_CONFLICT_2_15"
(S_INTEGER NUMBER(10,0) NOT NULL,
S_CLOB CLOB,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "D2O_CONFLICT_2_16"
(S_INTEGER NUMBER(10,0) NOT NULL,
S_DBCLOB CLOB,
PRIMARY KEY (S_INTEGER)
);

CREATE TABLE "D2O_CONFLICT_2_17"
(S_INTEGER NUMBER(10,0) NOT NULL,
S_BLOB BLOB,
PRIMARY KEY (S_INTEGER)
);
*/
