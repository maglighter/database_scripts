spool spool_check.txt

SELECT COUNT (distinct s_pk_formapping) AS unsync_chartypes
  FROM ((SELECT *
           FROM datarep_user.ora_chartypes
         MINUS
         SELECT *
           FROM tar_user.ora_chartypes)
        UNION ALL
        (SELECT *
           FROM tar_user.ora_chartypes
         MINUS
         SELECT *
           FROM datarep_user.ora_chartypes));

SELECT COUNT (distinct s_pk_formapping) AS unsync_numbertypes
  FROM ((SELECT *
           FROM datarep_user.ora_numbertypes
         MINUS
         SELECT *
           FROM tar_user.ora_numbertypes)
        UNION ALL
        (SELECT *
           FROM tar_user.ora_numbertypes
         MINUS
         SELECT *
           FROM datarep_user.ora_numbertypes));
           
SELECT COUNT (distinct s_pk_formapping) AS unsync_datatypes
  FROM ((SELECT *
           FROM datarep_user.ora_datatypes
         MINUS
         SELECT *
           FROM tar_user.ora_datatypes)
        UNION ALL
        (SELECT *
           FROM tar_user.ora_datatypes
         MINUS
         SELECT *
           FROM datarep_user.ora_datatypes));
         
SELECT COUNT (distinct s_pk_formapping) AS unsync_raw
  FROM ((SELECT s_raw_max, s_pk_formapping, s_blob_name
           FROM datarep_user.ora_rawlobtypes
         MINUS
         SELECT s_raw_max, s_pk_formapping, s_blob_name
           FROM tar_user.ora_rawlobtypes)
        UNION ALL
        (SELECT s_raw_max, s_pk_formapping, s_blob_name
           FROM tar_user.ora_rawlobtypes
         MINUS
         SELECT s_raw_max, s_pk_formapping, s_blob_name
           FROM datarep_user.ora_rawlobtypes));

SELECT COUNT (distinct s_pk_formapping) AS unsync_raw
  FROM ((SELECT s_raw_mid, s_pk_formapping, s_blob_name
           FROM datarep_user.ora_rawlobtypes
         MINUS
         SELECT s_raw_mid, s_pk_formapping, s_blob_name
           FROM tar_user.ora_rawlobtypes)
        UNION ALL
        (SELECT s_raw_mid, s_pk_formapping, s_blob_name
           FROM tar_user.ora_rawlobtypes
         MINUS
         SELECT s_raw_mid, s_pk_formapping, s_blob_name
           FROM datarep_user.ora_rawlobtypes));

SELECT COUNT (distinct s_pk_formapping) AS unsync_raw
  FROM ((SELECT s_raw_min, s_pk_formapping, s_blob_name
           FROM datarep_user.ora_rawlobtypes
         MINUS
         SELECT s_raw_min, s_pk_formapping, s_blob_name
           FROM tar_user.ora_rawlobtypes)
        UNION ALL
        (SELECT s_raw_min, s_pk_formapping, s_blob_name
           FROM tar_user.ora_rawlobtypes
         MINUS
         SELECT s_raw_min, s_pk_formapping, s_blob_name
           FROM datarep_user.ora_rawlobtypes));      	   

select count(*) as unsync_nclob from tar_user.ora_RAWLOBTYPES a join 
 datarep_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
 where DBMS_LOB.compare(a.s_nclob, b.s_nclob) <>0;
 
select count(*) as unsync_clob from tar_user.ora_RAWLOBTYPES a join 
 datarep_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
 where DBMS_LOB.compare(a.s_clob, b.s_clob) <>0;
 
select count(*) as unsync_blob from tar_user.ora_RAWLOBTYPES a join 
 datarep_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
 where DBMS_LOB.compare(a.s_blob, b.s_blob) <>0; 
 
--select count(*) as unsync_longraw from tar_user.ora_RAWLOBTYPES a join 
-- datarep_user.ora_RAWLOBTYPES b on A.S_PK_FORMAPPING=B.S_PK_FORMAPPING
-- where DBMS_LOB.compare(a.s_long_raw, b.s_long_raw) <>0; 

spool off
exit
