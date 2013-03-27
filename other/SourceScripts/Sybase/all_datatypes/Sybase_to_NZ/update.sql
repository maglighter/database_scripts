DECLARE @i int,  @l int

SET @i=0, @l=0

BEGIN TRAN
WHILE @i<1
begin
--update CDSAuditRating set Rating2y=24 
delete from CDSAuditRating 
/* insert into CDSDerivedRating values(getdate(),1,2,'ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga',getdate(),getdate())
insert into CDSEntity values(1,'ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga',666,getdate(),getdate())
insert into CDSImpliedRatingCutoffs values(getdate(),'ziga-zaga','ziga-zaga',666.1488,getdate(),getdate())
insert into CDSIssue values(2,identity (),'ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga')
insert into CDSSpread values(getdate(),84536,235239887451.145802366664123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,'I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens',1488666999,'I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens',getdate(),getdate())
insert into CDSTickerMap values('ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga','ziga-zaga',getdate(),getdate())
insert into CDXIssue values(123456,'ziga-zaga',545895,90235,'ziga-zaga','ziga-zaga','ziga-zaga',getdate(),getdate(),getdate())
insert into CDXSpread values(getdate(),123456,'G',502365478951.654125789563014785,502365478951.654125789563014785,502365478951.654125789563014785,502365478951.654125789563014785,45621,20356,48562.154698,getdate(),getdate())
insert into TSAttributes values(123456,'Great Aryan Empire','Great Aryan Empire',getdate(),getdate())
insert into TSMortgageMappings values('Great Aryan Empire','Great Aryan Empire','Great Aryan Empire','Great Aryan Empire',0,1,2,3,4,5,6,7,'Great Aryan Empire',0,1,2,3,4,5,'Great Aryan Empire','Great Aryan Empire','Great Aryan Empire',getdate(),getdate(),14,88)
insert into TSNamesStaging values(1,562,'F',getdate(),getdate())
insert into TSPriority values('I HATE YOU!','FUCK YOU!',9999,88888,getdate(),getdate())
insert into TSSectorMappings values('Spiders on the moon','Spiders on the moon',1,'Spiders on the moon','Spiders on the moon','Spiders on the moon',getdate(),getdate(),14,69,'Spiders on the moon')
insert into TSSpecMappings values('Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon',getdate(),getdate(),'Spiders on the moon','Spiders on the moon',getdate(),456,9456)
insert into TSSpecMappingsCredit values('Spiders on the moon','Spiders on the moon',45,'Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon','Spiders on the moon',0,1,2,3,4,5,'Spiders on the moon','Spiders on the moon','Spiders on the moon',getdate(),getdate(),getdate())
insert into TSValues values(123,456,8561.47103,7450,63548,getdate(),getdate(),502369.70125)
*/
--waitfor delay '00:00:02'
SET @i=@i+1
END
commit TRAN