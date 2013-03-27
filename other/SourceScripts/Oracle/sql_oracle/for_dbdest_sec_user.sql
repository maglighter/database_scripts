select count (*) from DBDEST_SEC_USER.ORA_CHARTYPES;

select count (*) from DBDEST_SEC_USER.ORA_numberTYPES;

select count (*) from DBDEST_SEC_USER.ORA_rawlobTYPES;

select count (*) from DBDEST_SEC_USER.ORA_dataTYPES;

select count(*) from DBDEST_SEC_USER.ALL_TYPES_MSSQL;

select count(*) from DBDEST_SEC_USER.ALL_TYPES_MSSQL_LONG;

select * from DBDEST_SEC_USER.ORA_CHARTYPES;

truncate table DBDEST_SEC_USER.ALL_TYPES_MSSQL_BOUNDS;

truncate table DBDEST_SEC_USER.TAB_NUMBER;

truncate table DBDEST_SEC_USER.ora_chartypes;

truncate table DBDEST_SEC_USER.ora_numbertypes;

truncate table DBDEST_SEC_USER.ora_rawlobtypes;

truncate table DBDEST_SEC_USER.ora_datatypes;
commit;

alter index DBDEST_SEC_USER.ora_chartypes_pk rebuild;

alter index DBDEST_SEC_USER.ora_numbertypes_pk rebuild;

alter index DBDEST_SEC_USER.ora_rawlobtypes_pk rebuild;

alter index DBDEST_SEC_USER.ora_datatypes_pk rebuild;
commit;

alter table DBDEST_SEC_USER.ora_chartypes_log rename to ora_chartypes;

alter table DBDEST_SEC_USER.ora_numbertypes_log rename to ora_numbertypes;

alter table DBDEST_SEC_USER.ora_rawlobtypes_log rename to ora_rawlobtypes;

alter table DBDEST_SEC_USER.ora_datatypes_log rename to ora_datatypes;

describe DBDEST_SEC_USER.ORA_DATATYPES;

describe DBDEST_SEC_USER.ORA_CHARTYPES;

describe DBDEST_SEC_USER.ORA_NUMBERTYPES;

describe DBDEST_SEC_USER.ORA_RAWLOBTYPES;

describe DBDEST_SEC_USER.TAB_NUMBER;

describe DBDEST_SEC_USER.ALL_TYPES_MSSQL_BOUNDS;

drop table DBDEST_SEC_USER.ORA_RAWLOBTYPES cascade constraints purge;