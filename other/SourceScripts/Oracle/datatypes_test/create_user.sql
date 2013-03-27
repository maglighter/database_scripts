set echo on
set serveroutput on
spool spool_create_user.txt

CREATE USER ORA_TEST_USER IDENTIFIED BY ora_test_user DEFAULT	TABLESPACE  USERS;
GRANT CONNECT, RESOURCE TO ORA_TEST_USER;

spool off

exit