spool spool_check.txt

SELECT COUNT (distinct s_pk_formapping) AS unsync_s_char
  FROM ((SELECT s_pk_formapping,s_char
           FROM dbdest_user.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_char
           FROM dbdest_sec.ora_chartypes)
        UNION ALL
        (SELECT s_pk_formapping,s_char
           FROM dbdest_sec.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_char
           FROM dbdest_user.ora_chartypes));
 
 SELECT COUNT (distinct s_pk_formapping) AS unsync_s_nchar
  FROM ((SELECT s_pk_formapping,s_nchar
           FROM dbdest_user.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_nchar
           FROM dbdest_sec.ora_chartypes)
        UNION ALL
        (SELECT s_pk_formapping,s_nchar
           FROM dbdest_sec.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_nchar
           FROM dbdest_user.ora_chartypes));
 
  SELECT COUNT (distinct s_pk_formapping) AS unsync_s_nvarchar2
  FROM ((SELECT s_pk_formapping,s_nvarchar2
           FROM dbdest_user.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_nvarchar2
           FROM dbdest_sec.ora_chartypes)
        UNION ALL
        (SELECT s_pk_formapping,s_nvarchar2
           FROM dbdest_sec.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_nvarchar2
           FROM dbdest_user.ora_chartypes));
           
  SELECT COUNT (distinct s_pk_formapping) AS unsync_s_varchar2
  FROM ((SELECT s_pk_formapping,s_varchar2
           FROM dbdest_user.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_varchar2
           FROM dbdest_sec.ora_chartypes)
        UNION ALL
        (SELECT s_pk_formapping,s_varchar2
           FROM dbdest_sec.ora_chartypes
         MINUS
         SELECT s_pk_formapping,s_varchar2
           FROM dbdest_user.ora_chartypes));
 
spool off
exit