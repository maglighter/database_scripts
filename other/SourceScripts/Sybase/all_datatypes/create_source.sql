print '<<<<< CREATING Tables - test all datatypes >>>>>'
go

use idr
go 

setuser 'dbo'
go 

create table ELE_BASIC_TYPES (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_bit bit not null,
s_tinyint tinyint null,
s_smallint smallint  null,
s_usmallint unsigned smallint  null,
s_uint unsigned int null,
s_bigint bigint null,
s_ubigint unsigned bigint null,
)
lock allpages
with dml_logging = full
 on 'default'
go 

create table ELE_DECIMAL_TYPES (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_numeric numeric (38, 8) null,
s_decimal decimal (38, 8) null,
s_float float(40) null,
s_double double precision null,
s_real real null,
)
lock allpages
with dml_logging = full
 on 'default'
go 

create table ELE_MONEY_TYPES (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_smallmoney smallmoney null,
s_money money null
)
lock allpages
with dml_logging = full
 on 'default'
go 

create table ELE_DATETIME_TYPES (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_smalldatetime smalldatetime null,
s_datetime datetime null,
s_date date null,
s_time time null
)
lock allpages
with dml_logging = full
 on 'default'
go 

create table ELE_BIGDATE_TYPES (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_bigtime bigtime null,
s_bigdatetime bigdatetime null,

)
lock allpages
with dml_logging = full
 on 'default'
go 

create table ELE_BINARY_TYPES (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_binary binary(1000) null,
s_varbinary varbinary(1000) null,
s_image image null,
)
lock allpages
with dml_logging = full
 on 'default'
go 

create table ELE_CHARACTER_TYPES (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_char char(100) null,
s_varchar varchar(500) null,
s_unichar unichar (100) null,
s_univarchar univarchar (500) null,
s_nchar nchar(100) null,
s_nvarchar nvarchar(500) null,
)
lock allpages
with dml_logging = full
 on 'default'
go 

create table ELE_CHARACTER_TYPES_LNG (
s_int int IDENTITY PRIMARY KEY, /*PK*/
s_text text null,
s_unitext unitext null,
)
lock allpages
with dml_logging = full
 on 'default'
go 

setuser
go 
