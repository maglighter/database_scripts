select sum(res) from ((
select
count(*) as res
from targ.d2d_conflict_2_01
where s_smallint <> 60
) union all (
select
count(*) as res
from targ.d2d_conflict_2_02
where s_bigint <> 15
) union all (
select
count(*) as res
from targ.d2d_conflict_2_03
where s_decimal <> 0.00017038
) union all (
select
count(*) as res
from targ.d2d_conflict_2_04
where s_real <> 306.011
) union all (
select
count(*) as res
from targ.d2d_conflict_2_05
where s_double <> 0.011210377251128842
) union all (
select
count(*) as res
from targ.d2d_conflict_2_06
where s_char <> 'char50'
) union all (
select
count(*) as res
from targ.d2d_conflict_2_07
where s_varchar <> 'varchar50'
) union all (
select
count(*) as res
from targ.d2d_conflict_2_08
where s_graphic <> 'graphic50'
) union all (
select
count(*) as res
from targ.d2d_conflict_2_09
where s_vargraphic <> 'vargraphic50'
) union all (
select
count(*) as res
from targ.d2d_conflict_2_10
where s_date <> '2012-02-08'
) union all (
select
count(*) as res
from targ.d2d_conflict_2_11
where s_time <> '14:19:18'
) union all (
select
count(*) as res
from targ.d2d_conflict_2_12
where s_timestamp <> '2011-02-16 15:12:03.378'
--) union all (
--select
--count(*) as res
--from targ.d2d_conflict_2_13
--where s_long_vargraphic <> 'long_vargaphic50'
--) union all (
--select
--count(*) as res
--from targ.d2d_conflict_2_14
--where s_long_varchar <> 'varchar50'
--) union all (
--select
--count(*) as res
--from targ.d2d_conflict_2_15
--where s_clob <> EMPTY_CLOB()
--) union all (
--select
--count(*) as res
--from targ.d2d_conflict_2_16
--where s_dbclob <> EMPTY_DBCLOB()
--) union all (
--select
--count(*) as res
--from targ.d2d_conflict_2_17
--where s_blob <> EMPTY_BLOB()

));
