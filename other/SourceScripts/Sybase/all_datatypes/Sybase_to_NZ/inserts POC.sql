DECLARE @i int,  @l int

SET @i=0, @l=0

BEGIN TRAN
WHILE @i<1
begin
insert into CDSAuditRating values(getdate(),1,2,3,4,5,6,7,8,9,10,11,12,getdate(),getdate())
insert into CDSDerivedRating values(getdate(),1,2,'test','test','test','test','test','test','test','test','test','test','test',getdate(),getdate())
insert into CDSEntity values(1,'test','test','test','test','test','test','test','test',666,getdate(),getdate())
insert into CDSImpliedRatingCutoffs values(getdate(),'test','test',666.1488,getdate(),getdate())
insert into CDSIssue values(2, identity (),'test','test','test','test')
insert into CDSSpread values(getdate(),84536,235239887451.145802366664123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,145236987451.145802358964123016,'I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens',1488666999,'I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens','I_love_kittens',getdate(),getdate())
insert into CDSTickerMap values('test','test','test','test','test','test',getdate(),getdate())
insert into CDXIssue values(123456,'test',545895,90235,'test','test','test',getdate(),getdate(),getdate())
insert into CDXSpread values(getdate(),123456,'G',502365478951.654125789563014785,502365478951.654125789563014785,502365478951.654125789563014785,502365478951.654125789563014785,45621,20356,48562.154698,getdate(),getdate())
insert into TSAttributes values(123456,'test','test',getdate(),getdate())
insert into TSMortgageMappings values('test','test','test','test',0,1,2,3,4,5,6,7,'test',0,1,2,3,4,5,'test','test','test',getdate(),getdate(),14,88)
insert into TSNamesStaging values(1,562,'F',getdate(),getdate())
insert into TSPriority values('test','test',9999,88888,getdate(),getdate())
insert into TSSectorMappings values('test','test',1,'test','test','test',getdate(),getdate(),14,69,'test')
insert into TSSpecMappings values('test','test','test','test','test','test','test','test','test',getdate(),getdate(),'test','test',getdate(),456,9456)
insert into TSSpecMappingsCredit values('test','test',45,'test','test','test','test','test','test',0,1,2,3,4,5,'test','test','test',getdate(),getdate(),getdate())
insert into TSValues values(123,456,8561.47103,7450,63548,getdate(),getdate(),502369.70125)
--waitfor delay '00:00:02'
SET @i=@i+1
END
commit TRAN