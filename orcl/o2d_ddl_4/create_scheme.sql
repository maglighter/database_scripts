--oracle
--DROP USER O2D_DDL_4 CASCADE;
CREATE USER O2D_DDL_4 IDENTIFIED BY O2D_DDL_4;
GRANT CONNECT, RESOURCE TO O2D_DDL_4;

--db2
CONNECT TO SOURCE;
CREATE SCHEMA O2D_DDL_4 AUTHORIZATION ATF;
CONNECT RESET;