declare 
      v_id   INT;
      v_blob LONG RAW;
      v_cnt INT;
begin
for c in 1 .. &1 loop
begin

select count(*) into v_cnt from dbsync_user.tab_number;

DELETE FROM dbsync_user.tab_number
      WHERE col_id =
                         (SELECT MAX (col_id)
                            FROM (SELECT col_id
                                    FROM dbsync_user.tab_number
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   
commit;

exception
when others then null;
end;

for c in 1 .. 2 loop
SELECT max(col_id)
         INTO v_id
         FROM dbsync_user.tab_number;

       INSERT INTO dbsync_user.tab_number
                   ( 
                    char_clob, nchar_clob, nvarchar2_clob, number_col, col_id)
          SELECT 
                 DBMS_RANDOM.STRING ('X', 4000),
                 DBMS_RANDOM.STRING ('X', 4000), 
                 DBMS_RANDOM.STRING ('X',4000),
                 v_id,
                 v_id
          FROM DUAL;
        
   commit;
end loop;       

declare
 cursor c is select * from dbsync_user.tab_number where col_id = v_id for update;

 begin
       SELECT MAX (col_id) into v_id
                            FROM (SELECT col_id
                                    FROM dbsync_user.tab_number
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt));
                                   
       for c1 in c
       loop
       update dbsync_user.col_id
       set
                   (char_clob, nchar_clob, nvarchar2_clob) =
          (SELECT 
                 DBMS_RANDOM.STRING ('X', 4000),
                 DBMS_RANDOM.STRING ('X', 4000), 
                 DBMS_RANDOM.STRING ('X',4000)
            FROM DUAL)
            where CURRENT OF c ; 

       end loop;
        commit;
 end;

end loop;
end;                                   
/

show errors
exit                                 