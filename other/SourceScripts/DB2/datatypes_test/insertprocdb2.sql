connect to sample user fabdulin using Asdf11A@


CREATE PROCEDURE DB2_types_ins (IN cnt INTEGER)
LANGUAGE SQL
BEGIN
DECLARE v_counter INT DEFAULT 0;

WHILE v_counter < cnt
    DO
insert into SRC.ALL_TYPES_DB2  (
 S_SMALLINT , 
 S_BIGINT , 
 S_DECIMAL , 
 S_REAL , 
 S_DOUBLE , 
 S_CHAR , 
 S_VARCHAR  , 
 S_CLOB, 
 S_GRAPHIC , 
 S_VARGRAPHIC , 
 S_DBCLOB , 
 S_BLOB  , 
 S_DATE  , 
 S_TIME , 
 S_TIMESTAMP , 
 S_LONG_VARCHAR , 
 S_LONG_VARGRAPHIC ) 
values
(  round(rand()*100,0),  
 round(rand()*10000,0),
 round(rand()*100,2),
 round(rand()*100,5),
 round(rand()*100,10),
 'test_char',
 'test_varchar', 
 'test_clob', 
 'S_GRAPHIC', 
 'S_VARGRAPHIC', 
 DBCLOB('S_DBCLOB'), 
 blob('S_BLOB'), 
 date(CURRENT DATE) + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) days ,  
 TIME( CURRENT TIME)  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 4) hours
 + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) minutes
                 + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) SECONDS
                 , 
 TIMESTAMP( CURRENT TIMESTAMP)  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) days 
 + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) hours
 + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) minutes
                 + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) SECONDS
                 + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) MICROSECONDS, 
 'S_LONG_VARCHAR', 
 'S_LONG_VARGRAPHIC'); 
SET v_counter = v_counter + 1;
END WHILE;
END@

connect reset@