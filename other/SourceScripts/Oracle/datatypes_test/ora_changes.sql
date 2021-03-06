
declare 
      v_id   INT;
      v_blob LONG RAW;
      v_cnt INT;
begin
for c in 1 .. &1 loop
begin

select count(*) into v_cnt from ora_chartypes;

DELETE FROM ora_chartypes
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ora_chartypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

DELETE FROM ora_DATATYPES
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ora_DATATYPES
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

DELETE FROM ora_NUMBERTYPES
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ora_NUMBERTYPES
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

DELETE FROM ora_RAWLOBTYPES
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ora_RAWLOBTYPES
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
commit;

exception
when others then null;
end;

for c in 1 .. 2 loop
    -- char inserts
      INSERT INTO ora_chartypes
                  (s_varchar2, s_char, s_nvarchar2, s_nchar)
         SELECT 
                DBMS_RANDOM.STRING ('U', 200),
                DBMS_RANDOM.STRING ('U', 200),
                DBMS_RANDOM.STRING ('A', 500),
                DBMS_RANDOM.STRING ('A', 500)
           FROM DUAL;
   -- number inserts 
      INSERT INTO ora_numbertypes
                  (s_number, s_integer, s_binary_double, s_binary_float,
                   s_decimal, s_double_precision_float)
         SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10), 
                DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random + DBMS_RANDOM.random,
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3
           FROM DUAL;
   -- date inserts
      INSERT INTO ora_datatypes
                  (s_date, s_timestamp_witout_tz, s_timestamp_with_tz,
                   s_timestamp_with_local_tz 
                  --  ,s_interval_day_second,
                  --  s_interval_year_month
                   )
         SELECT 
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' ),
                TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j'),
                CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE)
               --  ,NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE')
               --  ,NUMTOYMINTERVAL (DBMS_RANDOM.VALUE (1, 50), 'MONTH')
           FROM DUAL;
   -- raw inserts
       SELECT ora_pk_id.NEXTVAL
         INTO v_id
         FROM DUAL;

       SELECT  UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)) 
         INTO v_blob
         FROM DUAL;

       INSERT INTO ora_rawlobtypes
                   ( 
                    s_raw, s_clob, s_nclob, s_pk_formapping)
          SELECT 
                 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)),
                 DBMS_RANDOM.STRING ('X', 4000), 
                 DBMS_RANDOM.STRING ('X',4000),
                 v_id
            FROM DUAL;

       UPDATE ora_rawlobtypes t1
          SET s_blob = (SELECT TO_BLOB (s_blob)
                          FROM dual),
              s_blob_name = s_pk_formapping
        WHERE s_pk_formapping = v_id;
        
   commit;
end loop;       

    -- updates
declare       
   cursor c is select * from ora_chartypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ora_chartypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
    begin
              for c1 in c 
      loop 
           UPDATE ora_chartypes
             set  (s_varchar2, s_char, s_nvarchar2, s_nchar) =
           (SELECT 
                DBMS_RANDOM.STRING ('U', 200),
                DBMS_RANDOM.STRING ('U', 200),
                DBMS_RANDOM.STRING ('A', 500),
                DBMS_RANDOM.STRING ('A', 500)
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
   commit;
   end;
   
   
declare   
   cursor c is select * from ora_numbertypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ora_numbertypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
begin
   for c1 in c
      loop 
      update ora_numbertypes
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

declare
  cursor c is select * from ora_datatypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ora_datatypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
begin
for c1 in c
      loop 
      update ora_datatypes
      set
                  (s_date, s_timestamp_witout_tz, s_timestamp_with_tz,
                   s_timestamp_with_local_tz 
                   -- ,s_interval_day_second,
                   -- s_interval_year_month
                   ) =
         (SELECT 
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' ),
                TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j'),
                CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE)
                -- ,NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE')
                -- ,NUMTOYMINTERVAL (DBMS_RANDOM.VALUE (1, 50), 'MONTH')
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
commit;
end;

declare
 cursor c is select * from ora_rawlobtypes where s_pk_formapping = v_id for update;

 begin
       SELECT MAX (s_pk_formapping) into v_id
                            FROM (SELECT s_pk_formapping
                                    FROM ora_rawlobtypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt));
                                   
       SELECT  UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)) 
         INTO v_blob
         FROM DUAL;
       for c1 in c
       loop
       update ora_rawlobtypes
       set
                   (s_raw, s_clob, s_nclob) =
          (SELECT 
                 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)),
                 DBMS_RANDOM.STRING ('X', 4000), 
                 DBMS_RANDOM.STRING ('X',4000)
            FROM DUAL)
            where CURRENT OF c ; 

       UPDATE ora_rawlobtypes t1
          SET s_blob = (SELECT TO_BLOB (v_blob)
                          FROM dual)
        WHERE CURRENT OF c ; 
        end loop;
        commit;
 end;

end loop;
end;                                   
/

show errors
exit                                 