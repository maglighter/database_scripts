--COL ADD

CREATE TABLE DDL_COL_ADD_DROP
(
Col1 NUMBER,
Col2 VARCHAR(32)
);

ALTER TABLE DDL_COL_ADD_DROP ADD (Col3_NEW FLOAT);

--COL DROP
ALTER TABLE DDL_COL_ADD_DROP DROP COLUMN Col2;