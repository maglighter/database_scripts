select
count(*)
from conflicts.d2o_conflict_3_12
where s_timestamp <> TO_TIMESTAMP('2011-03-16 15:12:09.378','YYYY-MM-DD HH24:MI:SS.FF')
