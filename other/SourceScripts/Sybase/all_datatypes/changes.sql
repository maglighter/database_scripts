go

use test_excellent
go 

setuser 'dbo'
go 


BEGIN 
    declare @i int
    DECLARE @Random INT
    DECLARE @Upper INT
    DECLARE @Lower INT
    DECLARE @Upper2 INT
    DECLARE @Lower2 INT
    declare @Random_f float
     
    ---- This will create a random number between 1 and 999
    SET @Lower = 1 ---- The lowest random number
    SET @Upper = 999 ---- The highest random number
    SET @Lower2 = 1 ---- The lowest random number
    SET @Upper2 = 28 ---- The highest random number
    set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)    
    set @i=0

while @i <3
    begin
    -----------------
    -- random inserts 
    -----------------
    
    INSERT INTO ELE_BASIC_TYPES
               (
                 s_smallint
                ,s_tinyint
                ,s_bit
                ,s_usmallint
                ,s_uint
                ,s_bigint
                ,s_ubigint
               )
         VALUES (
                @Random
               ,@i
               ,0
               ,@Random
               ,@Random
               ,ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
               ,ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
               )
  
print '<<<<< insert - "Test.dbo.ELE_Binary_Types" >>>>>'

 insert into ELE_BINARY_TYPES (
	s_binary,
	s_varbinary,
	s_image
)
values
(
           cast ('binary' + CAST (@Random as varchar) as binary)
           ,cast ('varbinary' + CAST (@Random as varchar) as varbinary)
           ,cast ('image' + CAST (@Random as varchar) as image)
)
 
print '<<<<< insert - "Test.dbo.ELE_Character_Types" >>>>>'

insert into ELE_CHARACTER_TYPES (
	s_char,
	s_varchar,
	s_unichar,
	s_univarchar,
	s_nchar,
	s_nvarchar
)
values
(
           'char' + CAST (@Random as char)
           ,'varchar'+ CAST (@Random as varchar)
           ,'unichar' + CAST (@Random as char)
           ,'univarchar'+ CAST (@Random as varchar)
           ,'nchar' + CAST (@Random as nchar)
           ,'nvarchar' + CAST (@Random as nvarchar)
)

insert into ELE_CHARACTER_TYPES_LNG (
s_text,
s_unitext
)
values
(
           'text'+ CAST (@Random as varchar)
           ,'unitext'+ CAST (@Random as varchar)
) 

print '<<<<< insert - "Test.dbo.ELE_Datetime_Types" >>>>>'

insert into ELE_DATETIME_TYPES (
	s_smalldatetime,
	s_datetime,
	s_date,
	s_time
)
values
(
            dateadd(dd, @Random/(@i+1), getdate()) --CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS smalldatetime)
           ,dateadd(dd, @Random/(@i+1), getdate())--CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS datetime)
           ,dateadd(dd, @Random/(@i+1), getdate())--CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS date)
           ,dateadd(dd, @Random/(@i+1), getdate())--CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.1234567 +12:15' AS time)
)

print '<<<<< insert - "Test.dbo.ELE_Bigdate_Types" >>>>>'

insert into ELE_BIGDATE_TYPES (
	s_bigtime,
	s_bigdatetime
)
values
(
			current_bigtime(),
			current_bigdatetime()
)

print '<<<<< insert - "Test.dbo.ELE_Decimal_Types" >>>>>'

insert into  ELE_DECIMAL_TYPES (
	s_numeric,
	s_decimal,
	s_float,
	s_double,
	s_real
)
values
(
           RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
)

print '<<<<< insert - "Test.dbo.ELE_Money_Types" >>>>>'

insert into ELE_MONEY_TYPES (
	s_smallmoney,
	s_money 
)
values
(
           RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
)

print '<<<<< UPDATES >>>>>'
-----------UPDATES
SET @Lower = (select min(s_int) from ELE_BASIC_TYPES) 
SET @Upper = (select max(s_int) from ELE_BASIC_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

    update ELE_BASIC_TYPES set
                 s_smallint = @Random + 1
                ,s_tinyint = @i + 1
                ,s_bit = 1
                ,s_usmallint = @Random + 1
                ,s_uint = @Random + 1
                ,s_bigint = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
                ,s_ubigint = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
     where s_int = @Random
  
SET @Lower = (select min(s_int) from ELE_BINARY_TYPES) 
SET @Upper = (select max(s_int) from ELE_BINARY_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

 update ELE_BINARY_TYPES  set
	s_binary = cast ('updated binary' + CAST (@Random as varchar) as binary),
	s_varbinary = cast ('updated varbinary' + CAST (@Random as varchar) as varbinary),
	s_image = cast ('updated image' + CAST (@Random as varchar) as image)
     where s_int = @Random

SET @Lower = (select min(s_int) from ELE_CHARACTER_TYPES) 
SET @Upper = (select max(s_int) from ELE_CHARACTER_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

update ELE_CHARACTER_TYPES set
	s_char='updates char' + CAST (@Random as char),
	s_varchar='updates varchar'+ CAST (@Random as varchar),
	s_unichar='updates unichar' + CAST (@Random as char),
	s_univarchar='updates univarchar'+ CAST (@Random as varchar),
	s_nchar='updates nchar' + CAST (@Random as nchar),
	s_nvarchar='updates nvarchar' + CAST (@Random as nvarchar)
    where s_int = @Random

SET @Lower = (select min(s_int) from ELE_CHARACTER_TYPES_LNG) 
SET @Upper = (select max(s_int) from ELE_CHARACTER_TYPES_LNG) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

update ELE_CHARACTER_TYPES_LNG set
s_text='updates text'+ CAST (@Random as varchar),
s_unitext='updates unitext'+ CAST (@Random as varchar)
    where s_int = @Random

SET @Lower = (select min(s_int) from ELE_DATETIME_TYPES) 
SET @Upper = (select max(s_int) from ELE_DATETIME_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

update ELE_DATETIME_TYPES set
	s_smalldatetime =dateadd(dd, @Random/(@i+1), getdate()),
	s_datetime=dateadd(dd, @Random/(@i+1), getdate()),
	s_date=dateadd(dd, @Random/(@i+1), getdate()),
	s_time=dateadd(dd, @Random/(@i+1), getdate())
    where s_int = @Random
	
SET @Lower = (select min(s_int) from ELE_BIGDATE_TYPES) 
SET @Upper = (select max(s_int) from ELE_BIGDATE_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

update ELE_BIGDATE_TYPES set
	s_bigtime =current_bigtime(),
	s_bigdatetime=current_bigdatetime()
    where s_int = @Random

SET @Lower = (select min(s_int) from ELE_DECIMAL_TYPES) 
SET @Upper = (select max(s_int) from ELE_DECIMAL_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

update  ELE_DECIMAL_TYPES set
	s_numeric=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0),
	s_decimal=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
	s_float=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
	s_double=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
	s_real=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
    where s_int = @Random


SET @Lower = (select min(s_int) from ELE_MONEY_TYPES) 
SET @Upper = (select max(s_int) from ELE_MONEY_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

update ELE_MONEY_TYPES set
	s_smallmoney=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
	s_money=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) 
   where s_int = @Random

----------iterate
    set @i=@i+1         
    end --end while

print '<<<<< Deletes >>>>>'
-----------deletes
SET @Lower = (select min(s_int) from ELE_BASIC_TYPES) 
SET @Upper = (select max(s_int) from ELE_BASIC_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_BASIC_TYPES 
     where s_int = @Random
  
SET @Lower = (select min(s_int) from ELE_BINARY_TYPES) 
SET @Upper = (select max(s_int) from ELE_BINARY_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_BINARY_TYPES
     where s_int = @Random

SET @Lower = (select min(s_int) from ELE_CHARACTER_TYPES) 
SET @Upper = (select max(s_int) from ELE_CHARACTER_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_CHARACTER_TYPES
    where s_int = @Random

SET @Lower = (select min(s_int) from ELE_CHARACTER_TYPES_LNG) 
SET @Upper = (select max(s_int) from ELE_CHARACTER_TYPES_LNG) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_CHARACTER_TYPES_LNG 
    where s_int = @Random

SET @Lower = (select min(s_int) from ELE_DATETIME_TYPES) 
SET @Upper = (select max(s_int) from ELE_DATETIME_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_DATETIME_TYPES 
    where s_int = @Random
	
SET @Lower = (select min(s_int) from ELE_BIGDATE_TYPES) 
SET @Upper = (select max(s_int) from ELE_BIGDATE_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_BIGDATE_TYPES 
    where s_int = @Random

SET @Lower = (select min(s_int) from ELE_DECIMAL_TYPES) 
SET @Upper = (select max(s_int) from ELE_DECIMAL_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_DECIMAL_TYPES 
    where s_int = @Random


SET @Lower = (select min(s_int) from ELE_MONEY_TYPES) 
SET @Upper = (select max(s_int) from ELE_MONEY_TYPES) 
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)

delete from ELE_MONEY_TYPES 
   where s_int = @Random

print '<<<<< FIN >>>>>'

end--end block

setuser
go 
 

