BEGIN 

declare @i int;
DECLARE @Upper2 INT;
DECLARE @Lower2 INT;

set @i=0;
SET @Lower2 = 1; ---- The lowest random number
SET @Upper2 = 28; ---- The highest random number
while @i <50
begin
INSERT INTO [db_to_ora].[testing].[all_types_mssql_bounds]
          ([s_bigint]
          ,[s_varchar]
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

          (@i
          ,'1'
          ,'a'
          ,''
          ,'a'
          ,' 123456!@#$%^&*()><'
          ,' 123456!@#$%^&*()><zz'
          ,'asdqer '
          ,'qwert '
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

set @i=@i+1;
end;
 end;