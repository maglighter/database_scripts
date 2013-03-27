connect to sample user fabdulin using Asdf11A@

CREATE OR REPLACE PROCEDURE DB2_types_upd (IN cnt INTEGER)
LANGUAGE SQL
BEGIN
DECLARE v_counter INT DEFAULT 0;
DECLARE v_min INT DEFAULT 0;
DECLARE v_max INT DEFAULT 0;

select min(S_INTEGER) into v_min from SRC.ALL_TYPES_DB2;
select max(S_INTEGER) into v_max from SRC.ALL_TYPES_DB2;

WHILE v_counter < cnt
     DO
update SRC.ALL_TYPES_DB2  SET
		  S_SMALLINT =round(rand()*100,0),   
		  S_BIGINT = round(rand()*10000,0), 
		  S_DECIMAL = round(rand()*100,2), 
		  S_REAL = round(rand()*100,5),
		  S_DOUBLE = round(rand()*100,10), 
		  S_CHAR = 'test_char_UPDATE',
		  S_VARCHAR = 'test_varchar_UPDATE',  
		  S_CLOB = 'test_clob_update',  
		  S_GRAPHIC = 'S_GRAPHIC_update',  
		  S_VARGRAPHIC = 'S_VARGRAPHIC_update',  
		  S_DBCLOB = DBCLOB('S_DBCLOB_UPDATE_LONG_TYPE'),  
		  S_BLOB  =blob('S_BLOB_update_long_type'),  
		  S_DATE  = date(CURRENT DATE) + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) days ,   
		  S_TIME = TIME( CURRENT TIME)  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 4) hours
		  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) minutes
                  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) SECONDS
                  , 
		  S_TIMESTAMP = TIMESTAMP( CURRENT TIMESTAMP)  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) days 
		  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) hours
		  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) minutes
                  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) SECONDS
                  + round((days('2000-12-31')-days('1950-01-01'))*rand(), 0) MICROSECONDS, 
		  S_LONG_VARCHAR = 'S_LONG_VARCHAR_UPDATE',  
		  S_LONG_VARGRAPHIC ='S_LONG_VARGRAPHIC_update' 
            where S_INTEGER = v_min + round((v_max - v_min)*rand(),0);
  COMMIT WORK;
  
 SET v_counter = v_counter + 1;
END WHILE;
END@

connect reset@