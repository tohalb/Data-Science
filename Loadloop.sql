set @i=1;
set @sym = "";
while @i<=2 do
select symbol
	from symbol
	where 
		(select rownum from
			(
			SELECT @rownum:=@rownum+1 rownum, t.* FROM (SELECT @rownum:=0) r, symbol t 
			) numsym
		where rownum = @i
		)
	set @i= @i+1	
end while;


where @rownum = @i;
    insert into a (x,y,z)
    select a,b,@i
    from table1;

    set @i= @i+1;
end while;




load data local infile '/Users/tomhales/Documents/pythonex/prices/0270.HK.csv' 
into table testprices 
fields terminated by ','
lines terminated by '\n'
(     pricedate,
     open, 
     high, 
     low,
     volume ,
     adjclose
)
;
delete from testprices where pricedate = '0000-00-00';
UPDATE testprices 
SET symbol = '0270.HK'
where symbol is null;



set @i=1;
set @row = 1;
select symbol
	from symbol
	where @row =
		(select rownum from
			(
			SELECT @rownum:=@rownum+1 rownum, t.* FROM (SELECT @rownum:=0) r, symbol t 
			) numsym
		where rownum = @i
         )
         
         
         
set @i=1;
set @sym = "";
while @i<=2 do
select symbol
	from symbol
	where num = @i
	set @i= @i+1	
end while;


set @i=1;
set @sym = "";
#while @i<=2 do
select symbol
	from symbol
	where num = @i
#	set @i= @i+1	
#end while;