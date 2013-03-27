/****** Object:  Table [dbo].[all_types_mssql]    Script Date: 11/17/2011 13:38:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [db_to_ora].[testing].[all_types_mssql_bounds](
		   [s_bigint] bigint IDENTITY(1,1) NOT NULL
		  ,[s_varchar] varchar (100) NULL
          ,[s_char] char (100) NULL
          ,[s_nchar] nchar (500) NULL
          ,[s_nvarchar] nvarchar (500) NULL
          ,[s_ntext1] ntext NULL
          ,[s_ntext2] ntext NULL
          ,[s_text1] text NULL
          ,[s_text2] text NULL
          ,[s_binary] binary (500) NULL
          ,[s_varbinary] varbinary (500) NULL
          ,[s_datetime27] datetime2(7) NULL
          ,[s_datetime26] datetime2(6) NULL
          ,[s_datetime25] datetime2(5) NULL
          ,[s_datetime24] datetime2(4) NULL
          ,[s_datetime23] datetime2(3) NULL
          ,[s_datetime22] datetime2(2) NULL
          ,[s_datetime21] datetime2(1) NULL
          ,[s_datetime20] datetime2(0) NULL
          ,[s_datetimeoffs7] datetimeoffset(7) NULL
          ,[s_datetimeoffs6] datetimeoffset(6) NULL
          ,[s_datetimeoffs5] datetimeoffset(5) NULL
          ,[s_datetimeoffs4] datetimeoffset(4) NULL
          ,[s_datetimeoffs3] datetimeoffset(3) NULL
          ,[s_datetimeoffs2] datetimeoffset(2) NULL
          ,[s_datetimeoffs1] datetimeoffset(1) NULL
          ,[s_datetimeoffs0] datetimeoffset(0) NULL
          ,[s_time7] time(7) NULL
          ,[s_time6] time(6) NULL
          ,[s_time5] time(5) NULL
          ,[s_time4] time(4) NULL
          ,[s_time3] time(3) NULL
          ,[s_time2] time(2) NULL
          ,[s_time1] time(1) NULL
          ,[s_time0] time(0) NULL
PRIMARY KEY CLUSTERED 
(
	[s_bigint] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



SET ANSI_PADDING OFF
GO


