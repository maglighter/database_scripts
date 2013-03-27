
ALTER TABLE dbo.test_real add  n_real real   NULL
ALTER TABLE dbo.test_real modify n_real NOT NULL
create unique index index_dec_uniq on  dbo.test_real(s_decimal)

alter table dbo.ELE_test_create drop constraint SBS_Basic__11840042181

alter table dbo.ELE_test_create add constraint PK_test primary key (s_int)

alter table Dest.dbo.test_real drop constraint test_real_s_int_786202921
go


create table ELE_test_create (
s_int int, /*PK*/
)
lock allpages
with dml_logging = full
 on 'default'
go

 alter table ELE_test_create add (
s_bit bit not null,
s_tinyint tinyint null,
s_smallint smallint  null,
s_usmallint unsigned smallint  null,
s_uint unsigned int null,
s_bigint bigint null,
s_ubigint unsigned bigint null,
s_numeric numeric (38, 8) null,
s_decimal decimal (38, 8) null,
s_float float(40) null,
s_double double precision null,
s_real real null,
s_binary binary(1000) null,
s_varbinary varbinary(1000) null,
s_image image null,
s_char char(100) null,
s_varchar varchar(500) null,
s_unichar unichar (100) null,
s_univarchar univarchar (500) null,
s_nchar nchar(100) null,
s_nvarchar nvarchar(500) null,
s_text text null,
s_unitext unitext null)