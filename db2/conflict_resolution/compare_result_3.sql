select sum(res) from ((
select
count(*) as res
from conflicts.d2o_conflict_3_01
where s_smallint <> 60
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_02
where s_bigint <> 15
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_03
where s_decimal <> 0.00017038
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_04
where abs(s_real - 306.011) > 0.00001
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_05
where abs(s_double - 0.011210377251128842) > 0.00000001
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_06
where s_char <> 'char50'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_07
where s_varchar <> 'varchar50'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_08
where s_graphic <> 'graphic650'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_09
where s_vargraphic <> 'vargraphic50'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_10
where s_date <> to_date('2012/08/02','yyyy/mm/dd')
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_11
where to_char(s_time,'HH24:MI:SS') <> '14:19:18'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_12
where s_timestamp <> TO_TIMESTAMP('2011-02-16 15:12:03.378','YYYY-MM-DD HH24:MI:SS.FF')
--) union all (
/*
select
count(*) as res
from conflicts.d2o_conflict_3_13
where s_long_vargraphic <> 'long_vargaphic650'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_14
where s_long_varchar <> 'varchar650'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_15
where s_clob <> 'clob650 here'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_16
where s_dbclob <> 'dbclob650 here'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_17
where s_blob <> blob('blob650 here')
) union all (
*/
));
