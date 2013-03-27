---------count differences

select COUNT(*) from [db_to_ora].[testing].[ORA_CHARTYPES];
select COUNT(*) from [db_sec_targ].[testing].[ORA_CHARTYPES];

select COUNT(*) from [db_to_ora].[testing].[ORA_NUMBERTYPES];
select COUNT(*) from [db_sec_targ].[testing].[ORA_NUMBERTYPES];

select COUNT(*) from [db_to_ora].[testing].[ORA_RAWLOBTYPES];
select COUNT(*) from [db_sec_targ].[testing].[ORA_RAWLOBTYPES];

select COUNT(*) from [db_to_ora].[testing].[ORA_DATATYPES];
select COUNT(*) from [db_sec_targ].[testing].[ORA_DATATYPES];

---------value differences
select
 COUNT(*)
 from [db_to_ora].[testing].[ORA_CHARTYPES] t join  [db_sec_targ].[testing].[ORA_CHARTYPES] tt on t.S_PK_FORMAPPING=tt.s_pk_formapping
where t.S_PK_FORMAPPING<>tt.S_PK_FORMAPPING
or t.s_char<>tt.s_char
or t.s_nchar<>tt.s_nchar
or t.s_nvarchar2<>tt.s_nvarchar2
or t.s_varchar2<>tt.s_varchar2
;

select
 COUNT(*)
 from [db_to_ora].[testing].[ORA_NUMBERTYPES] t join  [db_sec_targ].[testing].[ORA_NUMBERTYPES] tt on t.S_PK_FORMAPPING=tt.s_pk_formapping
where t.S_PK_FORMAPPING<>tt.S_PK_FORMAPPING
or t.S_BINARY_DOUBLE<>tt.S_BINARY_DOUBLE
or t.S_BINARY_FLOAT<>tt.S_BINARY_FLOAT
or t.S_DECIMAL<>tt.S_DECIMAL
or t.S_DOUBLE_PRECISION_FLOAT<>tt.S_DOUBLE_PRECISION_FLOAT
or t.S_INTEGER<>tt.S_INTEGER
or t.S_NUMBER<>tt.S_NUMBER
;

select
 COUNT(*)
 from [db_to_ora].[testing].[ORA_RAWLOBTYPES] t join  [db_sec_targ].[testing].[ORA_RAWLOBTYPES] tt on t.S_PK_FORMAPPING=tt.s_pk_formapping
where t.S_PK_FORMAPPING<>tt.S_PK_FORMAPPING
or t.S_RAW<>tt.S_RAW
or convert(varchar(8),CAST(t.S_BLOB as varbinary(max))) <> convert(varchar(8), CAST(tt.S_BLOB as varbinary(max)))
or t.S_BLOB_NAME<>tt.S_BLOB_NAME
or CAST(t.S_CLOB as varchar(max))<>CAST(tt.S_CLOB as varchar(max))
or CAST(t.S_NCLOB as nvarchar(max))<> CAST(tt.S_NCLOB as nvarchar(max))
;

select
 COUNT(*)
 from [db_to_ora].[testing].[ORA_DATATYPES] t join  [db_sec_targ].[testing].[ORA_DATATYPES] tt on t.S_PK_FORMAPPING=tt.s_pk_formapping
where t.S_PK_FORMAPPING<>tt.S_PK_FORMAPPING
or t.S_DATE<>tt.S_DATE
or t.S_TIMESTAMP_WITOUT_TZ<>tt.S_TIMESTAMP_WITOUT_TZ
or t.S_TIMESTAMP_WITH_TZ<>tt.S_TIMESTAMP_WITH_TZ
or t.S_TIMESTAMP_WITH_LOCAL_TZ<>tt.S_TIMESTAMP_WITH_LOCAL_TZ
;

-------------not mapped values
 select count(*) from 
 [db_to_ora].[testing].[ORA_CHARTYPES]
 where 
 S_CHAR is null
 or S_NCHAR  is null
 or S_NVARCHAR2 is null
 or S_VARCHAR2 is null
 ;
 
 select count(*) from 
 [db_to_ora].[testing].[ORA_NUMBERTYPES]
 where 
 S_BINARY_DOUBLE is null
 or S_BINARY_FLOAT is null
 or S_DECIMAL is null
 or S_DOUBLE_PRECISION_FLOAT is null
 or S_INTEGER is null
 or S_NUMBER is null
;

select count(*) from 
 [db_to_ora].[testing].[ORA_RAWLOBTYPES]
 where 
 S_BLOB is null
 or S_BLOB_NAME is null
 or S_CLOB is null
 or S_NCLOB is null
 or S_RAW is null
 ;
 
 select count(*) from 
 [db_to_ora].[testing].[ORA_DATATYPES]
 where 
 S_DATE is null
 or S_TIMESTAMP_WITH_LOCAL_TZ is null
 or S_TIMESTAMP_WITH_TZ is null
 or S_TIMESTAMP_WITOUT_TZ is null
 ;
 
  select count(*) from 
 [db_sec_targ].[testing].[ORA_CHARTYPES]
 where 
 S_CHAR is null
 or S_NCHAR  is null
 or S_NVARCHAR2 is null
 or S_VARCHAR2 is null
 ;
 
 select count(*) from 
 [db_sec_targ].[testing].[ORA_NUMBERTYPES]
 where 
 S_BINARY_DOUBLE is null
 or S_BINARY_FLOAT is null
 or S_DECIMAL is null
 or S_DOUBLE_PRECISION_FLOAT is null
 or S_INTEGER is null
 or S_NUMBER is null
;

select count(*) from 
 [db_sec_targ].[testing].[ORA_RAWLOBTYPES]
 where 
 S_BLOB is null
 or S_BLOB_NAME is null
 or S_CLOB is null
 or S_NCLOB is null
 or S_RAW is null
 ;
 
 select count(*) from 
 [db_sec_targ].[testing].[ORA_DATATYPES]
 where 
 S_DATE is null
 or S_TIMESTAMP_WITH_LOCAL_TZ is null
 or S_TIMESTAMP_WITH_TZ is null
 or S_TIMESTAMP_WITOUT_TZ is null
 ;