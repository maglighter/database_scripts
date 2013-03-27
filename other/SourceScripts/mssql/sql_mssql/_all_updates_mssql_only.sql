USE [db_to_ora] 
GO
/****** Object:  Table [dbo].[all_types_mssql]    Script Date: 11/15/2011 17:57:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
BEGIN 
declare @i int;
DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT;
DECLARE @Upper2 INT;
DECLARE @Lower2 INT;
declare @Random_f float;



---- This will create a random number between 1 and 999
SET @Lower = 1; ---- The lowest random number
SET @Upper = 999; ---- The highest random number
SET @Lower2 = 1; ---- The lowest random number
SET @Upper2 = 28; ---- The highest random number
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);

set @i=0;


while @i <10
begin

-----------------
-- random inserts 
-----------------

INSERT INTO [testing].[all_types_mssql_bounds]
           ([s_varchar]
           ,[s_char]
           ,[s_nchar]
           ,[s_nvarchar]
           ,[s_ntext1]
           ,[s_ntext2]
           ,[s_text1]
           ,[s_text2]
           ,[s_binary]
           ,[s_varbinary]
           ,[s_datetime27]
           ,[s_datetime26]
           ,[s_datetime25]
           ,[s_datetime24]
           ,[s_datetime23]
           ,[s_datetime22]
           ,[s_datetime21]
           ,[s_datetime20]
           ,[s_datetimeoffs7]
           ,[s_datetimeoffs6]
           ,[s_datetimeoffs5]
           ,[s_datetimeoffs4]
           ,[s_datetimeoffs3]
           ,[s_datetimeoffs2]
           ,[s_datetimeoffs1]
           ,[s_datetimeoffs0]
           ,[s_time7]
           ,[s_time6]
           ,[s_time5]
           ,[s_time4]
           ,[s_time3]
           ,[s_time2]
           ,[s_time1]
           ,[s_time0])
     VALUES
           ('1'
           ,'a'--null --'ÊÅ' -- ÊÂ Ê§<s_char, char(1),>
           ,'ÊÅ'
           ,'ÊÅ'
           ,' 123456!@#$%^&*()><ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§'
           ,' 123456!@#$%^&*()>< ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§'
           ,'ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§'
           ,'ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§'
           ,convert (binary, 'a')-- as binary)
           ,cast ( 'z' as varbinary)
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(7)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(6)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(5)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(4)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(3)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(2)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(1)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(0)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(7))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(6))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(5))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(4))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(3))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(2))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(1))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(0))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(7))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(6))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(5))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(4))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(3))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(2))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(1))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(0))
);
INSERT INTO [testing].[all_types_mssql_bounds]
           ([s_varchar]
           ,[s_char]
           ,[s_nchar]
           ,[s_nvarchar]
           ,[s_ntext1]
           ,[s_ntext2]
           ,[s_text1]
           ,[s_text2]
           ,[s_binary]
           ,[s_varbinary]
           ,[s_datetime27]
           ,[s_datetime26]
           ,[s_datetime25]
           ,[s_datetime24]
           ,[s_datetime23]
           ,[s_datetime22]
           ,[s_datetime21]
           ,[s_datetime20]
           ,[s_datetimeoffs7]
           ,[s_datetimeoffs6]
           ,[s_datetimeoffs5]
           ,[s_datetimeoffs4]
           ,[s_datetimeoffs3]
           ,[s_datetimeoffs2]
           ,[s_datetimeoffs1]
           ,[s_datetimeoffs0]
           ,[s_time7]
           ,[s_time6]
           ,[s_time5]
           ,[s_time4]
           ,[s_time3]
           ,[s_time2]
           ,[s_time1]
           ,[s_time0])
     VALUES
           ('1'
           ,null --'ÊÅ' -- ÊÂ Ê§<s_char, char(1),>
           ,'ÊÅ'
           ,'ÊÅ'
           ,''
           ,null
           ,null
           ,null
           , convert (binary, 'aa')-- as binary)
           ,null--cast ( 'z' as varbinary)
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(7)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(6)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(5)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(4)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(3)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(2)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(1)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetime2(0)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(7))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(6))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(5))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(4))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(3))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(2))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(1))
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS datetimeoffset(0))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(7))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(6))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(5))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(4))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(3))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(2))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(1))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.01234567 +12:15' AS time(0))
);
/*INSERT INTO [testing].[Minihp_BoardItem_image]
           ([writer_nm]
           ,[title]
           ,[content]
           ,[write_dt]
           ,[attach_type]
           ,[attach_nm])
     VALUES
           ('writer_ÊÂ'
           ,'title_ÊÂ'
           ,'ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§ÊÅ ÊÂ Ê§'
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS smalldatetime)
           ,'I'
           ,'attachÊ§_nm.doc');
-----------------
-- random updates 
-----------------

SET @Lower = (select min(item_seq) from [testing].[Minihp_BoardItem_image]); 
SET @Upper = (select max(item_seq) from [testing].[Minihp_BoardItem_image]); 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);

update [testing].[Minihp_BoardItem_image] set
            [writer_nm] = 'ÊÅ ÊÂ Ê§ ÊÅ '
           ,[write_dt]=CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS smalldatetime)
where item_seq = @Random;
*/
SET @Lower = (select min(s_bigint) from [testing].[all_types_mssql_bounds]); 
SET @Upper = (select max(s_bigint) from [testing].[all_types_mssql_bounds]); 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);

update [testing].[all_types_mssql_bounds] set
            [s_varchar] = null
           ,[s_char] = 's'
           ,[s_nchar] = 'ÊÂ'
           ,[s_nvarchar] = 'ÊÂ'
           ,[s_ntext1] = 'ÊÂ'
           ,[s_ntext2] = 'ÊÂ'
           ,[s_text1] = 'ÊÂ'
           ,[s_text2] = null
           ,[s_binary] = convert (binary, ' b')
           ,[s_varbinary] = null
           ,[s_datetime27] = CAST('2009-12-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.65432177 +12:15' AS datetime2(7)) 
           ,[s_datetime26] = CAST('2009-12-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.65432177 +12:15' AS datetime2(6)) 
           ,[s_datetime25] = CAST('2009-12-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.65432177 +12:15' AS datetime2(5)) 
           ,[s_datetime24] = CAST('2009-12-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.65432177 +12:15' AS datetime2(4)) 
           ,[s_datetime23] = null
           ,[s_datetime22] = CAST('2009-12-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.65432177 +12:15' AS datetime2(2)) 
           ,[s_datetime21] = CAST('2009-12-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.65432177 +12:15' AS datetime2(1)) 
           ,[s_datetime20] = CAST('2009-12-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.65432177 +12:15' AS datetime2(0)) 
           ,[s_datetimeoffs7]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS datetimeoffset(7))
           ,[s_datetimeoffs6]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS datetimeoffset(6))
           ,[s_datetimeoffs5]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS datetimeoffset(5))
           ,[s_datetimeoffs4] = null
           ,[s_datetimeoffs3] = null
           ,[s_datetimeoffs2]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS datetimeoffset(2))
           ,[s_datetimeoffs1]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS datetimeoffset(1))
           ,[s_datetimeoffs0] = null
           ,[s_time7]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS time(7))
           ,[s_time6]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS time(6))
           ,[s_time5] = null
           ,[s_time4]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS time(4))
           ,[s_time3]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS time(3))
           ,[s_time2]=CAST('2011-11-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.98765432 +12:15' AS time(2))
           ,[s_time1] = null
           ,[s_time0] = null
           where s_bigint = @Random;
           

set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);
set @i=@i+1;
           
end;

-----------------
-- random deletes 
-----------------

set @i=0;

while @i <5

begin

SET @Lower = (select min(s_bigint) from [testing].[all_types_mssql_bounds]); 
SET @Upper = (select max(s_bigint) from [testing].[all_types_mssql_bounds]); 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);

delete from [testing].[all_types_mssql_bounds] 
           where s_bigint = @Random;
/*
SET @Lower = (select min(item_seq) from [testing].[Minihp_BoardItem_image]); 
SET @Upper = (select max(item_seq) from [testing].[Minihp_BoardItem_image]); 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);
delete from [testing].[Minihp_BoardItem_image] 
           where item_seq = @Random;
*/
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);
set @i=@i+1;

end;

end;

SET ANSI_PADDING OFF
GO


