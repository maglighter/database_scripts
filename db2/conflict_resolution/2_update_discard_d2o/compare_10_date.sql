select
count(*) as res
from conflicts.d2o_conflict_2_10
where s_date <> to_date('2012/08/02','yyyy/mm/dd')
