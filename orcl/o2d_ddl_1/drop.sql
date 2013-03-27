drop table O2D_DDL_1.O2D_DDL_1_NUMBERTYPES;
drop table O2D_DDL_1.O2D_DDL_1_CHARTYPES;
drop table O2D_DDL_1.O2D_DDL_1_DATATYPES; 
drop table O2D_DDL_1.O2D_DDL_1_RAWLOBTYPES;
drop table O2D_DDL_1.O2D_DDL_1_IOT_OVERFLOW cascade constraints purge;
drop table O2D_DDL_1.O2D_DDL_1_IOT cascade constraints purge;
drop table O2D_DDL_1.O2D_DDL_1_LIST_PARTITIONING cascade constraints purge;
drop table O2D_DDL_1.O2D_DDL_1_RANGE_PARTITIONING cascade constraints purge;
commit;

truncate table O2D_DDL_1.O2D_DDL_1_NUMBERTYPES;
truncate table O2D_DDL_1.O2D_DDL_1_CHARTYPES;
truncate table O2D_DDL_1.O2D_DDL_1_DATATYPES; 
truncate table O2D_DDL_1.O2D_DDL_1_RAWLOBTYPES;
commit;
