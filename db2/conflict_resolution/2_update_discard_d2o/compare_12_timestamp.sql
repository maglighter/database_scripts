select
count(*) as res
from conflicts.d2o_conflict_2_12
where s_timestamp <> TO_TIMESTAMP('2011-02-16 15:12:03.378','YYYY-MM-DD HH24:MI:SS.FF')
