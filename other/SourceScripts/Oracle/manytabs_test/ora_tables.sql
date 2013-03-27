declare 
str varchar2 (4000) default '';
begin
for i in 1..500 loop
str:= 'create table dst_test_user.oratab'||i||' (' ||
        ' somepk int not null,';
        for c in 1..30 loop
        str:= str|| ' sometxt'||c||' varchar2(100), ';
        end loop;
str:= str|| ' PRIMARY KEY (somepk))';
execute immediate str;
--  for c in 1..500 loop
--  str:= 'insert into src_test_user.oratab'||i||
--        ' ( somepk, sometxt ) values ( '||c||
--        ', ''txt'||c||''')';
--    execute immediate str;
--    commit;
--  end loop;
end loop;
end;       

declare 
str varchar2 (4000) default '';
begin
    for b in 1..500 loop -- changable PK oninsert 
        for i in 1..500 loop
        str:= 'insert into src_test_user.oratab'||i||' values (' ||b;
            for c in 1..30 loop
            str:= str|| ',  ''sometxt'||b||'''';
            end loop;
        str:= str|| ')';
        execute immediate str;
        commit;
      end loop;
    end loop;
end;       