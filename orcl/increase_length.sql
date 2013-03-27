ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_NUMBER_MID NUMBER(25,10);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_NUMBER_MIN NUMBER(10,5);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DECIMAL_MID DECIMAL(20,8);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DECIMAL_MIN DECIMAL(10,4);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DOUBLE_PRECISION_FLOAT_MID FLOAT(100);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_NUMBERTYPES MODIFY S_DOUBLE_PRECISION_FLOAT_MIN FLOAT(30);

ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_VARCHAR2_MID VARCHAR2(2500 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_VARCHAR2_MIN VARCHAR2(500 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_CHAR_MID CHAR(1500 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_CHAR_MIN CHAR(500 BYTE);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NVARCHAR2_MID NVARCHAR2(1500);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NVARCHAR2_MIN NVARCHAR2(500);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NCHAR_MID NCHAR(800);
ALTER TABLE O2D_DDL_5.O2D_DDL_5_CHARTYPES MODIFY S_NCHAR_MIN NCHAR(100);
commit;