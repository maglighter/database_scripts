select
count(*) as res
from conflicts.d2o_conflict_2_11
where to_char(s_time,'HH24:MI:SS') <> '14:19:18'
