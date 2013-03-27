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


while @i <100
begin

-----------------
-- random inserts 
-----------------

INSERT INTO [db_to_ora].[testing].[all_types_mssql]
           ([s_int]
           ,[s_smallint]
           ,[s_tinyint]
           ,[s_bit]
           ,[s_decimal]
           ,[s_numeric]
           ,[s_money]
           ,[s_smallmoney]
           ,[s_float]
           ,[s_datetime]
           ,[s_smaldatetime]
           ,[s_varchar]
           ,[s_char]
           ,[s_nchar]
           ,[s_nvarchar]
           ,[s_nvarcharmax]
           ,[s_ntext]
           ,[s_binary]
           ,[s_varbinary]
           ,[s_varbinmax]
           ,[s_image]
           ,[s_date]
           ,[s_datetime2]
           ,[s_datetimeoffs]
           ,[s_time]
           ,[s_real])
     VALUES
           (ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           ,@i
           ,6
           ,0
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS datetime)
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS smalldatetime)
           ,'varchar'+ CAST (@Random as varchar)
           ,'char' + CAST (@Random as char)
           ,'nchar' + CAST (@Random as nchar)
           ,'nvarchar' + CAST (@Random as nvarchar)
           ,'nvarcharmax'+ CAST (@Random as nvarchar)
           ,'ntext'+ CAST (@Random as varchar)
           ,cast ('binary' + CAST (@Random as varchar) as binary)
           ,cast ('varbinary' + CAST (@Random as varchar) as varbinary)
           ,cast ('varbinarymax' + CAST (@Random as varchar) as varbinary)
           ,cast ('image' + CAST (@Random as varchar) as image)
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS date)
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS datetime2(7)) 
           ,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS datetimeoffset(7))
           , CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS time(7))
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           )
;

INSERT INTO [db_to_ora].[testing].[all_types_mssql_long]
           ([s_varcharmax]
           ,[s_text]
           ,[s_uidentify]
           ,[s_xml])
     VALUES
           ('varcharmax'+ CAST (@Random as varchar)
           ,'text'+ CAST (@Random as varchar)
           ,NEWID()
           ,'<DataMapRepository xmlns:xsi="http://www.w3.org"> <Database id="1">  <Vendor>ORACLE</Vendor>  </Database> </DataMapRepository>'
           );

-----------------
-- random updates 
-----------------

UPDATE [db_to_ora].[testing].[all_types_mssql_long]
           set
            [s_varcharmax] = 'varcharmax'+ CAST (@Random as varchar)
           ,[s_text] = 'text'+ CAST (@Random as varchar)
           ,[s_xml] = '<DataMapRepository xmlns:xsi="http://www.w3.org"> <Database id="1">  <Vendor>ORACLE</Vendor>  </Database> </DataMapRepository>'
           ,[s_uidentify] = NEWID() 
           where s_bigint = @Random;

UPDATE [db_to_ora].[testing].[all_types_mssql] 
           SET
           [s_int] = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           ,[s_smallint] = @i
           ,[s_tinyint] = 9
           ,[s_bit] = 1
           ,[s_decimal] = RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           ,[s_numeric] = RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           ,[s_money] = RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) 
           ,[s_smallmoney] = RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,[s_float] = RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,[s_datetime] = CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS datetime)
           ,[s_smaldatetime] = CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS smalldatetime)
           ,[s_varchar] = 'varchar '+ CAST (@Random as varchar)
           ,[s_char] = 'char ' + CAST (@Random as char)
           ,[s_nchar] = 'nchar ' + CAST (@Random as nchar)
           ,[s_nvarchar] = 'nvarchar ' + CAST (@Random as nvarchar)
           ,[s_nvarcharmax] ='nvarcharmax '+ CAST (@Random as nvarchar)
           ,[s_ntext]= 'ntext '+ CAST (@Random as varchar)
           ,[s_binary]= cast ('binary' + CAST (@Random as varchar) as binary)
           ,[s_varbinary]= cast ('varbinary' + CAST (@Random as varchar) as varbinary)
           ,[s_varbinmax]= cast ('varbinarymax' + CAST (@Random as varchar) as varbinary)
           ,[s_image]= cast ('image' + CAST (@Random as varchar) as image)
           ,[s_date]= CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS date)
           ,[s_datetime2]= CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS datetime2(7)) 
           ,[s_datetimeoffs]= CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS datetimeoffset(7))
           ,[s_time]= CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS time(7))
           ,[s_real]= RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           where s_bigint = @Random;

set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);
set @i=@i+1;
           
end;

-----------------
-- random deletes 
-----------------

set @i=0;
SET @Lower = (select min(s_bigint) from [db_to_ora].[testing].[all_types_mssql]); 
SET @Upper = (select max(s_bigint) from [db_to_ora].[testing].[all_types_mssql]); 

while @i <50 

begin
delete from [db_to_ora].[testing].[all_types_mssql_long]
           where s_bigint = @Random;
delete from [db_to_ora].[testing].[all_types_mssql] 
           where s_bigint = @Random;

set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);
set @i=@i+1;

end;
end;

SET ANSI_PADDING OFF
GO


