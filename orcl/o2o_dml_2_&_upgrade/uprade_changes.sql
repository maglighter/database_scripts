declare
      v_number_mid	MAX_DATAREP_USER.ORA_NUMBERTYPES.S_NUMBER_MID%TYPE;
      v_decimal_mid    	MAX_DATAREP_USER.ORA_NUMBERTYPES.S_DECIMAL_MID%TYPE;
      v_id   INT;
--      v_blob LONG RAW;
      v_cnt INT;
begin
for c in 1 .. 2 loop
begin

select count(*) into v_cnt from MAX_DATAREP_USER.ORA_chartypes;

DELETE FROM MAX_DATAREP_USER.ORA_chartypes
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM MAX_DATAREP_USER.ORA_chartypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   


                                   

DELETE FROM MAX_DATAREP_USER.ORA_NUMBERTYPES
      WHERE s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM MAX_DATAREP_USER.ORA_NUMBERTYPES
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   

commit;

exception
when others then null;
end;

for d in 1 .. 2 loop
    -- char inserts
	
      INSERT INTO MAX_DATAREP_USER.ORA_chartypes
                  (s_varchar2_mid, s_char_mid)
         SELECT 
--                DBMS_RANDOM.STRING ('U', 4000),
		DBMS_RANDOM.STRING ('U', 2000),
--		DBMS_RANDOM.STRING ('U', 1),
--                DBMS_RANDOM.STRING ('U', 200),
		DBMS_RANDOM.STRING ('U', 100)
--		DBMS_RANDOM.STRING ('U', 1),
--                DBMS_RANDOM.STRING ('A', 2000),
--		DBMS_RANDOM.STRING ('A', 1000),
--		DBMS_RANDOM.STRING ('A', 1),
--              DBMS_RANDOM.STRING ('A', 1000),
--                DBMS_RANDOM.STRING ('A', 500),
--                DBMS_RANDOM.STRING ('A', 1)		
           FROM DUAL;
   -- number inserts
	
   
      INSERT INTO MAX_DATAREP_USER.ORA_numbertypes
                  (s_number_mid, s_integer, s_decimal_mid)
         SELECT 
--                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
		round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
--		trunc(DBMS_RANDOM.value(-1, 1),1),
                DBMS_RANDOM.random,
--                DBMS_RANDOM.random / DBMS_RANDOM.random,
--                DBMS_RANDOM.random / DBMS_RANDOM.random + DBMS_RANDOM.random,
--                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8)
                --trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
--		round(DBMS_RANDOM.value(-1, 1),1),
--                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
--                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
--                DBMS_RANDOM.random / DBMS_RANDOM.random / 3
           FROM DUAL;
   -- date inserts

   -- raw inserts
       SELECT MAX_DATAREP_USER.ORA_pk_id.NEXTVAL
         INTO v_id
         FROM DUAL;

   commit;
end loop;

-- Empty values
INSERT INTO MAX_DATAREP_USER.ORA_chartypes
                  (s_varchar2_mid, s_char_mid)
VALUES
(
       null, null
);

INSERT INTO MAX_DATAREP_USER.ORA_numbertypes
	 (s_number_mid, s_integer, s_decimal_mid)
VALUES
(
       null, null, null
);

-- Max values
v_number_mid := ((10**9)-1)+(1-(10**(-9))); --10**(19-10)-1;
v_decimal_mid := ((10**7)-1)+(1-(10**(-7))); --10**(15-8)-1;

INSERT INTO MAX_DATAREP_USER.ORA_numbertypes
	 (s_number_mid, s_integer, s_decimal_mid)
VALUES
(
--       v_number_max,
       v_number_mid,
--       null,
       null,
--       null,
--       null,
--       v_decimal_max,
       v_decimal_mid
--       null,
--       v_double_precision_float_max,
--       v_double_precision_float_mid,
--       null
);


commit;	 

    -- updates
declare       
   cursor c is select * from MAX_DATAREP_USER.ORA_chartypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM MAX_DATAREP_USER.ORA_chartypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
    begin
              for c1 in c 
      loop 
           UPDATE MAX_DATAREP_USER.ORA_chartypes
             set  (s_varchar2_mid, s_char_mid) =
           (SELECT 
--                DBMS_RANDOM.STRING ('U', 4000),
		DBMS_RANDOM.STRING ('U', 2000),
--		DBMS_RANDOM.STRING ('U', 1),
--                DBMS_RANDOM.STRING ('U', 200),
		DBMS_RANDOM.STRING ('U', 100)
--		DBMS_RANDOM.STRING ('U', 1),
           FROM DUAL)
           where CURRENT OF c ; 
      end loop;
   commit;
   end;
   
   
declare   
   cursor c is select * from MAX_DATAREP_USER.ORA_numbertypes 
                      where
                      s_pk_formapping =
                         (SELECT MAX (s_pk_formapping)
                            FROM (SELECT s_pk_formapping
                                    FROM MAX_DATAREP_USER.ORA_numbertypes
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)))
              for update;
begin
   for c1 in c
      loop 
      update MAX_DATAREP_USER.ORA_numbertypes
      set
                  (s_number_mid, s_integer, s_decimal_mid) =
         (SELECT 
--                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
--		trunc(DBMS_RANDOM.value(-1, 1),1),
                DBMS_RANDOM.random,
--                DBMS_RANDOM.random / DBMS_RANDOM.random,
--                DBMS_RANDOM.random / DBMS_RANDOM.random + DBMS_RANDOM.random,
--                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8),
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8)
           FROM DUAL)
           where CURRENT OF c; 
      end loop;
  commit;
end;



end loop;
end;                                   
/
