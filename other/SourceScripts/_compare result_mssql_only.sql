---------count differences

select count(*) from SRC3.dbo.all_types_mssql;
select COUNT(*) from dst.dbo.all_types_mssql;

select COUNT(*) from SRC3.dbo.all_types_mssql_long;
select COUNT(*) from dst.dbo.all_types_mssql_long;

SELECT COUNT(*) FROM SRC3.[dbo].[all_types_mssql_bounds] t;
SELECT COUNT(*) FROM [DST].[dbo].[all_types_mssql_bounds] t;
 
SELECT COUNT(*) FROM SRC3.[dbo].[Minihp_BoardItem_image];
SELECT COUNT(*) FROM [DST].[dbo].[Minihp_BoardItem_image];

--
--select * from dst.dbo.Minihp_BoardItem_image where item_seq not in (select item_seq from src3.dbo.Minihp_BoardItem_image);
---------------------------------value diff:  
    SELECT COUNT(*)  
    --t2.s_binary,t.s_binary ,  t2.s_datetime20, t.s_datetime20,
  --  t.s_text2, t2.s_text2,  t.s_text1, t2.s_text1, t.s_ntext1, t2.s_ntext1, t.s_ntext2, t2.s_ntext2, t.s_bigint 
  FROM SRC3.[dbo].[all_types_mssql_bounds] t join [Dst].[dbo].[all_types_mssql_bounds] t2
  on t.s_bigint=t2.s_bigint --and t.s_char=t2.s_char
  where 1<>1  
  or isnull(t2.s_binary, cast ('1' as varbinary))<> isnull(t.s_binary, cast('1' as varbinary))
  or t2.s_datetime20<>t.s_datetime20
  or t2.s_datetime21<>t.s_datetime21
  or t2.s_datetime22<>t.s_datetime22
  or t2.s_datetime23<>t.s_datetime23
  or t2.s_datetime24<>t.s_datetime24
  or t2.s_datetime25<>t.s_datetime25
  or t2.s_datetime26<>t.s_datetime26
  or t2.s_datetime27<>t.s_datetime27 
  --or isnull(cast (t2.s_text1 as varchar(max)), '1')<> isnull(cast(t.s_text1 as varchar(max)),'1')
  or (cast (t2.s_text1 as varchar(max)))<> (cast(t.s_text1 as varchar(max)))
  or (cast (t2.s_text2 as varchar(max)))<> (cast(t.s_text2 as varchar(max)))
  or (cast (t2.s_ntext1 as varchar(max)))<> (cast(t.s_ntext1 as varchar(max)))
  or (cast (t2.s_ntext2 as varchar(max)))<> (cast(t.s_ntext2 as varchar(max)))
  or t2.s_datetimeoffs0<>t.s_datetimeoffs0
  or t2.s_datetimeoffs1<>t.s_datetimeoffs1
  or t2.s_datetimeoffs2<>t.s_datetimeoffs2
  or t2.s_datetimeoffs3<>t.s_datetimeoffs3
  or t2.s_datetimeoffs4<>t.s_datetimeoffs4
  or t2.s_datetimeoffs5<>t.s_datetimeoffs5
  or t2.s_datetimeoffs6<>t.s_datetimeoffs6
  or t2.s_datetimeoffs7<>t.s_datetimeoffs7
  or isnull(t2.s_nchar,'1')<>isnull(t.s_nchar,'1')
  or isnull(t2.s_char,'1')<>isnull(t.s_char,'1')
  or isnull(t2.s_nvarchar,'1')<>isnull(t.s_nvarchar,'1')
  or isnull(t2.s_varbinary,cast ('1' as varbinary))<>isnull(t.s_varbinary,cast ('1' as varbinary))
  or isnull(t2.s_varchar,'1')<>isnull(t.s_varchar,'1')
  or t2.s_time0<>t.s_time0
  or t2.s_time1<>t.s_time1
  or t2.s_time2<>t.s_time2
  or t2.s_time3<>t.s_time3
  or t2.s_time4<>t.s_time4
  or t2.s_time5<>t.s_time5
  or t2.s_time6<>t.s_time6
  or t2.s_time7<>t.s_time7
 ;
 
---------value differences
select
 COUNT(*)
 from SRC3.dbo.all_types_mssql t join  dst.dbo.all_types_mssql tt on t.s_bigint=tt.s_bigint
where 1<>1
or t.s_binary<>tt.s_binary
--or t.s_varbinmax<>tt.s_varbinmax
or t.s_bit<>tt.s_bit
or t.s_char<>tt.s_char
--or t.s_date<>tt.s_date
or t.s_datetime<>tt.s_datetime
or t.s_datetimeoffs<>tt.s_datetimeoffs
or t.s_decimal<>tt.s_decimal
--or t.s_float<>tt.s_float
or convert(varchar(8),CAST(t.s_image as varbinary(max))) <> convert(varchar(8), CAST(tt.s_image as varbinary(max)))
or t.s_int<>tt.s_int
or t.s_money<>tt.s_money 
or t.s_nchar<>tt.s_nchar
--or CAST(t.s_ntext as nvarchar(max))<> CAST(tt.s_ntext as nvarchar(max)) 
or t.s_numeric<>tt.s_numeric
or t.s_nvarchar<>tt.s_nvarchar
--or t.s_nvarcharmax<>tt.s_nvarcharmax
--or abs (t.s_real-tt.s_real) >0.001
or t.s_smaldatetime<>tt.s_smaldatetime
or t.s_smallint<>tt.s_smallint
or t.s_smallmoney<>tt.s_smallmoney 
or t.s_time <> tt.s_time
or t.s_tinyint<> tt.s_tinyint
or t.s_varbinary<>tt.s_varbinary
--or t.s_varbinmax<>tt.s_varbinmax
or t.s_varchar<>tt.s_varchar
;

select 
 COUNT(*)
 --CAST(t.s_text as varchar(max)),CAST(tt.s_text as varchar(max))
 from SRC3.dbo.all_types_mssql_long t join  DST.dbo.all_types_mssql_long tt on t.s_bigint=tt.s_bigint
 where 1<>1
 or CAST(t.s_text as varchar(max))<>CAST(tt.s_text as varchar(max))
 or t.s_uidentify<>tt.s_uidentify
 or t.s_varcharmax<>tt.s_varcharmax
 or CAST(t.s_xml as varchar(max))<>CAST(tt.s_xml as varchar(max))
 ;
 
-------------not mapped values

  
SELECT COUNT(*)
--t2.[content], cast(t.[content] as nvarchar(max)),  t2.[writer_nm], t.[writer_nm], t2.item_seq
  FROM [DST].[dbo].[Minihp_BoardItem_image] t2 join SRC3.[dbo].[Minihp_BoardItem_image] t on t.item_seq=t2.item_seq
  where 1<>1
      or t2.[writer_nm]<>t.[writer_nm]
      or t2.[title]<>t.[title]
      or t2.[content]<>cast(t.[content] as nvarchar(max))
      or t2.[write_dt]<>t.[write_dt]
      or t2.[attach_type]<>t.[attach_type]
      or t2.[attach_nm]<>t.[attach_nm]