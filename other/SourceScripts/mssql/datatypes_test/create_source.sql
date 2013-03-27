/****** Object:  Table [dbo].[all_types_mssql]    Script Date: 11/17/2011 13:38:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [tst].[dbo].[all_types_mssql](
	[s_bigint] [bigint] IDENTITY(1,1) NOT NULL,
	[s_int] [int] NULL,
	[s_smallint] [smallint] NULL,
	[s_tinyint] [tinyint] NULL,
	[s_bit] [bit] NULL,
	[s_decimal] [decimal](38, 8) NULL,
	[s_numeric] [numeric](38, 8) NULL,
	[s_money] [money] NULL,
	[s_smallmoney] [smallmoney] NULL,
	[s_float] [float] NULL,
	[s_datetime] [datetime] NULL,
	[s_smaldatetime] [smalldatetime] NULL,
	[s_varchar] [varchar](1000) NULL,
	[s_char] [char](1000) NULL,
	[s_nchar] [nchar](1000) NULL,
	[s_nvarchar] [nvarchar](1000) NULL,
	[s_nvarcharmax] [nvarchar](max) NULL,
	[s_ntext] [ntext] NULL,
	[s_binary] [binary](1000) NULL,
	[s_varbinary] [varbinary](1000) NULL,
	[s_varbinmax] [varbinary](max) NULL,
	[s_image] [image] NULL,
	[s_date] [date] NULL,
	[s_datetime2] [datetime2](7) NULL,
	[s_datetimeoffs] [datetimeoffset](7) NULL,
	[s_time] [time](7) NULL,
	[s_real] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[s_bigint] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [tst].[dbo].[all_types_mssql_long](
	[s_uidentify] [uniqueidentifier] NULL,
	[s_bigint] [bigint] IDENTITY(1,1) NOT NULL,
	[s_varcharmax] [varchar](max) NULL,
	[s_text] [text] NULL,
        [s_xml] [xml] NULL,
PRIMARY KEY CLUSTERED 
(
	[s_bigint] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

INSERT INTO [tst].[dbo].[all_types_mssql]
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
           ,[s_real]
           )
     VALUES
           (1
           ,1
           ,1
           ,1
           ,1.12345678
           ,1.12345678
           ,1.1234
           ,1.1234 
           ,1.01234567891234
           ,CAST('2007-05-22 12:35:29.123' AS datetime)
           ,CAST('2007-05-22 12:35:29.123' AS smalldatetime)
           ,'varchar'
           ,'char'
           ,'nchar'
           ,'nvarchar'
           ,'nvarcharmax'
           ,'ntext'
           ,cast ('binary' as binary)
           ,cast ('varbinary' as varbinary)
           ,cast ('varbinarymax' as varbinary)
           ,cast ('image' as image)
           ,CAST('2007-05-22 12:35:29.1234567 +12:15' AS date)
           ,CAST('2007-05-22 12:35:29.1234567 +12:15' AS datetime2(7)) 
           ,CAST('2007-05-22 12:35:29.1234567 +12:15' AS datetimeoffset(7))
           ,CAST('2007-05-22 12:35:29.1234567 +12:15' AS time(7))
           ,111.1111
           )
go 

INSERT INTO [tst].[dbo].[all_types_mssql_long]
           (
            [s_uidentify]
           ,[s_varcharmax]
           ,[s_text]
           ,[s_xml])
     VALUES
           (
            NEWID()
           ,'varcharmax'
           ,'text'
           ,'<DataMapRepository xmlns:xsi="http://www.w3.org"><Database id="1"><Vendor>ORACLE</Vendor></Database></DataMapRepository>'
           )



SET ANSI_PADDING OFF
GO


