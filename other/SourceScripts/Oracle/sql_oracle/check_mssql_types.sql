spool spool_check.txt

SELECT COUNT (distinct s_bigint) AS mssql_types
  FROM ((SELECT s_bigint, S_INT,S_SMALLINT,S_TINYINT,S_BIT,S_DECIMAL,S_DECIMAL, s_char, s_datetime, s_float,
                s_money, s_nchar, s_numeric, s_nvarchar, s_smaldatetime, s_smallmoney, s_varchar
           FROM dbdest_user.ALL_TYPES_MSSQL
         MINUS
         SELECT s_bigint, S_INT,S_SMALLINT,S_TINYINT,S_BIT,S_DECIMAL,S_DECIMAL, s_char, s_datetime, s_float,
                s_money, s_nchar, s_numeric, s_nvarchar, s_smaldatetime, s_smallmoney, s_varchar
           FROM dbdest_sec.ALL_TYPES_MSSQL)
        UNION ALL
        (SELECT s_bigint, S_INT,S_SMALLINT,S_TINYINT,S_BIT,S_DECIMAL,S_DECIMAL, s_char, s_datetime, s_float,
                s_money, s_nchar, s_numeric, s_nvarchar, s_smaldatetime, s_smallmoney, s_varchar
           FROM dbdest_sec.ALL_TYPES_MSSQL
         MINUS
         SELECT s_bigint, S_INT,S_SMALLINT,S_TINYINT,S_BIT,S_DECIMAL,S_DECIMAL, s_char, s_datetime, s_float,
                s_money, s_nchar, s_numeric, s_nvarchar, s_smaldatetime, s_smallmoney, s_varchar
           FROM dbdest_user.ALL_TYPES_MSSQL));

SELECT COUNT (distinct s_bigint) AS mssql_types_long
  FROM ((SELECT s_bigint, s_uidentify
           FROM dbdest_user.ALL_TYPES_MSSQL_LONG
         MINUS
         SELECT s_bigint, s_uidentify
           FROM dbdest_sec.ALL_TYPES_MSSQL_LONG)
        UNION ALL
        (SELECT s_bigint, s_uidentify
           FROM dbdest_sec.ALL_TYPES_MSSQL_LONG
         MINUS
         SELECT s_bigint, s_uidentify
           FROM dbdest_user.ALL_TYPES_MSSQL_LONG));
           
select count(*) as unsync_NVARCHARMAX from dbdest_sec.ALL_TYPES_MSSQL a join 
 dbdest_user.ALL_TYPES_MSSQL b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_NVARCHARMAX, b.S_NVARCHARMAX) <>0;
 
select count(*) as unsync_NTEXT from dbdest_sec.ALL_TYPES_MSSQL a join 
 dbdest_user.ALL_TYPES_MSSQL b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_NTEXT, b.S_NTEXT) <>0;
 
select count(*) as unsync_BINARY from dbdest_sec.ALL_TYPES_MSSQL a join 
 dbdest_user.ALL_TYPES_MSSQL b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_BINARY, b.S_BINARY) <>0; 
 
 select count(*) as unsync_S_VARBINARY from dbdest_sec.ALL_TYPES_MSSQL a join 
 dbdest_user.ALL_TYPES_MSSQL b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_VARBINARY, b.S_VARBINARY) <>0; 
 
 select count(*) as unsync_S_VARBINMAX from dbdest_sec.ALL_TYPES_MSSQL a join 
 dbdest_user.ALL_TYPES_MSSQL b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_VARBINMAX, b.S_VARBINMAX) <>0; 
 
  select count(*) as unsync_S_IMAGE from dbdest_sec.ALL_TYPES_MSSQL a join 
 dbdest_user.ALL_TYPES_MSSQL b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_IMAGE, b.S_IMAGE) <>0; 
 
 select count(*) as unsync_S_VARCHARMAX from dbdest_sec.ALL_TYPES_MSSQL_LONG a join 
 dbdest_user.ALL_TYPES_MSSQL_LONG b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_VARCHARMAX, b.S_VARCHARMAX) <>0;
 
  select count(*) as unsync_S_TEXT from dbdest_sec.ALL_TYPES_MSSQL_LONG a join 
 dbdest_user.ALL_TYPES_MSSQL_LONG b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_TEXT, b.S_TEXT) <>0;
 
  select count(*) as unsync_S_XML from dbdest_sec.ALL_TYPES_MSSQL_LONG a join 
 dbdest_user.ALL_TYPES_MSSQL_LONG b on A.s_bigint=B.s_bigint
 where DBMS_LOB.compare(a.S_XML, b.S_XML) <>0;
 
spool off
exit