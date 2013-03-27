select
count(*)
from conflicts.d2o_conflict_3_10
where s_date <> to_date('2012/03/09','yyyy/mm/dd')
