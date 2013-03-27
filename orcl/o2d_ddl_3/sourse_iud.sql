INSERT INTO O2D_DDL_3.O2D_DDL_3_NUMBERTYPES
(
    s_number_max,
    s_number_mid,
    s_number_min,
    s_integer,
    s_binary_double,
    s_binary_float,
    s_decimal_max,
    s_decimal_mid,
    s_decimal_min,
    s_double_precision_float_max,
    s_double_precision_float_mid,
    s_double_precision_float_min,
    s_pk_formapping
)
VALUES
(
    28.1584,
    0.1806,
    0.3,
    2531035149,
    0.13024826,
    1.22039757E9,
    -32.12840254,
    -0.42134705,
    0.3,
    0.272191589,
    6.2314433,
    -4,
    3
);

INSERT INTO O2D_DDL_3.O2D_DDL_3_CHARTYPES
(
    s_varchar2_max, 
    s_varchar2_mid, 
    s_varchar2_min,
    s_char_max, 
    s_char_mid, 
    s_char_min,
    s_nvarchar2_max, 
    s_nvarchar2_mid, 
    s_nvarchar2_min,
    s_nchar_max, 
    s_nchar_mid, 
    s_nchar_min,
    s_pk_formapping
)
VALUES 
(
    'T_VARCHAR2_MAX',
    'WARCHAR2_MID',
    'T',
    'T_CHAR_MAX',
    'DHAR_MID',
    'T',
    'T_NVARCHAR2_MAX',
    'OVARCHAR2_MID',
    'T',
    'T_NCHAR_MAX',
    'OCHAR_MID',
    'T',
    3
);

INSERT INTO O2D_DDL_3.O2D_DDL_3_DATATYPES
(
    s_date,
    s_timestamp_witout_tz_max,
    s_timestamp_witout_tz_mid,
    s_timestamp_witout_tz_min,
    s_pk_formapping
)
VALUES
(
    TO_DATE('2012.02.09','yyyy.mm.dd'),
    TO_TIMESTAMP('2000-03-09 00:04:04.323','YYYY-MM-DD HH24:MI:SS.FF'),
    TO_TIMESTAMP('2009-03-03 00:39:44.330','YYYY-MM-DD HH24:MI:SS.FF'),
    TO_TIMESTAMP('2010-05-08 00:07:04.000','YYYY-MM-DD HH24:MI:SS.FF'),
    3
);

INSERT INTO O2D_DDL_3.O2D_DDL_3_RAWLOBTYPES
(
    S_RAW_MAX,
    S_RAW_MID,
    S_RAW_MIN,
    S_BLOB,
    S_CLOB,
    S_PK_FORMAPPING
)
VALUES
(
    hextoraw('33bc'),
    hextoraw('bf32'),
    hextoraw('3A'),
    hextoraw('553d7a34'),
    hextoraw('733e7a32'),
    3
);

UPDATE O2D_DDL_3.O2D_DDL_3_NUMBERTYPES set s_integer=12839 where S_PK_FORMAPPING=2;
UPDATE O2D_DDL_3.O2D_DDL_3_CHARTYPES set s_char_mid='ch' where S_PK_FORMAPPING=2;
UPDATE O2D_DDL_3.O2D_DDL_3_DATATYPES set s_date=TO_DATE('2012.03.09','yyyy.mm.dd') where S_PK_FORMAPPING=2;
UPDATE O2D_DDL_3.O2D_DDL_3_RAWLOBTYPES set S_RAW_MAX=hextoraw('53bc') where S_PK_FORMAPPING=2;
commit;
