ALTER TABLE ORA_range_partition_table add CONSTRAINT range_part_unique UNIQUE (S_DECIMAL);
ALTER TABLE ora_hashpartition_table add CONSTRAINT hash_part_unique UNIQUE (s_varchar2);
ALTER TABLE ORA_listpartition_table add CONSTRAINT char_list_part_unique UNIQUE (S_NVARCHAR2);
ALTER TABLE ora_rangehash_part_table add CONSTRAINT rangehash_part_unique UNIQUE (s_integer);
ALTER TABLE ora_rangelist_part_table add CONSTRAINT rangelist_part_unique UNIQUE (s_date);

ALTER TABLE test_as_select add CONSTRAINT test_as_select_unique UNIQUE (number_col);
ALTER TABLE test_ddl_all_datatypes add CONSTRAINT datatypes_unique UNIQUE (NUMERIC_COL);
ALTER TABLE test_composite_pk add CONSTRAINT composite_pk_unique UNIQUE (INTEGER_COL);
ALTER TABLE test_composite_pk2 add CONSTRAINT composite_pk2_unique UNIQUE (INTEGER_COL);
ALTER TABLE test_compess_tab add CONSTRAINT compess_tab_unique UNIQUE (created_date);
ALTER TABLE test_compess_tab2 add CONSTRAINT compess_tab2_unique UNIQUE (created_date);

ALTER TABLE simple_iot add CONSTRAINT simple_iot_unique UNIQUE (EMPLOYEE_NO);
ALTER TABLE compressed_iot add CONSTRAINT compressed_iot_unique UNIQUE (object_id);
ALTER TABLE complex_iot add CONSTRAINT complex_iot_unique UNIQUE (EMPLOYEE_NO);
ALTER TABLE complex_iot_complex add CONSTRAINT complex_iot_complex_unique UNIQUE (PAYCODE);

---

ALTER TABLE ORA_range_partition_table drop CONSTRAINT range_part_unique;
ALTER TABLE ora_hashpartition_table drop CONSTRAINT hash_part_unique;
ALTER TABLE ORA_listpartition_table drop CONSTRAINT char_list_part_unique;
ALTER TABLE ora_rangehash_part_table drop CONSTRAINT rangehash_part_unique;
ALTER TABLE ora_rangelist_part_table drop CONSTRAINT rangelist_part_unique;

ALTER TABLE test_as_select drop CONSTRAINT test_as_select_unique;
ALTER TABLE test_ddl_all_datatypes drop CONSTRAINT datatypes_unique;
ALTER TABLE test_composite_pk drop CONSTRAINT composite_pk_unique;
ALTER TABLE test_composite_pk2 drop CONSTRAINT composite_pk2_unique;
ALTER TABLE test_compess_tab drop CONSTRAINT compess_tab_unique;
ALTER TABLE test_compess_tab2 drop CONSTRAINT compess_tab2_unique;

ALTER TABLE simple_iot drop CONSTRAINT simple_iot_unique;
ALTER TABLE compressed_iot drop CONSTRAINT compressed_iot_unique;
ALTER TABLE complex_iot drop CONSTRAINT complex_iot_unique;
ALTER TABLE complex_iot_complex drop CONSTRAINT complex_iot_complex_unique;

-------------------------------------------------------------------------------------------------------------

ALTER TABLE ORA_range_partition_table drop CONSTRAINT ORA_range_part_PK;
ALTER TABLE ora_hashpartition_table drop CONSTRAINT ORA_hashpart_part_PK;
ALTER TABLE ORA_listpartition_table drop CONSTRAINT ORA_CHAR_list_part_PK;
ALTER TABLE ora_rangehash_part_table drop CONSTRAINT ORA_rangehashpart_part_PK;
ALTER TABLE ora_rangelist_part_table drop CONSTRAINT ORA_rangelist_part_PK;

ALTER TABLE ORA_range_partition_table add CONSTRAINT range_part_PK PRIMARY KEY (S_PK_FORMAPPING,S_NUMBER);
ALTER TABLE ora_hashpartition_table add CONSTRAINT hash_part_PK PRIMARY KEY (S_PK_FORMAPPING,S_NUMBER);
ALTER TABLE ORA_listpartition_table add CONSTRAINT list_part_PK PRIMARY KEY (S_PK_FORMAPPING,S_CHAR);
ALTER TABLE ora_rangehash_part_table add CONSTRAINT rangehash_part_PK PRIMARY KEY (S_PK_FORMAPPING,S_NUMBER);
ALTER TABLE ora_rangelist_part_table add CONSTRAINT rangelist_part_PK PRIMARY KEY (S_PK_FORMAPPING,S_NUMBER);

ALTER TABLE ORA_range_partition_table drop CONSTRAINT range_part_PK;
ALTER TABLE ora_hashpartition_table drop CONSTRAINT hash_part_PK;
ALTER TABLE ORA_listpartition_table drop CONSTRAINT list_part_PK;
ALTER TABLE ora_rangehash_part_table drop CONSTRAINT rangehash_part_PK;
ALTER TABLE ora_rangelist_part_table drop CONSTRAINT rangelist_part_PK;

ALTER TABLE ORA_range_partition_table add CONSTRAINT ORA_range_part_PK PRIMARY KEY (S_PK_FORMAPPING);
ALTER TABLE ora_hashpartition_table add CONSTRAINT ORA_hashpart_part_PK PRIMARY KEY (S_PK_FORMAPPING);
ALTER TABLE ORA_listpartition_table add CONSTRAINT ORA_CHAR_list_part_PK PRIMARY KEY (S_PK_FORMAPPING);
ALTER TABLE ora_rangehash_part_table add CONSTRAINT ORA_rangehashpart_part_PK PRIMARY KEY (S_PK_FORMAPPING);
ALTER TABLE ora_rangelist_part_table add CONSTRAINT ORA_rangelist_part_PK PRIMARY KEY (S_PK_FORMAPPING);

ALTER TABLE test_ddl_all_datatypes drop CONSTRAINT all_datatypes_PK;
ALTER TABLE test_composite_pk drop CONSTRAINT composite_PK;
ALTER TABLE test_composite_pk2 drop CONSTRAINT composite_PK2;

ALTER TABLE test_as_select add CONSTRAINT test_as_select_PK PRIMARY KEY (col_id, number_col);
ALTER TABLE test_ddl_all_datatypes add CONSTRAINT datatypes_PK PRIMARY KEY (col_id,number_col);
ALTER TABLE test_composite_pk add CONSTRAINT PK_test_composite PRIMARY KEY (col_id,char_col,number_col,integer_col);
ALTER TABLE test_composite_pk2 add CONSTRAINT PK2_test_composite PRIMARY KEY (col_id,char_col);
ALTER TABLE test_compess_tab add CONSTRAINT compess_tab_PK PRIMARY KEY (id_col,created_date);
ALTER TABLE test_compess_tab2 add CONSTRAINT compess_tab2_PK PRIMARY KEY (id_col,created_date);

ALTER TABLE test_as_select drop CONSTRAINT as_select_PK;
ALTER TABLE test_ddl_all_datatypes drop CONSTRAINT datatypes_PK;
ALTER TABLE test_composite_pk drop CONSTRAINT PK_test_composite;
ALTER TABLE test_composite_pk2 drop CONSTRAINT PK2_test_composite;
ALTER TABLE test_compess_tab drop CONSTRAINT compess_tab_PK;
ALTER TABLE test_compess_tab2 drop CONSTRAINT compess_tab2_PK;

ALTER TABLE test_as_select add CONSTRAINT as_select_PK PRIMARY KEY (col_id);
ALTER TABLE test_ddl_all_datatypes add CONSTRAINT all_datatypes_PK PRIMARY KEY (col_id, char_col);
ALTER TABLE test_composite_pk add CONSTRAINT composite_PK PRIMARY KEY (col_id,number_col);
ALTER TABLE test_composite_pk2 add CONSTRAINT composite_PK2 PRIMARY KEY (col_id,number_col);

ALTER TABLE simple_iot drop CONSTRAINT pk_simple_iot;
ALTER TABLE simple_iot add CONSTRAINT simple_iot_pk PRIMARY KEY (employee_no,work_date);
ALTER TABLE compressed_iot drop CONSTRAINT pk_compressed_iot;
ALTER TABLE compressed_iot add CONSTRAINT compressed_iot_pk PRIMARY KEY (object_name, object_id,owner);
ALTER TABLE complex_iot drop CONSTRAINT pk_complex_iot;
ALTER TABLE complex_iot add CONSTRAINT complex_iot_pk PRIMARY KEY (work_date, employee_no, summit_work_order_no, dash, class_code, paycode);
ALTER TABLE complex_iot_complex drop CONSTRAINT pk_complex_iot_complex;
ALTER TABLE complex_iot_complex add CONSTRAINT complex_iot_complex_pk PRIMARY KEY (work_date, employee_no, summit_work_order_no, dash, class_code, paycode);

--------------------------------------------------------------------------------------------------------------

ALTER TABLE ORA_range_partition_table MODIFY  S_DECIMAL NOT NULL;
ALTER TABLE ora_hashpartition_table MODIFY  s_varchar2 NOT NULL;
ALTER TABLE ORA_listpartition_table MODIFY  S_NVARCHAR2 NOT NULL;
ALTER TABLE ora_rangehash_part_table MODIFY  s_integer NOT NULL;
ALTER TABLE ora_rangelist_part_table MODIFY  s_date NOT NULL;

ALTER TABLE test_as_select MODIFY number_col NOT NULL;
ALTER TABLE test_ddl_all_datatypes MODIFY FLOAT_COL NOT NULL;
ALTER TABLE test_composite_pk MODIFY COL_ID NOT NULL;
ALTER TABLE test_composite_pk MODIFY NUMBER_COL NOT NULL;
ALTER TABLE test_composite_pk MODIFY char_col NOT NULL;
ALTER TABLE test_composite_pk2 MODIFY NUMBER_COL NOT NULL;

delete from compressed_iot;

ALTER TABLE simple_iot MODIFY integer_col NOT NULL;
ALTER TABLE compressed_iot MODIFY integer_col NOT NULL;
ALTER TABLE complex_iot MODIFY MOD_USER_DATE NOT NULL;
ALTER TABLE complex_iot_complex MODIFY MOD_USER_DATE NOT NULL;

ALTER TABLE simple_iot MODIFY integer_col NULL;
ALTER TABLE compressed_iot MODIFY integer_col NULL;
ALTER TABLE complex_iot MODIFY MOD_USER_DATE NULL;
ALTER TABLE complex_iot_complex MODIFY MOD_USER_DATE NULL;

ALTER TABLE ORA_range_partition_table MODIFY S_DECIMAL NULL;
ALTER TABLE ora_hashpartition_table MODIFY s_varchar2 NULL;
ALTER TABLE ORA_listpartition_table MODIFY S_NVARCHAR2 NULL;
ALTER TABLE ora_rangehash_part_table MODIFY s_integer NULL;
ALTER TABLE ora_rangelist_part_table MODIFY s_date NULL;

ALTER TABLE test_as_select MODIFY number_col NULL;
ALTER TABLE test_ddl_all_datatypes MODIFY FLOAT_COL NULL;
ALTER TABLE test_composite_pk MODIFY NUMBER_COL NULL;
ALTER TABLE test_composite_pk2 MODIFY NUMBER_COL NULL;
ALTER TABLE test_compess_tab MODIFY created_date NULL;
ALTER TABLE test_compess_tab2 MODIFY created_date NULL;

ALTER TABLE test_compess_tab MODIFY created_date NOT NULL;
ALTER TABLE test_compess_tab2 MODIFY created_date NOT NULL;