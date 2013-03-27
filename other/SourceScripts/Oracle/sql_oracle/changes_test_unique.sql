declare

    v_cnt int;
    
    col_id_tempA number;
    number_tempA NUMBER;
    int_tempA INTEGER;
    varch_tempA VARCHAR2(30 BYTE);
    
    col_id_tempB number;
    number_tempB NUMBER;
    int_tempB INTEGER;
    varch_tempB VARCHAR2(30 BYTE);
    
    col_id_tempC number;
    number_tempC NUMBER;
    int_tempC INTEGER;
    varch_tempC VARCHAR2(30 BYTE);
    
begin

for c in 1 .. &1 loop
--deletes

begin

select count(*) into v_cnt from test_unique;

DELETE FROM test_unique
      WHERE col_id =
                         (SELECT MAX (col_id)
                            FROM (SELECT col_id
                                    FROM test_unique
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));

commit;

exception
when others then null;

end;

--inserts
for c in 1 .. 2 loop

insert into test_unique 
            SELECT
                SEQ_test_unique_id.Nextval,
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.random,
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' ),
                DBMS_RANDOM.STRING ('A', 50),
                DBMS_RANDOM.STRING ('U', 30)
           FROM DUAL;

commit;
end loop;

--updates

select count(*) into v_cnt from test_unique;

for c in 1 .. 6 loop

Select col_id, NUMBER_COL, INTEGER_COL, VARCHAR2_COL into col_id_tempA, number_tempA, int_tempA, varch_tempA From test_unique
        WHERE col_id =
                         (SELECT MAX (col_id)
                            FROM (SELECT col_id
                                    FROM test_unique
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   
Select col_id, NUMBER_COL, INTEGER_COL, VARCHAR2_COL into col_id_tempB, number_tempB, int_tempB, varch_tempB From test_unique
        WHERE col_id =
                         (SELECT MAX (col_id)
                            FROM (SELECT col_id
                                    FROM test_unique
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));
                                   
Select col_id, NUMBER_COL, INTEGER_COL, VARCHAR2_COL into col_id_tempC, number_tempC, int_tempC, varch_tempC From test_unique
        WHERE col_id =
                         (SELECT MAX (col_id)
                            FROM (SELECT col_id
                                    FROM test_unique
                                   WHERE ROWNUM <= DBMS_RANDOM.VALUE (1, v_cnt)));

           UPDATE test_unique
             set  (NUMBER_COL, INTEGER_COL, DATE_COL,  FLOAT_COL,  TIMESTAMP_COL, NCHAR_COL,  VARCHAR2_COL) =
           (SELECT 
                round(DBMS_RANDOM.random/DBMS_RANDOM.random,10),
                DBMS_RANDOM.random,
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                 TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' ),
                 DBMS_RANDOM.STRING ('A', 50),
                 DBMS_RANDOM.STRING ('U', 30)
           FROM DUAL)
           where col_id = col_id_tempC;
           
                                              
           UPDATE test_unique
             set  (NUMBER_COL, INTEGER_COL, DATE_COL,  FLOAT_COL,  TIMESTAMP_COL, NCHAR_COL,  VARCHAR2_COL) =
           (SELECT 
                number_tempC,
                int_tempC,
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' ),
                DBMS_RANDOM.STRING ('A', 50),
                varch_tempC
           FROM DUAL)
           where col_id = col_id_tempB;
           

           UPDATE test_unique
             set  (NUMBER_COL, INTEGER_COL, DATE_COL,  FLOAT_COL,  TIMESTAMP_COL, NCHAR_COL,  VARCHAR2_COL) =
           (SELECT 
                number_tempB,
                int_tempB,
                TO_DATE (TRUNC (DBMS_RANDOM.VALUE (2422599, 2457085)), 'j'),
                DBMS_RANDOM.random / DBMS_RANDOM.random / 3,
                 TO_TIMESTAMP (TO_CHAR (TRUNC (DBMS_RANDOM.VALUE (2422599,2457085))), 'j' ),
                 DBMS_RANDOM.STRING ('A', 50),
                 varch_tempB
           FROM DUAL)
           where col_id = col_id_tempA;
          

   commit;
end loop;
end loop;
end;
/

show errors
exit