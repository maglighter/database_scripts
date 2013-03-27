/****** Object:  Table [dbo].[all_types_mssql]    Script Date: 11/17/2011 13:38:35 ******/
	SET ANSI_NULLS ON
	GO
	
	SET QUOTED_IDENTIFIER ON
	GO
	
	SET ANSI_PADDING ON
	GO
	
	CREATE TABLE [tst].[dbo].[all_types_mssql_dst](
		[s_bigint] [bigint] NOT NULL,
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
	
	CREATE TABLE [tst].[dbo].[all_types_mssql_long_dst](
		[s_uidentify] [uniqueidentifier] NULL,
		[s_bigint] [bigint] NOT NULL,
		[s_varcharmax] [varchar](max) NULL,
		[s_text] [text] NULL,
	        [s_xml] [xml] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[s_bigint] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	GO
	
	
	SET ANSI_PADDING OFF
	GO
