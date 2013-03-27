declare 
str varchar2 (4000) default '';
begin
for i in 1..10 loop
str:= 'create table dbsync_user.ora_'||i||'_tab (' ||
        ' somepk int not null,';
        for c in 1..10 loop
        str:= str|| ' some_'||c||'_txt varchar2(100), ';
        end loop;
str:= str|| ' PRIMARY KEY (somepk))';
execute immediate str;
end loop;
end; 

declare 
str varchar2 (4000) default '';
begin
for i in 1..10 loop
str:= 'create table dbsync_user.ora'||i||'tab (' ||
        ' somepk int not null,';
        for c in 1..10 loop
        str:= str|| ' some'||c||'txt varchar2(100), ';
        end loop;
str:= str|| ' PRIMARY KEY (somepk))';
execute immediate str;
end loop;
end;

declare 
str varchar2 (4000) default '';
begin
for i in 1..5 loop
str:= 'create table dbsync_user.orc_'||i||'_oratab (' ||
        ' somepk int not null,';
        for c in 1..10 loop
        str:= str|| ' some_'||c||'_txt varchar2(100), ';
        end loop;
str:= str|| ' PRIMARY KEY (somepk))';
execute immediate str;
end loop;
end; 

declare 
str varchar2 (4000) default '';
begin
for i in 6..10 loop
str:= 'create table dbsync_user.orc_'||i||'_oratab (' ||
        ' somepk int not null,';
        for c in 1..10 loop
        str:= str|| ' more_'||c||'_txt varchar2(100), ';
        end loop;
str:= str|| ' PRIMARY KEY (somepk))';
execute immediate str;
end loop;
end; 