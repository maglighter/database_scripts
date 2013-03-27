select count(*) from dbo.SBS_BASIC_TYPES
select count(*) from dbo.SBS_BINARY_TYPES
select count(*) from dbo.SBS_CHARACTER_TYPES
select count(*) from dbo.SBS_CHARACTER_TYPES_LNG
select count(*) from dbo.SBS_DATETIME_TYPES
select count(*) from dbo.SBS_DECIMAL_TYPES
select count(*) from dbo.SBS_MONEY_TYPES

delete from dbo.SBS_BASIC_TYPES
delete from dbo.SBS_BIGDATE_TYPES
delete from dbo.SBS_BINARY_TYPES
delete from dbo.SBS_CHARACTER_TYPES
delete from dbo.SBS_CHARACTER_TYPES_LNG
delete from dbo.SBS_DATETIME_TYPES
delete from dbo.SBS_DECIMAL_TYPES
delete from dbo.SBS_MONEY_TYPES
delete from dbo.DBSYNC_SYNC_LSN

dbcc set_identity_burn_max(S2O_autotest,SBS_BASIC_TYPES,'0')
dbcc set_identity_burn_max(S2O_autotest,SBS_BIGDATE_TYPES,'0')
dbcc set_identity_burn_max(S2O_autotest,SBS_BINARY_TYPES,'0')
dbcc set_identity_burn_max(S2O_autotest,SBS_CHARACTER_TYPES,'0')
dbcc set_identity_burn_max(S2O_autotest,SBS_CHARACTER_TYPES_LNG,'0')
dbcc set_identity_burn_max(S2O_autotest,SBS_DATETIME_TYPES,'0')
dbcc set_identity_burn_max(S2O_autotest,SBS_DECIMAL_TYPES,'0')
dbcc set_identity_burn_max(S2O_autotest,SBS_MONEY_TYPES,'0')


Select s_int, convert(varchar(40), s_time, 20) s_time from SBS_Time_Column

delete from dbo.ORA_CHARTYPES
delete from dbo.ORA_DATATYPES
delete from dbo.ORA_NUMBERTYPES
delete from dbo.ORA_RAWLOBTYPES

delete from dbo.TAB_NUMBER

dbcc dbtable