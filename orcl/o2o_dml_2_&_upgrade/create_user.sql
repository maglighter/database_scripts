set echo on
set serveroutput on
spool spool_create_user.txt

CREATE USER ORA_TEST_USER IDENTIFIED BY ora_test_user;
GRANT CONNECT, RESOURCE TO ORA_TEST_USER;
CREATE USER DST_TEST_USER IDENTIFIED BY dst_test_user;
GRANT CONNECT, RESOURCE TO DST_TEST_USER;

spool off

exit