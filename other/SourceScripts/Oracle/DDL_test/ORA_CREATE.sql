--CREATE TABLE

CREATE TABLE DDL_CREATE_A
(
Col1 NUMBER NOT NULL PRIMARY KEY,
Col2 VARCHAR(32)
);

CREATE TABLE DDL_CREATE_B
(
Col1 NUMBER NOT NULL,
Col2 CHAR(3) NOT NULL,
Col3 VARCHAR(32) NULL,
Col4 DATE NOT NULL,
CONSTRAINT DDL_PK_B PRIMARY KEY (Col1,Col2)
);

CREATE TABLE DDL_CREATE_C
(
"Col1 @" NUMBER PRIMARY KEY,
"COl2 ##!!!" VARCHAR(32)
);

CREATE TABLE DDL_CREATE_D
(
Col1 NUMBER UNIQUE USING INDEX( CREATE INDEX DDL_IDX_D ON DDL_CREATE_D(Col1))
);
