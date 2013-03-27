alter table tab_number modify (
--                                           FLOAT_COL FLOAT(100),
--                                           NCHAR_COL NCHAR(100),
--                                           BIN_DOUBLE_COL BINARY_FLOAT,
--                                           BIN_FLOAT_COL BINARY_DOUBLE,
                                           VARCHAR2_COL VARCHAR2(50),
--                                           NVARCHAR2_COL NVARCHAR2(500),
                                           CHAR_COL CHAR(50));

alter table tab_number RENAME COLUMN Number_test to Number_col;
                                           
truncate table tab_number;

create index test_index_number on tab_number (Number_col);

drop index test_uindex_number;

create UNIQUE index test_uindex_number on tab_number (col_id, Number_col);

describe test_as_select

purge recyclebin