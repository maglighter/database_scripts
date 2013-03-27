declare
      v_number_max	ORA_NUMBERTYPES.S_NUMBER_MAX%TYPE;
      v_number_mid	ORA_NUMBERTYPES.S_NUMBER_MID%TYPE;
      v_decimal_max    	ORA_NUMBERTYPES.S_DECIMAL_MAX%TYPE;
      v_decimal_mid    	ORA_NUMBERTYPES.S_DECIMAL_MID%TYPE;
      v_double_precision_float_max  ORA_NUMBERTYPES.S_DOUBLE_PRECISION_FLOAT_MAX%TYPE;
      v_double_precision_float_mid  ORA_NUMBERTYPES.S_DOUBLE_PRECISION_FLOAT_MID%TYPE;
      v_id   INT;
      v_blob LONG RAW;
      v_cnt INT;
begin
for c in 1 .. 2 loop
begin

select count(*) into v_cnt from ORA_chartypes;

DELETE FROM ORA_chartypes
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_chartypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

DELETE FROM ORA_DATATYPES
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_DATATYPES
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

DELETE FROM ORA_NUMBERTYPES
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_NUMBERTYPES
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

DELETE FROM ORA_RAWLOBTYPES
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_RAWLOBTYPES
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
commit;

exception
when others then null;
end;

for d in 1 .. 2 loop
    -- char inserts
	
      INSERT INTO ORA_chartypes
                  (s_varchar2_max, s_varchar2_mid, s_varchar2_min,
		  s_char_max, s_char_mid, s_char_min,
		  s_nvarchar2_max, s_nvarchar2_mid, s_nvarchar2_min,
		  s_nchar_max, s_nchar_mid, s_nchar_min)
         SELECT 
                DBMS_RANDOM.STRING ('U', 4000),
		DBMS_RANDOM.STRING ('U', 2000),
		DBMS_RANDOM.STRING ('U', 1),
                DBMS_RANDOM.STRING ('U', 200),
		DBMS_RANDOM.STRING ('U', 100),
		DBMS_RANDOM.STRING ('U', 1),
                DBMS_RANDOM.STRING ('A', 2000),
		DBMS_RANDOM.STRING ('A', 1000),
		DBMS_RANDOM.STRING ('A', 1),
                DBMS_RANDOM.STRING ('A', 1000),
                DBMS_RANDOM.STRING ('A', 500),
                DBMS_RANDOM.STRING ('A', 1)		
           FROM DUAL;
   -- number inserts
	
   
      INSERT INTO ORA_numbertypes
                  (s_number_max, s_number_mid, s_number_min, s_integer, s_binary_double, s_binary_float,
                   s_decimal_max, s_decimal_mid, s_decimal_min, s_double_precision_float_max,
		   s_double_precision_float_mid, s_double_precision_float_min)
         SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
		round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
		trunc(DBMS_RANDOM.value(-1, 1),1),
                DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random + DBMS_RANDOM.random,
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                --trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
		round(DBMS_RANDOM.value(-1, 1),1),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3
           FROM DUAL;
   -- date inserts
      INSERT INTO ORA_datatypes
                  (s_date, s_timestamp_witout_tz_max, s_timestamp_witout_tz_mid, s_timestamp_witout_tz_min,
		  s_timestamp_with_tz_max, s_timestamp_with_tz_mid, s_timestamp_with_tz_min,
                   s_timestamp_with_local_tz_max, s_timestamp_with_local_tz_mid, s_timestamp_with_local_tz_min, 
                    s_interval_day_second, s_interval_year_month
                   )
         SELECT 
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j') - DBMS_RANDOM.value,
                TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' )  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' )  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' )  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
                TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j')  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j')  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j')  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
                CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE) + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE) + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE) + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE')
                 ,NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE')
                 ,NUMTOYMINTERVAL (DBMS_RANDOM.VALUE (1, 50), 'MONTH')
           FROM DUAL;
   -- raw inserts
       SELECT ORA_pk_id.NEXTVAL
         INTO v_id
         FROM DUAL;

       SELECT  UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)) 
         INTO v_blob
         FROM DUAL;

       INSERT INTO ORA_rawlobtypes
                   ( 
                    s_raw_max, s_raw_mid, s_raw_min, s_clob, s_nclob, s_pk_formapping)
          SELECT 
                 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)),
		 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 1000)),
		 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 1)),
                 DBMS_RANDOM.STRING ('X', 4000), 
                 DBMS_RANDOM.STRING ('X',4000),
                 v_id
            FROM DUAL;

       UPDATE ORA_rawlobtypes t1
          SET s_blob = (SELECT TO_BLOB (v_blob)
                          FROM dual),
              s_blob_name = s_pk_formapping
        WHERE s_pk_formapping = v_id;
        
   commit;
end loop;

-- Empty values
INSERT INTO ORA_chartypes
                  (s_varchar2_max, s_varchar2_mid, s_varchar2_min,
	 s_char_max, s_char_mid, s_char_min,
	 s_nvarchar2_max, s_nvarchar2_mid, s_nvarchar2_min,
	 s_nchar_max, s_nchar_mid, s_nchar_min)
VALUES
(
       null, null, null, null, null, null, null, null, null, null, null, null
);

INSERT INTO ORA_numbertypes
	 (s_number_max, s_number_mid, s_number_min, s_integer, s_binary_double, s_binary_float,
	  s_decimal_max, s_decimal_mid, s_decimal_min, s_double_precision_float_max,
	  s_double_precision_float_mid, s_double_precision_float_min)
VALUES
(
       null, null, null, null, null, null, null, null, null, null, null, null
);

INSERT INTO ORA_datatypes
	 (s_date, s_timestamp_witout_tz_max, s_timestamp_witout_tz_mid, s_timestamp_witout_tz_min,
		  s_timestamp_with_tz_max, s_timestamp_with_tz_mid, s_timestamp_with_tz_min,
                   s_timestamp_with_local_tz_max, s_timestamp_with_local_tz_mid, s_timestamp_with_local_tz_min, 
                    s_interval_day_second, s_interval_year_month
	  )
VALUES
(
       null, null, null, null, null, null, null, null, null, null, null, null
);

INSERT INTO ORA_rawlobtypes
       	  ( 
	   s_raw_max, s_raw_mid, s_raw_min, s_clob, s_nclob, s_pk_formapping)
VALUES
(
       null, null, null, null, null, null
);


-- Max values
v_number_max := ((10**10)-1)+(1-(10**(-10))); --10**(38-10)-1;
v_number_mid := ((10**9)-1)+(1-(10**(-9))); --10**(19-10)-1;
v_decimal_max := ((10**8)-1)+(1-(10**(-8))); --10**(30-8)-1;
v_decimal_mid := ((10**7)-1)+(1-(10**(-7))); --10**(15-8)-1;
v_double_precision_float_max := ((10**19)-1)+(1-(10**(-19)));
v_double_precision_float_mid := ((10**9)-1)+(1-(10**(-9)));

INSERT INTO ORA_numbertypes
	 (s_number_max, s_number_mid, s_number_min, s_integer, s_binary_double, s_binary_float,
	  s_decimal_max, s_decimal_mid, s_decimal_min, s_double_precision_float_max,
	  s_double_precision_float_mid, s_double_precision_float_min)
VALUES
(
       v_number_max,
       v_number_mid,
       null,
       null,
       null,
       null,
       v_decimal_max,
       v_decimal_mid,
       null,
       v_double_precision_float_max,
       v_double_precision_float_mid,
       null
);


commit;	 

    -- updates
declare       
   cursor c is select * from ORA_chartypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_chartypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
    begin
              for c1 in c 
      loop 
           UPDATE ORA_chartypes
             set  (s_varchar2_max, s_varchar2_mid, s_varchar2_min,
		  s_char_max, s_char_mid, s_char_min,
		  s_nvarchar2_max, s_nvarchar2_mid, s_nvarchar2_min,
		  s_nchar_max, s_nchar_mid, s_nchar_min) =
           (SELECT 
                DBMS_RANDOM.STRING ('U', 4000),
		DBMS_RANDOM.STRING ('U', 2000),
		DBMS_RANDOM.STRING ('U', 1),
                DBMS_RANDOM.STRING ('U', 200),
		DBMS_RANDOM.STRING ('U', 100),
		DBMS_RANDOM.STRING ('U', 1),
                DBMS_RANDOM.STRING ('A', 2000),
		DBMS_RANDOM.STRING ('A', 1000),
		DBMS_RANDOM.STRING ('A', 1),
                DBMS_RANDOM.STRING ('A', 1000),
                DBMS_RANDOM.STRING ('A', 500),
                DBMS_RANDOM.STRING ('A', 1)		
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
   commit;
   end;
   
   
declare   
   cursor c is select * from ORA_numbertypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_numbertypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
begin
   for c1 in c
      loop 
      update ORA_numbertypes
      set
                  (s_number_max, s_number_mid, s_number_min, s_integer, s_binary_double, s_binary_float,
                   s_decimal_max, s_decimal_mid, s_decimal_min, s_double_precision_float_max,
		   s_double_precision_float_mid, s_double_precision_float_min) =
         (SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
		trunc(DBMS_RANDOM.value(-1, 1),1),
                DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random,
                DBMS_RANDOM.random / DBMS_RANDOM.random + DBMS_RANDOM.random,
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                --trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
		round(DBMS_RANDOM.value(-1, 1),1),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3
           FROM DUAL)
           where CURRENT OF c; 
      end loop;
  commit;
end;

declare
  cursor c is select * from ORA_datatypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_datatypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
begin
for c1 in c
      loop 
      update ORA_datatypes
      set
                  (s_date, s_timestamp_witout_tz_max, s_timestamp_witout_tz_mid, s_timestamp_witout_tz_min,
		  s_timestamp_with_tz_max, s_timestamp_with_tz_mid, s_timestamp_with_tz_min,
                   s_timestamp_with_local_tz_max, s_timestamp_with_local_tz_mid, s_timestamp_with_local_tz_min, 
                    s_interval_day_second, s_interval_year_month
                   ) =
         (SELECT 
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j') - DBMS_RANDOM.value,
                TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' )  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' )  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' )  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
                TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j')  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j')  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		TO_TIMESTAMP_TZ (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))),'j')  + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
                CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE) + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE) + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE'),
		CAST(TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)),'j') AS TIMESTAMP WITH LOCAL TIME ZONE) + NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE')
                 ,NUMTODSINTERVAL (DBMS_RANDOM.VALUE (1, 60), 'MINUTE')
                 ,NUMTOYMINTERVAL (DBMS_RANDOM.VALUE (1, 50), 'MONTH')
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
commit;
end;

declare
 cursor c is select * from ORA_rawlobtypes where s_pk_formapping = v_id for update;

 begin
       SELECT MAX (s_pk_formapping) into v_id
                            FROM (SELECT s_pk_formapping
                                    FROM ORA_rawlobtypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt));
                                   
       SELECT  UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)) 
         INTO v_blob
         FROM DUAL;
       for c1 in c
       loop
       update ORA_rawlobtypes
       set
                   (s_raw_max, s_raw_mid, s_raw_min, s_clob, s_nclob) =
          (SELECT 
                 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 2000)),
		 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 1000)),
		 UTL_RAW.cast_to_raw (DBMS_RANDOM.STRING ('X', 1)),
                 DBMS_RANDOM.STRING ('X', 4000), 
                 DBMS_RANDOM.STRING ('X',4000)
            FROM DUAL)
            where CURRENT OF c ; 

       UPDATE ORA_rawlobtypes t1
          SET s_blob = (SELECT TO_BLOB (v_blob)
                          FROM dual)
        WHERE CURRENT OF c ; 
        end loop;
        commit;
 end;

end loop;
end;                                   
/

