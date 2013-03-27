select count (*) from DBDEST_USER.ele_BASIC_TYPES;
select count (*) from DBDEST_USER.ele_BIGDATE_TYPES;
select count (*) from DBDEST_USER.ele_BINARY_TYPES;
select count (*) from DBDEST_USER.ele_CHARACTER_TYPES;
select count (*) from DBDEST_USER.ele_CHARACTER_TYPES_LNG;
select count (*) from DBDEST_USER.ele_DATETIME_TYPES;
select count (*) from DBDEST_USER.ele_DECIMAL_TYPES;
select count (*) from DBDEST_USER.ele_MONEY_TYPES;

select count (*) from DBDEST_SEC_USER.ele_BASIC_TYPES;
select count (*) from DBDEST_SEC_USER.ele_BINARY_TYPES;
select count (*) from DBDEST_SEC_USER.ele_CHARACTER_TYPES;
select count (*) from DBDEST_SEC_USER.ele_CHARACTER_TYPES_LNG;
select count (*) from DBDEST_SEC_USER.ele_DATETIME_TYPES;
select count (*) from DBDEST_SEC_USER.ele_DECIMAL_TYPES;
select count (*) from DBDEST_SEC_USER.ele_MONEY_TYPES;

truncate table  ele_BASIC_TYPES;
truncate table  ele_BIGDATE_TYPES;
truncate table  ele_BINARY_TYPES;
truncate table  ele_CHARACTER_TYPES;
truncate table  ele_CHARACTER_TYPES_LNG;
truncate table  ele_DATETIME_TYPES;
truncate table  ele_DECIMAL_TYPES;
truncate table  ele_MONEY_TYPES;
commit;

alter index SYS_C0017014 rebuild;
alter index SYS_C0017019 rebuild;
alter index SYS_C0017021 rebuild;
alter index SYS_C0017025 rebuild;
alter index SYS_C0017029 rebuild;
alter index SYS_C0017016 rebuild;
alter index SYS_C0017027 rebuild;
alter index SYS_C0017031 rebuild;

truncate table  DATAREP_USER.ele_BASIC_TYPES;
truncate table  DATAREP_USER.ele_BINARY_TYPES;
truncate table  DATAREP_USER.ele_CHARACTER_TYPES;
truncate table  DATAREP_USER.ele_CHARACTER_TYPES_LNG;
truncate table  DATAREP_USER.ele_DATETIME_TYPES;
truncate table  DATAREP_USER.ele_DECIMAL_TYPES;
truncate table  DATAREP_USER.ele_MONEY_TYPES;
commit;

alter index DATAREP_USER.SYS_C0017078 rebuild;
alter index DATAREP_USER.SYS_C0017080 rebuild;
alter index DATAREP_USER.SYS_C0017082 rebuild;
alter index DATAREP_USER.SYS_C0017084 rebuild;
alter index DATAREP_USER.SYS_C0017086 rebuild;
alter index DATAREP_USER.SYS_C0017088 rebuild;
alter index DATAREP_USER.SYS_C0017090 rebuild;
alter index DATAREP_USER.SYS_C0017092 rebuild;   

describe ele_BASIC_TYPES;

describe ele_BINARY_TYPES;

describe ele_CHARACTER_TYPES_LNG;

describe ele_BIGDATE_TYPES;