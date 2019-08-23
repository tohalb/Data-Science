load data local infile '/Users/tomhales/Documents/pythonex/prices/0270.HK.csv' 
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
SET symbol = '0270.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/0384.HK.csv' 
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
SET symbol = '0384.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/0522.HK.csv' 
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
SET symbol = '0522.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/0590.HK.csv' 
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
SET symbol = '0590.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/0728.HK.csv' 
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
SET symbol = '0728.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/0751.HK.csv' 
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
SET symbol = '0751.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/0861.HK.csv' 
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
SET symbol = '0861.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/0950.HK.csv' 
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
SET symbol = '0950.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/1093.HK.csv' 
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
SET symbol = '1093.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/1199.HK.csv' 
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
SET symbol = '1199.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/1777.NG.csv' 
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
SET symbol = '1777.NG'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/1929.HK.csv' 
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
SET symbol = '1929.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/1945.T.csv' 
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
SET symbol = '1945.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2155.T.csv' 
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
SET symbol = '2155.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2266.HK.csv' 
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
SET symbol = '2266.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2268.T.csv' 
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
SET symbol = '2268.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2388.HK.csv' 
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
SET symbol = '2388.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2397.T.csv' 
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
SET symbol = '2397.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2579.T.csv' 
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
SET symbol = '2579.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2599.T.csv' 
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
SET symbol = '2599.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/2656.T.csv' 
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
SET symbol = '2656.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3053.T.csv' 
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
SET symbol = '3053.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3231.T.csv' 
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
SET symbol = '3231.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3331.HK.csv' 
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
SET symbol = '3331.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3420.T.csv' 
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
SET symbol = '3420.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3529.T.csv' 
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
SET symbol = '3529.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3778.T.csv' 
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
SET symbol = '3778.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3998.HK.csv' 
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
SET symbol = '3998.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/3999.HK.csv' 
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
SET symbol = '3999.HK'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4107.T.csv' 
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
SET symbol = '4107.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4283.T.csv' 
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
SET symbol = '4283.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4307.T.csv' 
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
SET symbol = '4307.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4462.T.csv' 
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
SET symbol = '4462.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4519.T.csv' 
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
SET symbol = '4519.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4549.T.csv' 
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
SET symbol = '4549.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4556.T.csv' 
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
SET symbol = '4556.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4684.T.csv' 
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
SET symbol = '4684.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4689.T.csv' 
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
SET symbol = '4689.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4793.T.csv' 
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
SET symbol = '4793.T'
where symbol is null;

#----------------------------------------------------------

load data local infile '/Users/tomhales/Documents/pythonex/prices/4832.T.csv' 
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
SET symbol = '4832.T'
where symbol is null;

#----------------------------------------------------------

