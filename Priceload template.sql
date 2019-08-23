load data local infile '/Users/tomhales/Documents/pythonex/prices/XXX.csv' 
into table prices 
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
delete from prices where pricedate = '0000-00-00';
UPDATE prices 
SET symbol = 'XXX'
where symbol is null;

#----------------------------------------------------------

