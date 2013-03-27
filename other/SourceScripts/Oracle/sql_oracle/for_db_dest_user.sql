select count (*) from db_dest_user.ORA_CHARTYPES;

select count (*) from db_dest_user.ORA_numberTYPES;

select count (*) from db_dest_user.ORA_rawlobTYPES;

select count (*) from db_dest_user.ORA_dataTYPES;

select count(*) from db_dest_user.tab_number;

select * from db_dest_user.ORA_DATATYPES;

select * from db_dest_user.ALL_TYPES_MSSQL;

select * from db_dest_user.ALL_TYPES_MSSQL_LONG;

select * from db_dest_user.ORA_CHARTYPES where s_char is null;

truncate table  db_dest_user.ALL_TYPES_MSSQL;

truncate table  db_dest_user.ALL_TYPES_MSSQL_LONG;

truncate table db_dest_user.tab_number;

truncate table db_dest_user.test_adding_table;

truncate table db_dest_user.ora_chartypes;

truncate table db_dest_user.ora_numbertypes;

truncate table db_dest_user.ora_rawlobtypes;

truncate table db_dest_user.ora_datatypes;
commit;

alter index db_dest_user.ora_chartypes_pk rebuild;

alter index db_dest_user.ora_numbertypes_pk rebuild;

alter index db_dest_user.ora_rawlobtypes_pk rebuild;

alter index db_dest_user.ora_datatypes_pk rebuild;
commit;

declare 
str varchar2 (4000) default '';
begin
        for i in 1..10 loop
        str:= 'truncate table db_dest_user.ora'||i||'tab';
        execute immediate str;
        commit;
      end loop;
end; 
commit;

describe db_dest_user.ora1tab;

drop table db_dest_user.ORA_CHARTYPES cascade constraints purge;

drop table db_dest_user.ORA_NUMBERTYPES cascade constraints purge;

drop table db_dest_user.ORA_RAWLOBTYPES cascade constraints purge;

drop table db_dest_user.ORA_DATATYPES cascade constraints purge;
