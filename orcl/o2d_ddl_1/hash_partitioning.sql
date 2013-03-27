CREATE TABLE O2D_DDL_1.O2D_DDL_1_HASH_PARTITIONING
(s_id  NUMBER(5), 
s_name VARCHAR2(30), 
s_amount  NUMBER(10), 
week_no       NUMBER(2)) 
PARTITION BY HASH(s_id) 
PARTITIONS 4 
STORE IN (data1, data2, data3, data4);
