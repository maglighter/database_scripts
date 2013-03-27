--insert range list table
declare 
    begin
for c in 1 .. 2 loop
insert into user1.ora_rangelist_part_table
(s_date, s_number, s_varchar)
values(
 '10032012',
 round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
 'varchar2'
 );
    insert into user1.ora_rangelist_part_table
(s_date, s_number, s_varchar)
select
 TO_DATE('12-03-2012','DD-MM-YYYY'),
 round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
 'varchar1'
 from dual;
 insert into user1.ora_rangelist_part_table
(s_date, s_number, s_varchar)
select
 TO_DATE('10-06-2012','DD-MM-YYYY'),
 round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
 'varchar3'
 from dual;
    insert into user1.ora_rangelist_part_table
(s_date, s_number, s_varchar)
select
 TO_DATE('12-06-2012','DD-MM-YYYY'),
 round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
 'varchar4'
 from dual;
 END LOOP;
 COMMIT;
 end;