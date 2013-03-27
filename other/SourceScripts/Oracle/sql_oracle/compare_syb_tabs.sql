spool spool_check.txt

SELECT COUNT (distinct s_int) AS SBS_BASIC_TYPES
  FROM ((SELECT *
           FROM dbdest_sec_user.SBS_BASIC_TYPES
         MINUS
         SELECT *
           FROM dbdest_user.SBS_BASIC_TYPES)
        UNION ALL
        (SELECT *
           FROM dbdest_user.SBS_BASIC_TYPES
         MINUS
         SELECT *
           FROM dbdest_sec_user.SBS_BASIC_TYPES));

SELECT COUNT (distinct s_int) AS SBS_BINARY_TYPES
  FROM ((SELECT S_INT, S_BINARY, S_VARBINARY
           FROM dbdest_sec_user.SBS_BINARY_TYPES
         MINUS
         SELECT S_INT, S_BINARY, S_VARBINARY
           FROM dbdest_user.SBS_BINARY_TYPES)
        UNION ALL
        (SELECT S_INT, S_BINARY, S_VARBINARY
           FROM dbdest_user.SBS_BINARY_TYPES
         MINUS
         SELECT S_INT, S_BINARY, S_VARBINARY
           FROM dbdest_sec_user.SBS_BINARY_TYPES));
           
SELECT COUNT (distinct s_int) AS SBS_CHARACTER_TYPES
  FROM ((SELECT *
           FROM dbdest_sec_user.SBS_CHARACTER_TYPES
         MINUS
         SELECT *
           FROM dbdest_user.SBS_CHARACTER_TYPES)
        UNION ALL
        (SELECT *
           FROM dbdest_user.SBS_CHARACTER_TYPES
         MINUS
         SELECT *
           FROM dbdest_sec_user.SBS_CHARACTER_TYPES));
           
SELECT COUNT (distinct s_int) AS SBS_CHARACTER_TYPES_LNG
  FROM ((SELECT s_int
           FROM dbdest_sec_user.SBS_CHARACTER_TYPES_LNG
         MINUS
         SELECT s_int
           FROM dbdest_user.SBS_CHARACTER_TYPES_LNG)
        UNION ALL
        (SELECT s_int
           FROM dbdest_user.SBS_CHARACTER_TYPES_LNG
         MINUS
         SELECT s_int
           FROM dbdest_sec_user.SBS_CHARACTER_TYPES_LNG));
           
            
SELECT COUNT (distinct s_int) AS SBS_DATETIME_TYPES
  FROM ((SELECT *
           FROM dbdest_sec_user.SBS_DATETIME_TYPES
         MINUS
         SELECT *
           FROM dbdest_user.SBS_DATETIME_TYPES)
        UNION ALL
        (SELECT *
           FROM dbdest_user.SBS_DATETIME_TYPES
         MINUS
         SELECT *
           FROM dbdest_sec_user.SBS_DATETIME_TYPES));
           
SELECT COUNT (distinct s_int) AS SBS_DECIMAL_TYPES
  FROM ((SELECT *
           FROM dbdest_sec_user.SBS_DECIMAL_TYPES
         MINUS
         SELECT *
           FROM dbdest_user.SBS_DECIMAL_TYPES)
        UNION ALL
        (SELECT *
           FROM dbdest_user.SBS_DECIMAL_TYPES
         MINUS
         SELECT *
           FROM dbdest_sec_user.SBS_DECIMAL_TYPES));
           
SELECT COUNT (distinct s_int) AS SBS_MONEY_TYPES
  FROM ((SELECT *
           FROM dbdest_sec_user.SBS_MONEY_TYPES
         MINUS
         SELECT *
           FROM dbdest_user.SBS_MONEY_TYPES)
        UNION ALL
        (SELECT *
           FROM dbdest_user.SBS_MONEY_TYPES
         MINUS
         SELECT *
           FROM dbdest_sec_user.SBS_MONEY_TYPES));

select count(*) as unsync_S_IMAGE from dbdest_user.SBS_BINARY_TYPES a join 
 dbdest_sec_user.SBS_BINARY_TYPES b on A.s_int=B.s_int
 where DBMS_LOB.compare(a.S_IMAGE, b.S_IMAGE) <>0;
 
select count(*) as unsync_S_TEXT from dbdest_user.SBS_CHARACTER_TYPES_LNG a join 
 dbdest_sec_user.SBS_CHARACTER_TYPES_LNG b on A.s_int=B.s_int
 where DBMS_LOB.compare(a.S_TEXT, b.S_TEXT) <>0;
 
select count(*) as unsync_S_UNITEXT from dbdest_user.SBS_CHARACTER_TYPES_LNG a join 
 dbdest_sec_user.SBS_CHARACTER_TYPES_LNG b on A.s_int=B.s_int
 where DBMS_LOB.compare(a.S_UNITEXT, b.S_UNITEXT) <>0; 
 
spool off
exit