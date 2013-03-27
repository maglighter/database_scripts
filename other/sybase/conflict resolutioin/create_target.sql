print '<<<<< CREATING Tables - test all datatypes >>>>>'
	go
	
	use TConflicts
	go 
	
	setuser 'dbo'
	go 
create table S2S_conflict_2_1 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/	
s_bit bit not null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_2(
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_tinyint tinyint null)
lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_3 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_smallint smallint  null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go



create table S2S_conflict_2_4 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_usmallint unsigned smallint  null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_5 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_uint unsigned int null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_6 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
		s_bigint bigint null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go

	create table S2S_conflict_2_7 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_ubigint unsigned bigint null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_8 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_numeric numeric (38, 8) null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_9 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_decimal decimal (38, 8) null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_10 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_float float(40) null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_11 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
		s_double double precision null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 
	create table S2S_conflict_2_12 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_real real null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_13 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_smallmoney smallmoney null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 

	create table S2S_conflict_2_14 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_money money null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_15 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_smalldatetime smalldatetime null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_16 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_datetime datetime null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_17 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_date date null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go
	create table S2S_conflict_2_18 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_time time null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_19 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_bigtime bigtime null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	create table S2S_conflict_2_20 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_bigdatetime bigdatetime null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_21(
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_binary binary(1000) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_22 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_varbinary varbinary(1000) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
 
	
create table S2S_conflict_2_23 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_char char(100) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_24 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_varchar varchar(500) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_25 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_unichar unichar (100) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_26 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_univarchar univarchar (500) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_27 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_nchar nchar(100) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	create table S2S_conflict_2_28 (
	s_int int IDENTITY PRIMARY KEY, /*PK*/	
	s_nvarchar nvarchar(500) null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
 


create table S2S_conflict_2_1_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/	
s_bit bit not null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_2_LOG(
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_tinyint tinyint null)
lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_3_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_smallint smallint  null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go



create table S2S_conflict_2_4_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_usmallint unsigned smallint  null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_5_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_uint unsigned int null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_6_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
		s_bigint bigint null,
)
lock allpages
	with dml_logging = full
	 on 'default'
	go

	create table S2S_conflict_2_7_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_ubigint unsigned bigint null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_8_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_numeric numeric (38, 8) null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_9_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_decimal decimal (38, 8) null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_10_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_float float(40) null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_11_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
		s_double double precision null,
    )lock allpages
	with dml_logging = full
	 on 'default'
	go 
	create table S2S_conflict_2_12_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_real real null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_13_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_smallmoney smallmoney null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 

	create table S2S_conflict_2_14_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_money money null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_15_LOG(
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_smalldatetime smalldatetime null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_16_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_datetime datetime null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go

create table S2S_conflict_2_17_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_date date null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go
	create table S2S_conflict_2_18_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_time time null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_19_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_bigtime bigtime null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	create table S2S_conflict_2_20_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_bigdatetime bigdatetime null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	
create table S2S_conflict_2_21_LOG(
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_binary binary(1000) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_22_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_varbinary varbinary(1000) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
 
	
create table S2S_conflict_2_23_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_char char(100) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 

create table S2S_conflict_2_24_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_varchar varchar(500) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_25_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_unichar unichar (100) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_26_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_univarchar univarchar (500) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
create table S2S_conflict_2_27_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/
	s_nchar nchar(100) null,
)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
	create table S2S_conflict_2_28_LOG (
	s_int int IDENTITY PRIMARY KEY, /*PK*/	
	s_nvarchar nvarchar(500) null,
	)
	lock allpages
	with dml_logging = full
	 on 'default'
	go 
 
	
	setuser
	go