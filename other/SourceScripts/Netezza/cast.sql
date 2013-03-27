
select 
cast(s_bigint as varchar(50)) as s_bigint,
cast(S_INT as varchar(50)) as s_int,
cast(S_SMALLINT as varchar(50))as s_smallintt,
cast(S_TINYINT as varchar(50))as s_tinyint,
cast(S_BIT as varchar(50))as s_bit,
cast(S_DECIMAL as varchar(50))as s_decimal,
cast(S_NUMERIC as varchar(50))as s_numeric,
cast(S_MONEY as varchar(50))as s_money,
cast(S_SMALLMONEY as varchar(50))as s_smallmoney,
cast(S_FLOAT as varchar(50))as s_float,
cast(S_datetime as varchar(50))as s_datetime,
cast(S_smaldatetime as varchar(50))as s_smaldatetime,
cast(S_varchar as varchar(50))as s_varchar,
cast(S_char as varchar(50))as s_char,
cast(S_nchar as varchar(50))as s_nchar,
cast(S_date as varchar(50))as s_date,
cast(S_datetime2 as varchar(50))as s_datetime2,
cast(S_datetimeoffs as varchar(50))as s_datetimeoffs,
cast(S_time as varchar(50))as s_time,
cast(S_real as varchar(50))as s_real
from"public"."test_uniq";