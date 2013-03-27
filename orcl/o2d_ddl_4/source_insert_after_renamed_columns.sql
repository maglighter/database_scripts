INSERT INTO O2D_DDL_4.O2D_DDL_4_NUMBERTYPES
(
    s_number_max_r,
    s_number_mid_r,
    s_number_min_r,
    s_integer_r,
    s_binary_double_r,
    s_binary_float_r,
    s_decimal_max_r,
    s_decimal_mid_r,
    s_decimal_min_r,
    s_double_precision_float_max_r,
    s_double_precision_float_mid_r,
    s_double_precision_float_min_r,
    s_pk_formapping_r
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
    3
);

INSERT INTO O2D_DDL_4.O2D_DDL_4_CHARTYPES
(
    s_varchar2_max_r, 
    s_varchar2_mid_r, 
    s_varchar2_min_r,
    s_char_max_r, 
    s_char_mid_r, 
    s_char_min_r,
    s_nvarchar2_max_r, 
    s_nvarchar2_mid_r, 
    s_nvarchar2_min_r,
    s_nchar_max_r, 
    s_nchar_mid_r, 
    s_nchar_min_r,
    s_pk_formapping_r
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
    3
);

INSERT INTO O2D_DDL_4.O2D_DDL_4_DATATYPES
(
    s_date_r,
    s_timestamp_witout_tz_max_r,
    s_timestamp_witout_tz_mid_r,
    s_timestamp_witout_tz_min_r,
    s_pk_formapping_r
)
VALUES
(
    TO_DATE('2012.02.08','yyyy.mm.dd'),
    TO_TIMESTAMP('2000-03-09 00:04:03.323','YYYY-MM-DD HH24:MI:SS.FF'),
    TO_TIMESTAMP('2009-03-03 00:39:43.330','YYYY-MM-DD HH24:MI:SS.FF'),
    TO_TIMESTAMP('2010-05-08 00:07:03.000','YYYY-MM-DD HH24:MI:SS.FF'),
    3
);

INSERT INTO O2D_DDL_4.O2D_DDL_4_RAWLOBTYPES
(
    S_RAW_MAX_r,
    S_RAW_MID_r,
    S_RAW_MIN_r,
    S_BLOB_r,
    S_CLOB_r,
    s_pk_formapping_r
)
VALUES
(
    hextoraw('23bc'),
    hextoraw('af32'),
    hextoraw('2A'),
    hextoraw('453d7a34'),
    hextoraw('633e7a32'),
    3
);
commit;
