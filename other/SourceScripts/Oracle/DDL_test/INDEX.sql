--ADD INDEX

CREATE TABLE DDL_INDEX_ADD
(
Col1 NUMBER,
Col2 VARCHAR(32)
);

CREATE INDEX DDL_IDX ON DDL_INDEX_ADD(Col1);

--DROP INDEX

DROP INDEX DDL_IDX;