select sum(res) from ((
select
count(*) as res
from conflicts.d2o_conflict_3_01
where s_smallint <> 88
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_02
where s_bigint <> 30
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_03
where s_decimal <> 0.30017038
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_04
where s_real <> 307.011
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_05
where s_double <> 0,3112103772511288
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_06
where s_char <> 'char650'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_07
where s_varchar <> 'varchar650'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_08
where s_graphic <> 'graphic650                                                                                          '
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_09
where s_vargraphic <> 'vargraphic650'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_10
where s_date <> '08.03.2012'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_11
where s_time <> '01.01.00 14:20:18,000000000'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_12
where s_timestamp <> '16.03.11 15:12:04,378000000'
--) union all (
--select
--count(*) as res
--from conflicts.d2o_conflict_3_13
--where s_long_vargraphic <> 'long_vargaphic50'
--) union all (
--select
--count(*) as res
--from conflicts.d2o_conflict_3_14
--where s_long_varchar <> 'varchar50'
--) union all (
--select
--count(*) as res
--from conflicts.d2o_conflict_3_15
--where s_clob <> EMPTY_CLOB()
--) union all (
--select
--count(*) as res
--from conflicts.d2o_conflict_3_16
--where s_dbclob <> EMPTY_DBCLOB()
--) union all (
--select
--count(*) as res
--from conflicts.d2o_conflict_3_17
--where s_blob <> EMPTY_BLOB()

));

