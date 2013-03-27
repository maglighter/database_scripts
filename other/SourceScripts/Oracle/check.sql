spool spool_check.txt

SELECT COUNT (distinct s_pk_formapping) AS unsync_chartypes
  FROM ((SELECT *
           FROM dbsync_user.ora_chartypes
         MINUS
         SELECT *
           FROM dst.ora_chartypes)
        UNION ALL
        (SELECT *
           FROM dst.ora_chartypes
         MINUS
         SELECT *
           FROM dbsync_user.ora_chartypes));

SELECT COUNT (distinct s_pk_formapping) AS unsync_numbertypes
  FROM ((SELECT *
           FROM dbsync_user.ora_numbertypes
         MINUS
         SELECT *
           FROM dst.ora_numbertypes)
        UNION ALL
        (SELECT *
           FROM dst.ora_numbertypes
         MINUS
         SELECT *
           FROM dbsync_user.ora_numbertypes));
           
SELECT COUNT (distinct s_pk_formapping) AS unsync_datatypes
  FROM ((SELECT S_TIMESTAMP_WITOUT_TZ, S_TIMESTAMP_WITH_TZ, S_TIMESTAMP_WITH_LOCAL_TZ, S_DATE, S_PK_FORMAPPING
           FROM dbsync_user.ora_datatypes
         MINUS
         SELECT S_TIMESTAMP_WITOUT_TZ, S_TIMESTAMP_WITH_TZ, S_TIMESTAMP_WITH_LOCAL_TZ, S_DATE, S_PK_FORMAPPING
           FROM dst.ora_datatypes)
        UNION ALL
        (SELECT S_TIMESTAMP_WITOUT_TZ, S_TIMESTAMP_WITH_TZ, S_TIMESTAMP_WITH_LOCAL_TZ, S_DATE, S_PK_FORMAPPING
           FROM dst.ora_datatypes
         MINUS
         SELECT S_TIMESTAMP_WITOUT_TZ, S_TIMESTAMP_WITH_TZ, S_TIMESTAMP_WITH_LOCAL_TZ, S_DATE, S_PK_FORMAPPING
           FROM dbsync_user.ora_datatypes));
           
SELECT COUNT (distinct s_pk_formapping) AS unsync_raw
  FROM ((SELECT S_RAW,S_BLOB_NAME,S_PK_FORMAPPING
           FROM dbsync_user.ora_rawlobtypes
         MINUS
         SELECT S_RAW,S_BLOB_NAME,S_PK_FORMAPPING
           FROM dst.ora_rawlobtypes)
        UNION ALL
        (SELECT S_RAW,S_BLOB_NAME,S_PK_FORMAPPING
           FROM dst.ora_rawlobtypes
         MINUS
         SELECT S_RAW,S_BLOB_NAME,S_PK_FORMAPPING
           FROM dbsync_user.ora_rawlobtypes));      


select count(*) as unsync_nclob from dst.ora_RAWLOBTYPES a join 
 dbsync_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
 where DBMS_LOB.compare(a.s_nclob, b.s_nclob) <>0;
 
select count(*) as unsync_clob from dst.ora_RAWLOBTYPES a join 
 dbsync_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
 where DBMS_LOB.compare(a.s_clob, b.s_clob) <>0;
 
select count(*) as unsync_blob from dst.ora_RAWLOBTYPES a join 
 dbsync_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
 where DBMS_LOB.compare(a.s_blob, b.s_blob) <>0; 
 
spool off
exit