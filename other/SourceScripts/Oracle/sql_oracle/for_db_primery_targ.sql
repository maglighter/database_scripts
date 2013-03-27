select count (*) as chartypes from DB_primery_targ.ORA_CHARTYPES;

select count (*) as numbertypes from DB_primery_targ.ORA_numberTYPES;

select count (*) as rawlobtypes from DB_primery_targ.ORA_rawlobTYPES;

select count (*) as datatypes from DB_primery_targ.ORA_dataTYPES;

select count (*) from db_primery_targ.tab_number;

select count (*) from DB_PRIMERY_TARG.COLUMN_TEST;

truncate table DB_PRIMERY_TARG.COLUMN_TEST;

truncate table db_primery_targ.tab_number;

truncate table db_primery_targ.ora_chartypes;

truncate table db_primery_targ.ora_numbertypes;

truncate table db_primery_targ.ora_rawlobtypes;

truncate table db_primery_targ.ora_datatypes;
commit;

alter index db_primery_targ.ora_chartypes_pk rebuild;

alter index db_primery_targ.ora_numbertypes_pk rebuild;

alter index db_primery_targ.ora_rawlobtypes_pk rebuild;

alter index db_primery_targ.ora_datatypes_pk rebuild;
commit;

describe DB_PRIMERY_TARG.ORA_DATATYPES;

describe DB_PRIMERY_TARG.ORA_NUMBERTYPES;

describe DB_PRIMERY_TARG.ORA_RAWLOBTYPES;

describe DB_primery_targ.tab_number;

describe DB_PRIMERY_TARG.COLUMN_TEST; 

select count(*) from DB_primery_targ.ORA_numberTYPES where s_number<0;

select count(*) from DB_primery_targ.ORA_numberTYPES where s_number>0;

select count(*) from DBSYNC_USER.ORA_NUMBERTYPES where s_number<0;

select s_number from DB_primery_targ.ORA_numberTYPES where s_number<0;

select * from DB_PRIMERY_TARG.ORA_RAWLOBTYPES;

drop table DB_primery_targ.COLUMN_TEST cascade constraints;