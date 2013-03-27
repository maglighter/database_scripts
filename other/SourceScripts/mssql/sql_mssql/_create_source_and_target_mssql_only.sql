USE [db_to_ora]
GO

/****** Object:  Table [dbo].[all_types_mssql]    Script Date: 06/06/2012 15:36:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [testing].[all_types_mssql](
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
	[s_nchar] [nchar](250) NULL,
	[s_nvarchar] [nvarchar](250) NULL,
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

SET ANSI_PADDING OFF
GO

USE [db_to_ora]
GO

/****** Object:  Table [dbo].[all_types_mssql_bounds]    Script Date: 06/06/2012 15:36:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [db_to_ora].[testing].[all_types_mssql_bounds](
	[s_bigint] [bigint] IDENTITY(1,1) NOT NULL,
	[s_varchar] [varchar](1) NULL,
	[s_char] [char](1) NULL,
	[s_nchar] [nchar](1) NULL,
	[s_nvarchar] [nvarchar](1) NULL,
	[s_ntext1] [ntext] NULL,
	[s_ntext2] [ntext] NULL,
	[s_text1] [text] NULL,
	[s_text2] [text] NULL,
	[s_binary] [binary](2) NULL,
	[s_varbinary] [varbinary](1) NULL,
	[s_datetime27] [datetime2](7) NULL,
	[s_datetime26] [datetime2](6) NULL,
	[s_datetime25] [datetime2](5) NULL,
	[s_datetime24] [datetime2](4) NULL,
	[s_datetime23] [datetime2](3) NULL,
	[s_datetime22] [datetime2](2) NULL,
	[s_datetime21] [datetime2](1) NULL,
	[s_datetime20] [datetime2](0) NULL,
	[s_datetimeoffs7] [datetimeoffset](7) NULL,
	[s_datetimeoffs6] [datetimeoffset](6) NULL,
	[s_datetimeoffs5] [datetimeoffset](5) NULL,
	[s_datetimeoffs4] [datetimeoffset](4) NULL,
	[s_datetimeoffs3] [datetimeoffset](3) NULL,
	[s_datetimeoffs2] [datetimeoffset](2) NULL,
	[s_datetimeoffs1] [datetimeoffset](1) NULL,
	[s_datetimeoffs0] [datetimeoffset](0) NULL,
	[s_time7] [time](7) NULL,
	[s_time6] [time](6) NULL,
	[s_time5] [time](5) NULL,
	[s_time4] [time](4) NULL,
	[s_time3] [time](3) NULL,
	[s_time2] [time](2) NULL,
	[s_time1] [time](1) NULL,
	[s_time0] [time](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[s_bigint] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [db_to_ora]
GO

/****** Object:  Table [dbo].[all_types_mssql_long]    Script Date: 06/06/2012 15:39:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [testing].[all_types_mssql_long](
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

SET ANSI_PADDING OFF
GO




/****** Object:  Table [dbo].[all_types_mssql]    Script Date: 11/17/2011 13:38:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [db_sec_targ].[testing].[all_types_mssql](
	[s_bigint] [bigint]  NOT NULL,
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

CREATE TABLE [db_sec_targ].[testing].[all_types_mssql_long](
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

CREATE TABLE [db_sec_targ].[testing].[all_types_mssql_bounds](
	[s_bigint] [bigint]  NOT NULL,
	[s_varchar] [varchar](1) NULL,
	[s_char] [char](1) NULL,
	[s_nchar] [nchar](1) NULL,
	[s_nvarchar] [nvarchar](1) NULL,
	[s_ntext1] [ntext] NULL,
	[s_ntext2] [ntext] NULL,
	[s_text1] [text] NULL,
	[s_text2] [text] NULL,
	[s_binary] [binary](2) NULL,
	[s_varbinary] [varbinary](1) NULL,
	[s_datetime27] [datetime2](7) NULL,
	[s_datetime26] [datetime2](6) NULL,
	[s_datetime25] [datetime2](5) NULL,
	[s_datetime24] [datetime2](4) NULL,
	[s_datetime23] [datetime2](3) NULL,
	[s_datetime22] [datetime2](2) NULL,
    [s_datetime21] [datetime2](1) NULL,
	[s_datetime20] [datetime2](0) NULL,
	[s_datetimeoffs7] [datetimeoffset](7) NULL,
	[s_datetimeoffs6] [datetimeoffset](6) NULL,
	[s_datetimeoffs5] [datetimeoffset](5) NULL,
	[s_datetimeoffs4] [datetimeoffset](4) NULL,
	[s_datetimeoffs3] [datetimeoffset](3) NULL,
	[s_datetimeoffs2] [datetimeoffset](2) NULL,
	[s_datetimeoffs1] [datetimeoffset](1) NULL,
	[s_datetimeoffs0] [datetimeoffset](0) NULL,
	[s_time7] [time](7) NULL,
	[s_time6] [time](6) NULL,
	[s_time5] [time](5) NULL,
	[s_time4] [time](4) NULL,
	[s_time3] [time](3) NULL,
	[s_time2] [time](2) NULL,
	[s_time1] [time](1) NULL,
	[s_time0] [time](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[s_bigint] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

USE [db_sec_targ]
GO

/****** Object:  Table [dbo].[Minihp_BoardItem_image]    Script Date: 05/21/2012 20:12:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [testing].[Minihp_BoardItem_image](
	[item_seq] [int] NOT NULL,
	[writer_nm] [nvarchar](20) NOT NULL,
	[title] [nvarchar](100) NULL,
	[content] [nvarchar](max) NULL,
	[write_dt] [smalldatetime] NOT NULL,
	[attach_type] [char](1) NULL,
	[attach_nm] [nvarchar](400) NULL,
 CONSTRAINT [PK_Minihp_BoardItem_image] PRIMARY KEY CLUSTERED 
(
	[item_seq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [db_to_ora]
GO

/****** Object:  Table [dbo].[Minihp_BoardItem_image]    Script Date: 05/21/2012 20:12:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [testing].[Minihp_BoardItem_image](
	[item_seq] [int] IDENTITY(1,1) NOT NULL,
	[writer_nm] [varchar](20) NOT NULL,
	[title] [varchar](100) NULL,
	[content] [text] NULL,
	[write_dt] [smalldatetime] NOT NULL,
	[attach_type] [char](1) NULL,
	[attach_nm] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[item_seq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



