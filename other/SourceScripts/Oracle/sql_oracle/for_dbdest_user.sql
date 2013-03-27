select count (*) from dbdest_user.ORA_CHARTYPES;

select count (*) from dbdest_user.ORA_numberTYPES;

select count (*) from dbdest_user.ORA_rawlobTYPES;

select count (*) from dbdest_user.ORA_dataTYPES;

select count(*) from DBDEST_USER.tab_number;

select count(*) from DBDEST_USER.ALL_TYPES_MSSQL;

select count(*) from DBDEST_USER.ALL_TYPES_MSSQL_LONG;

select * from DBDEST_USER.ORA_DATATYPES;

select * from DBDEST_USER.ALL_TYPES_MSSQL;

select * from DBDEST_USER.ALL_TYPES_MSSQL_LONG;

select * from DBDEST_USER.ORA_CHARTYPES where s_char is null;

truncate table  DBDEST_USER.ALL_TYPES_MSSQL;

truncate table  DBDEST_USER.ALL_TYPES_MSSQL_LONG;

truncate table  DBDEST_USER.ALL_TYPES_MSSQL_BOUNDS;

truncate table dbdest_user.tab_number;

truncate table dbdest_user.test_adding_table;

truncate table dbdest_user.ora_chartypes;

truncate table dbdest_user.ora_numbertypes;

truncate table dbdest_user.ora_rawlobtypes;

truncate table dbdest_user.ora_datatypes;
commit;

alter index dbdest_user.ora_chartypes_pk rebuild;

alter index dbdest_user.ora_numbertypes_pk rebuild;

alter index dbdest_user.ora_rawlobtypes_pk rebuild;

alter index dbdest_user.ora_datatypes_pk rebuild;
commit;

describe dbdest_user.ORA_CHARTYPES;

describe dbdest_user.ORA_NUMBERTYPES;

describe dbdest_user.ORA_RAWLOBTYPES;

describe dbdest_user.ORA_DATATYPES;

describe DBDEST_USER.tab_number;

describe DBDEST_USER.test_adding_table;

describe DBDEST_USER.ALL_TYPES_MSSQL_BOUNDS;

describe DBDEST_USER.ALL_TYPES_MSSQL;

drop table dbdest_user.ORA_CHARTYPES cascade constraints purge;

drop table dbdest_user.ORA_NUMBERTYPES cascade constraints purge;

drop table dbdest_user.ORA_RAWLOBTYPES cascade constraints purge;

drop table dbdest_user.ORA_DATATYPES cascade constraints purge;

select col_id, varchar2_col,virt_varchar2 from DBDEST_USER.tab_number;
