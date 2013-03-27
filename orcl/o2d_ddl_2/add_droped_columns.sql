ALTER TABLE O2D_DDL_2.O2D_DDL_2_NUMBERTYPES ADD (
    S_NUMBER_MAX NUMBER(38,10),
    S_BINARY_FLOAT BINARY_FLOAT,
    S_DOUBLE_PRECISION_FLOAT_MIN FLOAT(1));
ALTER TABLE O2D_DDL_2.O2D_DDL_2_CHARTYPES ADD (
    S_VARCHAR2_MAX VARCHAR2(4000 BYTE),
    S_NVARCHAR2_MAX NVARCHAR2(2000),
    S_NCHAR_MIN NCHAR(1));
ALTER TABLE O2D_DDL_2.O2D_DDL_2_DATATYPES ADD (
    S_DATE DATE,
    S_TIMESTAMP_WITOUT_TZ_MID TIMESTAMP(6),
    S_TIMESTAMP_WITOUT_TZ_MIN TIMESTAMP(0));
ALTER TABLE O2D_DDL_2.O2D_DDL_2_RAWLOBTYPES ADD (
    S_RAW_MAX RAW(2000),
    S_RAW_MIN RAW(1),
    S_CLOB CLOB);
commit;