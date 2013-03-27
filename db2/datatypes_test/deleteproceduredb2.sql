connect to sample user fabdulin using Asdf11A@

CREATE OR REPLACE PROCEDURE DB2_types_del (IN cnt INTEGER)
LANGUAGE SQL
BEGIN
DECLARE v_counter INT DEFAULT 0;
DECLARE v_min INT DEFAULT 0;
DECLARE v_max INT DEFAULT 0;

select min(S_INTEGER) into v_min from SRC.ALL_TYPES_DB2;
select max(S_INTEGER) into v_max from SRC.ALL_TYPES_DB2;

WHILE v_counter < cnt
     DO
      delete from SRC.ALL_TYPES_DB2 
      where S_INTEGER = v_min + round((v_max - v_min)*rand(),0);
  COMMIT WORK;		  
 SET v_counter = v_counter + 1;
END WHILE;
END@

connect reset@

