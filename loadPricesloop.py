# -*- coding: utf-8 -*-
"""
Created on Sat Nov 28 22:27:24 2015

@author: tomhales
"""

import mysql.connector

tickerlist=[]
tickerlist = [
"0270.HK",
"0384.HK",
"0522.HK"
]

cnx = mysql.connector.connect(user='loader', password='loader',
                              host='127.0.0.1',
                              database='fundo')
cursor = cnx.cursor()
# load data local infile '/Users/tomhales/Documents/pythonex/prices/' + ticker_symbol + '.csv' 
for ticker_symbol in tickerlist:
    loadPrice = """load data local infile '/Users/tomhales/Documents/pythonex/prices/0270.HK.csv'
                into table prices 
                fields terminated by ','
                lines terminated by '\n'
                (    pricedate,
                     open, 
                     high, 
                     low,
                     volume ,
                     adjclose
                     )
                     ;
                     delete from prices where pricedate = '0000-00-00';
                     UPDATE prices 
                     SET symbol = ticker_symbol
                     where symbol is null;"""


cursor.execute(loadPrice, multi=True)
cnx.commit()

cnx.close()