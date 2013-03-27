INSERT INTO O2D_DDL_2.O2D_DDL_2_NUMBERTYPES
(
    s_number_mid,
    s_number_min,
    s_integer,
    s_binary_double,
    s_decimal_max,
    s_decimal_mid,
    s_decimal_min,
    s_double_precision_float_max,
    s_double_precision_float_mid,
    s_pk_formapping
)
VALUES
(
    0.1806,
    0.3,
    2531035149,
    0.13024826,
    -32.10840254,
    -0.42134705,
    0.3,
    0.272191589,
    6.2314433,
    3
);

INSERT INTO O2D_DDL_2.O2D_DDL_2_CHARTYPES
(
    s_varchar2_mid, 
    s_varchar2_min,
    s_char_max, 
    s_char_mid, 
    s_char_min,
    s_nvarchar2_mid, 
    s_nvarchar2_min,
    s_nchar_max, 
    s_nchar_mid, 
    s_pk_formapping
)
VALUES 
(
    'WARCHAR2_MID',
    'T',
    'T_CHAR_MAX',
    'DHAR_MID',
    'T',
    'OVARCHAR2_MID',
    'T',
    'T_NCHAR_MAX',
    'OCHAR_MID',
    3
);

INSERT INTO O2D_DDL_2.O2D_DDL_2_DATATYPES
(
    s_timestamp_witout_tz_max,
    s_pk_formapping
)
VALUES
(
    TO_TIMESTAMP('2000-03-09 00:05:03.323','YYYY-MM-DD HH24:MI:SS.FF'),
    3
);

INSERT INTO O2D_DDL_2.O2D_DDL_2_RAWLOBTYPES
(
    S_RAW_MID,
    S_BLOB,
    S_PK_FORMAPPING
)
VALUES
(
    hextoraw('bf32'),
    hextoraw('553d7a34'),
    3
);

commit;
