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

set @i=170;


while @i <200
begin

-----------------
-- random inserts 
-----------------

INSERT INTO [db_to_ora].[testing].[TAB_NUMBER]
(COL_ID
,NUMBER_COL
,CHAR_CLOB
,NCHAR_CLOB
,NVARCHAR2_CLOB
--,DATE_COL
--,VARCHAR2_COL
)
VALUES
(@i
,@i
--,CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS datetime)
--,'varchar'+ CAST (@Random as varchar)
,'char' + CAST (@Random as char)
,'nchar' + CAST (@Random as nchar)
,'nvarchar' + CAST (@Random as nvarchar)
);


-----------------
-- random updates 
-----------------

UPDATE [db_to_ora].[testing].[TAB_NUMBER]
           set
           NUMBER_COL = @Random
           --,DATE_COL = CAST('2007-05-'+cast(ROUND(((@Upper2 - @Lower2 -1) * RAND() + @Lower2), 0) as char)+' 12:35:29.123' AS datetime)
           ,CHAR_CLOB = 'char ' + CAST (@Random as char)
           ,NCHAR_CLOB = 'nchar ' + CAST (@Random as nchar)
           ,NVARCHAR2_CLOB = 'nvarchar ' + CAST (@Random as nvarchar)
           where COL_ID = @Random;

set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);
set @i=@i+1;
           
end;

-----------------
-- random deletes 
-----------------

set @i=0;
SET @Lower = (select min(COL_ID) from [db_to_ora].[testing].[TAB_NUMBER]);
SET @Upper = (select max(COL_ID) from [db_to_ora].[testing].[TAB_NUMBER]); 

while @i <10 

begin
delete from [db_to_ora].[testing].[TAB_NUMBER]
           where COL_ID = @Random;
           
set @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0);
set @i=@i+1;

end;
end;

SET ANSI_PADDING OFF
GO