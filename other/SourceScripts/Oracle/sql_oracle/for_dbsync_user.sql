select count (*) as CHARTYPES from ORA_CHARTYPES;

select count (*) as numberTYPES from ORA_numberTYPES;

select count (*) as rawlobTYPES from ORA_rawlobTYPES;

select count (*) as dataTYPES from ORA_dataTYPES;

select count (*) from COLUMN_TEST;

select count (*) from tab_test1;

select * from tab_test1;

truncate table tab_test1;

truncate table COLUMN_TEST;

delete from TAB_NUMBER;

delete from ora_chartypes;

delete from ora_numbertypes;

delete from ora_rawlobtypes;

delete from ora_datatypes;
commit;

alter index ora_chartypes_pk rebuild;

alter index ora_numbertypes_pk rebuild;

alter index ora_rawlobtypes_pk rebuild;

alter index ora_datatypes_pk rebuild;
commit;

alter index TAB_NUMBER_PK rebuild;

alter index TEST_NUMBER rebuild;

describe ORA_CHARTYPES;

describe ORA_NUMBERTYPES;

describe ORA_RAWLOBTYPES;

describe ORA_DATATYPES;

describe tab_number;

describe ORDERS;

select * from ORA_CHARTYPES;

select count(S_date) from ORA_DATATYPES where S_date > to_date('01.01.2000','dd/mm/yyyy');

select s_date from ORA_DATATYPES;

-- where S_date < to_date('01.01.2000','dd/mm/yyyy');

select * from ORA_CHARTYPES;

select * from tab_number;

select * from tab_test;

select count(*) from ORA_NUMBERTYPES where s_number<0;

select count(*) from ORA_NUMBERTYPES where s_number>0;

select count(*) from ORA_NUMBERTYPES where s_number=0;

select count(*) from ORA_RAWLOBTYPES where s_raw is null;

drop table tab_number cascade constraints;

declare 
str varchar2 (4000) default '';
begin
    for b in 181..200 loop -- changable PK oninsert 
        for i in 1..10 loop
        str:= 'insert into ora'||i||'tab values (' ||b;
            for c in 1..10 loop
            str:= str|| ',  ''sometxt'||b||'''';
            end loop;
        str:= str|| ')';
        execute immediate str;
        commit;
      end loop;
    end loop;
end; 
commit;


declare 
str varchar2 (4000) default '';
begin
        for i in 1..10 loop
        str:= 'truncate table ora'||i||'tab';
        execute immediate str;
        commit;
      end loop;
end; 
commit;