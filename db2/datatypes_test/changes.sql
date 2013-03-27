connect to sample user fabdulin using Asdf11A@

call DB2_types_ins(5000)@
commit work@
call DB2_types_upd(1000)@
commit work@
call DB2_types_del(1000)@
commit work@

connect reset@
