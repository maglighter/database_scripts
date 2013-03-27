select sum(res) from ((
select
count(*) as res
from conflicts.d2o_conflict_3_01
where s_smallint <> 80
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_02
where s_bigint <> 20
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_03
where s_decimal <> 0.81292206
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_04
where abs(s_real - 1.8129221) > 0.00001
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_05
where abs(s_double - 0.812922062730846) > 0.00000001
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_06
where s_char <> 'updates char1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_07
where s_varchar <> 'updates varchar1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_08
where s_graphic <> 'updates graphic1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_09
where s_vargraphic <> 'updates vargraphic1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_10
where s_date <> '2013-02-06'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_11
where s_time <> '15:15:20'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_12
where s_timestamp <> '2013-02-06 15:15:20.063'
--) union all (
/*
select
count(*) as res
from conflicts.d2o_conflict_3_13
where s_long_vargraphic <> 'updates long_vargraphic1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_14
where s_long_varchar <> 'updates varchar1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_15
where s_clob <> 'clob here1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_16
where s_dbclob <> 'dblcob here1'
) union all (
select
count(*) as res
from conflicts.d2o_conflict_3_17
where s_blob <> blob('blob here1')
*/
));
