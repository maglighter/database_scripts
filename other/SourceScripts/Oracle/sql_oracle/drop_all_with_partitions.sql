--CREATE TABLESPACE alldata
--DATAFILE '/oravl01/oracle/oradata_10/orcl/partition/alldata.dbf' SIZE 10M
--BLOCKSIZE 8192
--EXTENT MANAGEMENT LOCAL UNIFORM SIZE 256K
--SEGMENT SPACE MANAGEMENT AUTO
--ONLINE;

DROP TABLE ORA_range_partition_table cascade constraints purge;
DROP TABLE ora_hashpartition_table cascade constraints purge;
DROP TABLE ORA_listpartition_table cascade constraints purge;
DROP TABLE ORA_system_part_table cascade constraints purge;
DROP TABLE ora_rangelist_part_table cascade constraints purge;
DROP TABLE ora_rangehash_part_table cascade constraints purge;

drop SEQUENCE ORA_PK_ID1;
drop SEQUENCE ORA_PK_ID2;
drop SEQUENCE ORA_PK_ID3;
drop SEQUENCE ORA_PK_ID4;
drop SEQUENCE ORA_PK_ID5;
drop SEQUENCE ORA_PK_ID6;

drop table test_as_select cascade constraints purge;
drop table test_ddl_all_datatypes cascade constraints purge;
drop table test_composite_pk cascade constraints purge;
drop table test_composite_pk2 cascade constraints purge;
drop table test_compess_tab cascade constraints purge;
drop table test_compess_tab2 cascade constraints purge;

DROP TABLE simple_iot cascade constraints purge;
DROP TABLE compressed_iot cascade constraints purge;
DROP TABLE complex_iot cascade constraints purge;
Drop Table complex_iot_complex cascade constraints purge;

drop trigger ORA_PK_TRG_hashpart;
drop trigger ORA_PK_TRG_hashpart;
drop trigger ORA_PK_TRG_list_part;
drop trigger ORA_PK_TRG_system_part;
drop trigger ORA_PK_TRG_rangelist;
drop trigger ORA_PK_TRG_rangehashpart;

--DROP TABLESPACE TBLSP_PARTITION_1 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE TBLSP_PARTITION_2 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE TBLSP_PARTITION_3 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE HASH_PART1 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE HASH_PART2 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE rangelist_PARTITION_1 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE rangelist_PARTITION_2 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE LISTHASH_PART1 INCLUDING CONTENTS AND DATAFILES;
--DROP TABLESPACE LISTHASH_PART2 INCLUDING CONTENTS AND DATAFILES;