# -*- coding: utf-8 -*-
"""
Created on Sat Nov 28 22:27:24 2015

@author: tomhales
"""

import mysql.connector

cnx = mysql.connector.connect(user='loader', password='loader',
                              host='127.0.0.1',
                              database='fundo')
cursor = cnx.cursor()


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
                 SET symbol = '0270.HK'
                 where symbol is null;"""

cursor.execute(loadPrice, params=None, multi=True)
cnx.commit()

cnx.close()