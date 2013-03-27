INSERT INTO O2D_DDL_4.O2D_DDL_4_NUMBERTYPES
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
    28.0584,
    0.0806,
    0.2,
    1531035149,
    0.03024826,
    1.12039757E9,
    -32.91840254,
    -0.32134705,
    0.2,
    0.172191589,
    6.1314433,
    -3,
    2
);

INSERT INTO O2D_DDL_4.O2D_DDL_4_CHARTYPES
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
    'S_VARCHAR2_MAX',
    'VARCHAR2_MID',
    'S',
    'S_CHAR_MAX',
    'CHAR_MID',
    'S',
    'S_NVARCHAR2_MAX',
    'NVARCHAR2_MID',
    'S',
    'S_NCHAR_MAX',
    'NCHAR_MID',
    'S',
    2
);

INSERT INTO O2D_DDL_4.O2D_DDL_4_DATATYPES
(
--    s_date,
    s_timestamp_witout_tz_max,
    s_timestamp_witout_tz_mid,
--    s_timestamp_witout_tz_min,
    s_pk_formapping
)
VALUES
(
--    TO_DATE('2012.02.08','yyyy.mm.dd'),
    TO_TIMESTAMP('2000-03-09 00:04:03.323','YYYY-MM-DD HH24:MI:SS.FF'),
    TO_TIMESTAMP('2009-03-03 00:39:43.330','YYYY-MM-DD HH24:MI:SS.FF'),
--    TO_TIMESTAMP('2010-05-08 00:07:03.000','YYYY-MM-DD HH24:MI:SS.FF'),
    2
);

INSERT INTO O2D_DDL_4.O2D_DDL_4_RAWLOBTYPES
(
    S_RAW_MAX,
    S_RAW_MID,
    S_RAW_MIN,
    S_BLOB,
    S_CLOB,
    s_pk_formapping
)
VALUES
(
    hextoraw('23bc'),
    hextoraw('af32'),
    hextoraw('2A'),
    hextoraw('453d7a34'),
    hextoraw('633e7a32'),
    2
);

commit;
