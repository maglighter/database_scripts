
CREATE SEQUENCE ORA_PK_ID5;

--CREATE SMALLFILE TABLESPACE rangelist_PARTITION_1 DATAFILE '/orainst/data/IDR11/datafile/rangelist_PART_1.dbf' 
--SIZE 1m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;
--CREATE SMALLFILE TABLESPACE rangelist_PARTITION_2 DATAFILE '/orainst/data/IDR11/datafile/rangelist_PART_2.dbf' 
--SIZE 1m
--LOGGING
--EXTENT 
--MANAGEMENT
--LOCAL SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLE ora_rangelist_part_table
      ( s_number number,
        s_varchar  varchar2(20),
        s_date date, 
        S_PK_FORMAPPING INTEGER
      )
  PARTITION BY RANGE ( s_date)
    SUBPARTITION BY LIST (s_varchar)
      (PARTITION part1_2012 VALUES LESS THAN (TO_DATE('1-04-2012','DD-MM-YYYY'))
          TABLESPACE SRC
         (SUBPARTITION part1_2012_varchar1 VALUES ('varchar1'),
          SUBPARTITION part1_2012_varchar2 VALUES ('varchar2')
         ),
       PARTITION part2_2012 VALUES LESS THAN ( TO_DATE('1-07-2012','DD-MM-YYYY'))
          TABLESPACE SRC
         (
          SUBPARTITION part2_2012_varchar3 VALUES ('varchar3'),
          SUBPARTITION part2_2012_varchar4 VALUES ('varchar4')
          )
      )
      LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

ALTER TABLE ora_rangelist_part_table ADD (
  CONSTRAINT ORA_rangelist_part_PK
 PRIMARY KEY
 (S_PK_FORMAPPING));
 
CREATE OR REPLACE TRIGGER ORA_PK_TRG_rangelist
BEFORE INSERT
ON ora_rangelist_part_table
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.S_PK_FORMAPPING IS NULL 
    THEN  
        SELECT ORA_PK_ID5.NEXTVAL INTO tmpVar FROM dual;
        :NEW.S_PK_FORMAPPING:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END ORA_PK_TRG_rangelist;
/
show errors