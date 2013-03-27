go

use test_excellent
go 

setuser 'dbo'
go 


BEGIN 
declare @i int

set @i=30

while @i <500
    begin
    -----------------
    -- random inserts 
    -----------------
    INSERT INTO TAB_NUMBER
        (COL_ID) values (@i)
----------iterate
    set @i=@i+1         
    end --end while

end--end block

setuser
go   
 
