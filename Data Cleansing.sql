
SELECT distinct resultsfor 
from report
into outfile '/Users/tomhales/Documents/pythonex/orig_resultsfor'

select * 
from report
where reportdate = '2013-01-03'
and primname = 'Family Dollar'

update report
set resultsfor = 'Q1'
where reportdate = '2013-01-03'
and primname = 'Family Dollar'

select * from report
where reportdate = '2013-01-03'
and primname = 'Next Plc'

update report
set country = 'UK'
where reportdate = '2013-01-03'
and primname = 'Next Plc'

update report
set resultsfor = 'Trading Status'
where reportdate = '2013-01-03'
and primname = 'Next Plc'

select * 
from report
where reportdate = '2013-01-03'
and primname = 'Family Dollar'

select * from report
where reportdate = '2013-01-04'
and primname = 'The Mosaic Company'

update report
set resultsfor = 'Q2'
where reportdate = '2013-01-04'
and primname = 'The Mosaic Company'

update report
set country = 'UK'
where reportdate = '2013-01-04'
and primname = 'The Mosaic Company'

select * from report
where reportdate = '2013-01-04'
and primname = 'Aer Lingus Group'

update report
set resultsfor = 'Traffic Figures'
where reportdate = '2013-01-04'
and primname = 'Aer Lingus Group'

update report
set country = 'UK'
where reportdate = '2013-01-04'
and primname = 'Aer Lingus Group'

update report
set symbol = 'SMIN.L'
where reportdate = '2013--5-24'
and primname = 'Smiths Group'

update report
set resultsfor = 'Q3 Trade'
where reportdate = '2013--5-24'
and primname = 'Smiths Group'


select * 
from report
where reportdate = '2010-11-22'
and symbol in ('BYG.L','MTO.L')

update report
set resultsfor = 'H1', reptype = 'H1', country = 'UK'
where reportdate = '2010-11-22'
and symbol in ('BYG.L','MTO.L')


select r1.symbol, 
r1.reptype as Yr1,
r2.reptype as Yr2
from report r1,
	report r2
where r1.symbol = r2.symbol
and r1.reportdate between '2013-10-01' and '2014-01-31'
and r2.reportdate between '2014-10-01' and '2015-01-31'



