declare 
      v_id   INT;
      v_blob LONG RAW;
      v_cnt INT;
begin
--for c in 1 .. &1 loop
--begin

select count(*) into v_cnt from dbsync_user.ora_numbertypes;

--DELETE FROM dbsync_user.ora_NUMBERTYPES
--      WHERE s_pk_formapping =
--                         (SELECT MAX (s_pk_formapping)
--                            FROM (SELECT s_pk_formapping
--                                   FROM dbsync_user.ora_NUMBERTYPES
--                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
--                                   
--commit;

--exception
--when others then null;
--end;

--for c in 1 .. 2 loop
-- --number inserts 
--      INSERT INTO dbsync_user.ora_numbertypes
--                (s_number, s_integer, s_binary_double, s_binary_float,
--                  s_decimal, s_double_precision_float)
--         SELECT 
--               round(DBMS_RANDOM.random/DBMS_RANDOM.random,10), 
--                DBMS_RANDOM.random,
--                DBMS_RANDOM.random / DBMS_RANDOM.random,
--                DBMS_RANDOM.random / DBMS_RANDOM.random + DBMS_RANDOM.random,
--                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
--                DBMS_RANDOM.random / DBMS_RANDOM.random / 3
--           FROM DUAL;
--           
--   commit;
--end loop; 
               


declare cursor c is select * from dbsync_user.ora_numbertypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM dbsync_user.ora_numbertypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt))) for update;
begin
   for c1 in c
      loop 
      update dbsync_user.ora_numbertypes
      set
                  (s_number, s_integer, s_binary_double, s_binary_float,
                   s_decimal, s_double_precision_float) =
         (SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10), 
                DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random + DBMS_RANDOM.random,
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3
           FROM DUAL)
           where CURRENT OF c; 
      end loop;
  commit;
end;


--end loop;
end;
                                   

