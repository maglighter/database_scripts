declare 
      v_id   INT;
      v_blob LONG RAW;
      v_cnt INT;
begin
for c in 1 .. &1 loop
begin

--SELECT max(col_id) INTO v_id FROM dbsync_user.tab_number;

--Insert into dbsync_user.tab_number(col_id) values (v_id+1);

SELECT max(col_id) INTO v_id FROM dbdest_user.tab_number;

Update dbdest_user.tab_number set number_col=v_id;

exception
when others then null;
end;

end loop;
end;                                   
/

show errors
exit                                 