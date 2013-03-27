	
	BEGIN 
	    declare @i int
	    DECLARE @Random INT
	    DECLARE @Upper INT
	    DECLARE @Lower INT
	    DECLARE @Upper2 INT
	    DECLARE @Lower2 INT
	    declare @Random_f float
	     
	
	    SET @Lower = 1 
	    SET @Upper = 999 
	    SET @Lower2 = 1 
	    SET @Upper2 = 28 
	    set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0) 
	    set @i=0
	
	while @i <5
	    begin
  
	     INSERT INTO EL_DB.dbo.SBS_Basic_Types
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
	               ,@Random+@i
	               ,@Random
	               ,ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	               ,ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	               )
	  
	
	
	 insert into EL_DB.dbo.SBS_Binary_Types (
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
	 
		
	insert into EL_DB.dbo.SBS_Character_Types (
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
	
	insert into EL_DB.dbo.SBS_Character_Types_lng (
	s_text,
	s_unitext
	)
	values
	(
	           'text'+ CAST (@Random as varchar)
	           ,'unitext'+ CAST (@Random as varchar)
	) 
	
	
	
	insert into EL_DB.dbo.SBS_Datetime_Types (
		s_smalldatetime,
		s_datetime,
		s_date,
		s_time
	)
	values
	(
	            dateadd(dd, @Random/(@i+1), getdate()) 
	           ,dateadd(dd, @Random/(@i+1), getdate())
	           ,dateadd(dd, @Random/(@i+1), getdate())
	           ,dateadd(dd, @Random/(@i+1), getdate())
	)
	
	
	
	insert into EL_DB.dbo.SBS_Bigdate_Types (
		s_bigtime,
		s_bigdatetime
	)
	values
	(
				current_bigtime(),
				current_bigdatetime()
	)
	
		
	insert into  EL_DB.dbo.SBS_Decimal_Types (
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
	

	insert into EL_DB.dbo.SBS_Money_Types (
		s_smallmoney,
		s_money 
	)
	values
	(
	           RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
	           ,RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i)
	)
	 
	    INSERT INTO EL_DB.dbo.simple
	               (
	                 s_int
	                ,s_bit
	                )
	         VALUES (
					@i+1
					,0
					)
	  
	
	SET @Lower = (select min(s_int) from EL_DB.dbo.SBS_Basic_Types) 
	SET @Upper = (select max(s_int) from EL_DB.dbo.SBS_Basic_Types) 
	set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	
	 update EL_DB.dbo.SBS_Basic_Types set
	                 s_smallint = @Random + 1
	                ,s_tinyint = @i + 1
	                ,s_bit = 1
	                ,s_usmallint = @Random + 1
	                ,s_uint = @Random + 1
	                ,s_bigint = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	                ,s_ubigint = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	     where s_int = @Random
		
		update EL_DB.dbo.SBS_Binary_Types  set
		s_binary = cast ('updated binary' + CAST (@Random as varchar) as binary),
		s_varbinary = cast ('updated varbinary' + CAST (@Random as varchar) as varbinary),
		s_image = cast ('updated image' + CAST (@Random as varchar) as image)
	    where s_int = @Random
		 
		update EL_DB.dbo.SBS_Character_Types set
		s_char='updates char' + CAST (@Random as char),
		s_varchar='updates varchar'+ CAST (@Random as varchar),
		s_unichar='updates unichar' + CAST (@Random as char),
		s_univarchar='updates univarchar'+ CAST (@Random as varchar),
		s_nchar='updates nchar' + CAST (@Random as nchar),
		s_nvarchar='updates nvarchar' + CAST (@Random as nvarchar)
	    where s_int = @Random
		
		update EL_DB.dbo.SBS_Character_Types_lng set
	s_text='updates text'+ CAST (@Random as varchar),
	s_unitext='updates unitext'+ CAST (@Random as varchar)
	    where s_int = @Random
		
		update EL_DB.dbo.SBS_Datetime_Types set
		s_smalldatetime =dateadd(dd, @Random/(@i+1), getdate()),
		s_datetime=dateadd(dd, @Random/(@i+1), getdate()),
		s_date=dateadd(dd, @Random/(@i+1), getdate()),
		s_time=dateadd(dd, @Random/(@i+1), getdate())
	    where s_int = @Random
		
		update  EL_DB.dbo.SBS_Decimal_Types set
		s_numeric=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0),
		s_decimal=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
		s_float=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
		s_double=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
		s_real=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) + ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	    where s_int = @Random
		
		update EL_DB.dbo.SBS_Money_Types set
		s_smallmoney=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i),
		s_money=RAND( (DATEPART(mm, GETDATE()) * 100000 )+ (DATEPART(ss, GETDATE()) * 1000 )+ DATEPART(ms, GETDATE())  + @i) 
	   where s_int = @Random
		
	  
	    set @i=@i+1         
	    end 
	
		
	SET @Lower = (select min(s_int) from EL_DB.dbo.SBS_Basic_Types) 
	SET @Upper = (select max(s_int) from EL_DB.dbo.SBS_Basic_Types) 
	set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	
	delete from EL_DB.dbo.simple 
	     where s_int = @Random
	
	delete from EL_DB.dbo.SBS_Basic_Types 
	     where s_int = @Random
		
	delete from EL_DB.dbo.SBS_Binary_Types
	     where s_int = @Random
	
	delete from EL_DB.dbo.SBS_Character_Types
	    where s_int = @Random
	
	delete from EL_DB.dbo.SBS_Character_Types_lng 
	    where s_int = @Random
	
	delete from EL_DB.dbo.SBS_Datetime_Types 
	    where s_int = @Random
	
	delete from EL_DB.dbo.SBS_Decimal_Types 
	    where s_int = @Random
	
	delete from EL_DB.dbo.SBS_Money_Types 
	   where s_int = @Random
	delete from EL_DB.dbo.SBS_Bigdate_Types where s_int = @Random
	
	
	end
	




	
	