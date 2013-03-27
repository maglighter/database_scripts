ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_NUMBER_MAX INTEGER;
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_NUMBER_MID BINARY_DOUBLE;
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_NUMBER_MIN BINARY_FLOAT;
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_INTEGER DECIMAL(30,8);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_BINARY_DOUBLE DECIMAL(15,8);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DECIMAL_MAX FLOAT(126);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DECIMAL_MID FLOAT(63);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DECIMAL_MIN FLOAT(1);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DOUBLE_PRECISION_FLOAT_MAX NUMBER(38,10);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DOUBLE_PRECISION_FLOAT_MID NUMBER(19,10);

ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_VARCHAR2_MAX NCHAR(1000);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_VARCHAR2_MID NCHAR(500);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_VARCHAR2_MIN NCHAR(1);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_CHAR_MAX VARCHAR2(4000 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_CHAR_MID VARCHAR2(2000 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_CHAR_MIN VARCHAR2(1 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NVARCHAR2_MAX CHAR(2000 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NVARCHAR2_MID CHAR(1000 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NVARCHAR2_MIN CHAR(1 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NCHAR_MAX NVARCHAR2(2000);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NCHAR_MID NVARCHAR2(1000);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NCHAR_MIN NVARCHAR2(1);

ALTER TABLE O2D_DDL_5.O2D_DDL_5_DATATYPES MODIFY S_DATE TIMESTAMP(0);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_DATATYPES MODIFY S_TIMESTAMP_WITOUT_TZ_MAX DATE;
ALTER TABLE O2D_DDL_5.O2D_DDL_5_DATATYPES MODIFY S_TIMESTAMP_WITOUT_TZ_MID TIMESTAMP(9);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_DATATYPES MODIFY S_TIMESTAMP_WITOUT_TZ_MIN TIMESTAMP(6);
commit;
