CREATE TABLE O2D_DDL_1.O2D_DDL_1_LIST_PARTITIONING
(s_id  NUMBER(5), 
s_state   VARCHAR2(20),
s_date    DATE)
PARTITION BY LIST(s_state)
(
PARTITION west VALUES('California', 'Hawaii'),
PARTITION east VALUES ('New York', 'Virginia', 'Florida'),
PARTITION other VALUES(DEFAULT)
);
