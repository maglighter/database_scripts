declare

    v_cnt int;
    str varchar2 (4000) default '';
    v_limit integer;
    varray_temp varray_varchar := varray_varchar('');
    
begin
for c in 1 .. &1 loop
--deletes

begin

select count(*) into v_cnt from tab_varray_varchar;

DELETE FROM tab_varray_varchar
      WHERE id =
                         (SELECT MAX (id)
                            FROM (SELECT id
                                    FROM tab_varray_varchar
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));

commit;

exception
when others then null;

end;

--inserts


for c in 1..2 loop
      str:= 'insert into tab_varray_varchar values ('||SEQ_VARRAY_ID.nextval||', varray_varchar(';
            v_limit:=DBMS_RANDOM.VALUE (1, varray_temp.limit);
             for i in 1..v_limit loop
                if i=1
                    then  str:= str|| '''insert_varray_varchar'||i||'''';
                else
                    str:= str|| ',  ''insert_varray_varchar'||i||'''';
                end if;
             end loop;
             str:= str||'))';
        execute immediate str;
        commit;
end loop; 
--updates



end loop;
end;
/

show errors
exit