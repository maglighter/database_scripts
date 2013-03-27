---------count differences

select count(*) from dbo.all_types_mssql;
select COUNT(*) from dbo.all_types_mssql_dst;

select COUNT(*) from dbo.all_types_mssql_long;
select COUNT(*) from dbo.all_types_mssql_long_dst;

---------value differences
select
 COUNT(*)
 from dbo.all_types_mssql t join  dbo.all_types_mssql_dst tt on t.s_bigint=tt.s_bigint
where t.s_binary<>tt.s_binary
or t.s_varbinmax<>tt.s_varbinmax
or t.s_bit<>tt.s_bit
or t.s_char<>tt.s_char
or t.s_date<>tt.s_date
or t.s_datetime<>tt.s_datetime
or t.s_datetimeoffs<>tt.s_datetimeoffs
or t.s_decimal<>tt.s_decimal
or t.s_float<>tt.s_float
or convert(varchar(8),CAST(t.s_image as varbinary(max))) <> convert(varchar(8), CAST(tt.s_image as varbinary(max)))
or t.s_int<>tt.s_int
or t.s_money<>tt.s_money 
or t.s_nchar<>tt.s_nchar
or CAST(t.s_ntext as nvarchar(max))<> CAST(tt.s_ntext as nvarchar(max)) 
or t.s_numeric<>tt.s_numeric
or t.s_nvarchar<>tt.s_nvarchar
or t.s_nvarcharmax<>tt.s_nvarcharmax
or t.s_real<>tt.s_real
or t.s_smaldatetime<>tt.s_smaldatetime
or t.s_smallint<>tt.s_smallint
or t.s_smallmoney<>tt.s_smallmoney 
or t.s_time <> tt.s_time
or t.s_tinyint<> tt.s_tinyint
or t.s_varbinary<>tt.s_varbinary
or t.s_varbinmax<>tt.s_varbinmax
or t.s_varchar<>tt.s_varchar
;

select 
 CAST(t.s_xml as varchar(max)), CAST(tt.s_xml as varchar(max))
 from dbo.all_types_mssql_long t join  dbo.all_types_mssql_long_dst tt on t.s_bigint=tt.s_bigint
 where 
 CAST(t.s_text as varchar(max))<>CAST(tt.s_text as varchar(max))
 or t.s_uidentify<>tt.s_uidentify
 or t.s_varcharmax<>tt.s_varcharmax
 or CAST(t.s_xml as varchar(max))<>CAST(tt.s_xml as varchar(max))
 ;
 
-------------not mapped values
 select count(*) from 
 dbo.all_types_mssql_long_dst tt
 where 
 s_text is null
 or s_uidentify is null
 or s_varcharmax is null
 or s_xml is null
 ;
 
 select
COUNT(*)
from  dbo.all_types_mssql_dst t
where t.s_binary is null
or t.s_varbinmax is null
or t.s_bit is null
or t.s_char is null
or t.s_date is null
or t.s_datetime is null
or t.s_datetimeoffs is null
or t.s_decimal is null
or t.s_float is null
or convert(varchar(8),CAST(t.s_image as varbinary(max))) is null
or t.s_int is null
or t.s_money is null
or t.s_nchar is null
or CAST(t.s_ntext as nvarchar(max)) is null
or t.s_numeric is null
or t.s_nvarchar is null
or t.s_nvarcharmax is null
or t.s_real is null
or t.s_smaldatetime is null
or t.s_smallint is null
or t.s_smallmoney is null
or t.s_time  is null
or t.s_tinyint is null
or t.s_varbinary is null
or t.s_varbinmax is null
or t.s_varchar is null
;