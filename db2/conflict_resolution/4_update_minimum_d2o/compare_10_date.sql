select
count(*)
from conflicts.d2o_conflict_4_10
where s_date <> to_date('2012/02/08','yyyy/mm/dd')
