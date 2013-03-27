select
count(*)
from conflicts.d2o_conflict_3_11
where to_char(s_time,'HH24:MI:SS') <> '14:20:19'
