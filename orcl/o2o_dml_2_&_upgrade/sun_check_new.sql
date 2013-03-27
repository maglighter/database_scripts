--select *
--nvl(t1.S_NUMBER_MAX, null) = nvl(t2.S_NUMBER_MAX, null)
select sum(res) from ((
select count(*) as res
from DATAREP_USER.ORA_NUMBERTYPES T1 join TAR_USER.ORA_NUMBERTYPES T2
on t1.s_pk_formapping=t2.s_pk_formapping 
where 1<>1
or t1.S_NUMBER_MAX <> t2.S_NUMBER_MAX
or t1.S_NUMBER_MID <> t2.S_NUMBER_MID
or t1.S_NUMBER_MIN <> t2.S_NUMBER_MIN
or t1.S_INTEGER <> t2.S_INTEGER
or t1.S_BINARY_DOUBLE <> t2.S_BINARY_DOUBLE
or t1.S_BINARY_FLOAT <> t2.S_BINARY_FLOAT
or t1.S_DECIMAL_MAX <> t2.S_DECIMAL_MAX
or t1.S_DECIMAL_MID <> t2.S_DECIMAL_MID
or t1.S_DECIMAL_MIN <> t2.S_DECIMAL_MIN
or t1.S_DOUBLE_PRECISION_FLOAT_MAX <> t2.S_DOUBLE_PRECISION_FLOAT_MAX
or t1.S_DOUBLE_PRECISION_FLOAT_MID <> t2.S_DOUBLE_PRECISION_FLOAT_MID  
or t1.S_DOUBLE_PRECISION_FLOAT_MIN <> t2.S_DOUBLE_PRECISION_FLOAT_MIN
) union all (
select count(*) as res
from DATAREP_USER.ORA_CHARTYPES T1 join TAR_USER.ORA_CHARTYPES T2
on t1.s_pk_formapping=t2.s_pk_formapping
where 1<>1
or t1.S_VARCHAR2_MAX <> t2.S_VARCHAR2_MAX
or t1.S_VARCHAR2_MID <> t2.S_VARCHAR2_MID
or t1.S_VARCHAR2_MIN <> t2.S_VARCHAR2_MIN
or t1.S_CHAR_MAX <> t2.S_CHAR_MAX
or t1.S_CHAR_MID <> t2.S_CHAR_MID
or t1.S_CHAR_MIN <> t2.S_CHAR_MIN
or t1.S_NVARCHAR2_MAX <> t2.S_NVARCHAR2_MAX
or t1.S_NVARCHAR2_MID <> t2.S_NVARCHAR2_MID
or t1.S_NVARCHAR2_MIN <> t2.S_NVARCHAR2_MIN
or t1.S_NCHAR_MAX <> t2.S_NCHAR_MAX
or t1.S_NCHAR_MID <> t2.S_NCHAR_MID
or t1.S_NCHAR_MIN <> t2.S_NCHAR_MIN
) union all (
select count(*) as res
from DATAREP_USER.ORA_DATATYPES T1 join TAR_USER.ORA_DATATYPES T2
on t1.s_pk_formapping=t2.s_pk_formapping
where 1<>1
or t1.S_DATE <> t2.S_DATE
or t1.S_TIMESTAMP_WITOUT_TZ_MAX <> t2.S_TIMESTAMP_WITOUT_TZ_MAX
or t1.S_TIMESTAMP_WITOUT_TZ_MID <> t2.S_TIMESTAMP_WITOUT_TZ_MID
or t1.S_TIMESTAMP_WITOUT_TZ_MIN <> t2.S_TIMESTAMP_WITOUT_TZ_MIN
or t1.S_TIMESTAMP_WITH_TZ_MAX <> t2.S_TIMESTAMP_WITH_TZ_MAX
or t1.S_TIMESTAMP_WITH_TZ_MID <> t2.S_TIMESTAMP_WITH_TZ_MID
or t1.S_TIMESTAMP_WITH_TZ_MIN <> t2.S_TIMESTAMP_WITH_TZ_MIN
or t1.S_TIMESTAMP_WITH_LOCAL_TZ_MAX <> t2.S_TIMESTAMP_WITH_LOCAL_TZ_MAX
or t1.S_TIMESTAMP_WITH_LOCAL_TZ_MID <> t2.S_TIMESTAMP_WITH_LOCAL_TZ_MID
or t1.S_TIMESTAMP_WITH_LOCAL_TZ_MIN <> t2.S_TIMESTAMP_WITH_LOCAL_TZ_MIN
or t1.S_INTERVAL_DAY_SECOND <> t2.S_INTERVAL_DAY_SECOND
or t1.S_INTERVAL_YEAR_MONTH <> t2.S_INTERVAL_YEAR_MONTH
)
union all (
select count(*) as reS
from DATAREP_USER.ORA_RAWLOBTYPES T1 join TAR_USER.ORA_RAWLOBTYPES T2
on t1.s_pk_formapping=t2.s_pk_formapping
where 1<>1
or t1.S_RAW_MAX <> t2.S_RAW_MAX
or t1.S_RAW_MID <> t2.S_RAW_MID
or t1.S_RAW_MIN <> t2.S_RAW_MIN
) union all (
select count(*) as res from tar_user.ora_RAWLOBTYPES a join 
datarep_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
where DBMS_LOB.compare(a.s_nclob, b.s_nclob) <> 0
) union all (
select count(*) as res from tar_user.ora_RAWLOBTYPES a join 
datarep_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
where DBMS_LOB.compare(a.s_clob, b.s_clob) <>0
) union all (
select count(*) as res from tar_user.ora_RAWLOBTYPES a join 
datarep_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
where DBMS_LOB.compare(a.s_blob, b.s_blob) <>0
))
;
