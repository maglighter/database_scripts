--sqlplus ORA_TEST_USER/ora_test_user@orcl

drop table ORA_NUMBERTYPES;
drop table ORA_CHARTYPES;
drop table ORA_DATATYPES; 
drop table ORA_RAWLOBTYPES;	
commit;

truncate table ORA_NUMBERTYPES;
truncate table ORA_CHARTYPES;
truncate table ORA_DATATYPES; 
truncate table ORA_RAWLOBTYPES;	
commit;
