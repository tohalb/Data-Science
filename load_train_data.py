# -*- coding: utf-8 -*-
"""
Created on Fri Dec  4 21:49:35 2015

@author: tomhales
"""

# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 15:59:32 2015

@author: tomhales
"""

#import mysql.connector

tickerlist=[]

tickerlist = [
"0270.HK",
"0384.HK",
"0522.HK",
"0590.HK",
"0728.HK",
"0751.HK",
"0861.HK",
"0950.HK",
"1093.HK",
"1199.HK",
"1929.HK",
"2266.HK",
"2388.HK",
"3331.HK",
"3998.HK",
"3999.HK",
"5IG.SI",
"5JS.SI",
"5ME.SI",
"601919.SS",
"A17U.SI",
"A19.BE",
"A68U.SI",
"AA",
"AAL",
"AAPL",
"ABBV",
"ABF.L",
"ABGLF",
"ABT.L",
"ACN",
"ADM.L",
"ADN.L",
"AEO",
"AF",
"AFR.L",
"AGK.L",
"AHGP",
"AHT.L",
"AIG",
"AIR",
"ALL.AX",
"ALOG",
"ALQ.AX",
"AMAT",
"AMD",
"AMGN",
"AMTD",
"AMZGQ",
"AMZN",
"AN",
"ANF",
"ANZ.AX",
"AO.L",
"AON",
"APH.L",
"API.AX",
"ARLP",
"ARM.L",
"ASC.L",
"ASHM.L",
"ASPU.OB",
"AST.AX",
"AV.L",
"AVV.L",
"AXP",
"AZN.L",
"AZO",
"B20.SI",
"BA",
"BAB.L",
"BAC",
"BARC.L",
"BATS.L",
"BAYN.DE",
"BBT",
"BBY",
"BBY.L",
"BDEV.L",
"BET.L",
"BG.L",
"BGK.F",
"BHP.AX",
"BID",
"BK",
"BKG.L",
"BKL.AX",
"BLK",
"BLND.L",
"BLT.L",
"BMY.L",
"BN4.SI",
"BNP.PA",
"BNZL.L",
"BP.L",
"BRBY.L",
"BRSN.L",
"BRW.L",
"BSY.L",
"BT-A.L",
"BTT.AX",
"BVIC.L",
"BVS.L",
"BWNG.L",
"BWY.L",
"BXB.AX",
"C",
"C07.SI",
"C09.SI",
"C6L.SI",
"CAG",
"CAJ",
"CAT",
"CBA.AX",
"CC3.SI",
"CCC.L",
"CCE",
"CCOJF",
"CHKE",
"CINE.L",
"CIU.L",
"CL",
"CLDN.L",
"CLLN.L",
"CMA",
"CME",
"CNA.L",
"CNE.L",
"CNJ.F",
"CNSI",
"CO",
"COB.L",
"COF",
"COLT.L",
"COM.DE",
"COP",
"COST",
"CPG.L",
"CPI.L",
"CPR.L",
"CRM",
"CSCO",
"CSR.AX",
"CSR.L",
"CSRT.L",
"CSX",
"CTAS",
"CTXS",
"CVX",
"CWC.L",
"CWD.L",
"D05.SI",
"DAIN.MX",
"DAL",
"DB",
"DB1.DE",
"DC.L",
"DE",
"DEB.L",
"DG",
"DGE.L",
"DLAR.L",
"DLG.DE",
"DLG.L",
"DLX.AX",
"DNLM.L",
"DNO.L",
"DOW",
"DPH.L",
"DPLM.L",
"DRNA.F",
"DRX.L",
"DSC.L",
"E5H.SI",
"EBAY",
"EMG.L",
"ETFC",
"EVR.L",
"EXPN.L",
"EXPR",
"EZJ.L",
"F",
"F34.SI",
"F83.SI",
"F99.SI",
"FANUF",
"FB",
"FCCN.L",
"FDL.L",
"FDSA.L",
"FDX",
"FE",
"FENR.L",
"FGP.L",
"FHN",
"FINL",
"FITB",
"FOXT.L",
"FRES.L",
"FSAM",
"FSC",
"FSFR",
"FUJ1.F",
"FXPO.L",
"G13.SI",
"GE",
"GES",
"GFS.L",
"GGQ1.DE",
"GKN.L",
"GM",
"GNC.AX",
"GND.PA",
"GNK.L",
"GOG.L",
"GPS",
"GRG.L",
"GRPN",
"GS",
"GSK.L",
"H09.F",
"HAL",
"HCD.F",
"HCHDF",
"HCM.F",
"HD",
"HFD.L",
"HFG.L",
"HGG.L",
"HIA1.DU",
"HL.L",
"HLT",
"HMC",
"HMSO.L",
"HOG",
"HOME.L",
"HRB",
"HSBA.L",
"HSBC",
"HSV.L",
"HSX.L",
"IAP.L",
"IBM",
"IHG.L",
"III.L",
"IMG.L",
"IMT.L",
"INCH.L",
"INF.L",
"INF.PA",
"INTC",
"INVP.L",
"IOC",
"IPF.L",
"IPL.AX",
"IPN.PA",
"IRV.L",
"ITV.L",
"IV4.F",
"J69U.SI",
"JD.L",
"JDW.L",
"JFR.F",
"JHX",
"JIN.OL",
"JMAT.L",
"JNJ",
"JPM",
"K",
"K17.SI",
"KA3.F",
"KACPF",
"KAZ.L",
"KEY",
"KGF.L",
"KIE.L",
"KKD",
"KLR.L",
"KMX",
"KO",
"KORS",
"KR",
"L",
"LAD.L",
"LAM.L",
"LAND.L",
"LEI.AX",
"LGEN.L",
"LHA.DE",
"LLOY.L",
"LMI.L",
"LNKD",
"LRD.L",
"LSE.L",
"LUV",
"M",
"MA",
"MAB.L",
"MAN.DE",
"MANU",
"MARS.L",
"MATA.SG",
"MC0.SI",
"MCB.L",
"MCD",
"MCS",
"MEC.L",
"MGGT.L",
"MHCC.PK",
"MILL",
"MKS.L",
"MLC.L",
"MMTOF",
"MON",
"MONY.L",
"MPI.L",
"MQG.AX",
"MRK",
"MRO",
"MRW.L",
"MS",
"MSFT",
"MSI",
"MTC.L",
"MTS.AX",
"MU",
"MUL.L",
"N03.SI",
"NAB.AX",
"NDAQ",
"NEX.L",
"NFLX",
"NG.L",
"NJ",
"NKE",
"NMR",
"NTRS",
"NWY",
"NXI.PA",
"NXT.L",
"NYT",
"O32.SI",
"OBL.F",
"OCDO.L",
"OGC.AX",
"OKSB",
"OML.L",
"ORCL",
"ORI.AX",
"OSA.F",
"OVTI",
"OXM",
"P34.SI",
"PAY",
"PAY.L",
"PAYX",
"PDN.AX",
"PEP",
"PETS.L",
"PFD.L",
"PFE",
"PG",
"PLND.L",
"PMO.L",
"PNN.L",
"POG.L",
"POM",
"PRU.L",
"PSMT",
"PSN.L",
"PSON.L",
"PUB.L",
"QCOM",
"RAA.DE",
"RAT.L",
"RB.L",
"RBS.L",
"REL.L",
"REX.L",
"RGU.L",
"RIO.L",
"RMG.L",
"RNK.L",
"RNO.PA",
"RPC.L",
"RPS.L",
"RR.L",
"RRS.L",
"RSA.L",
"RSW.L",
"RTN.L",
"RTO.L",
"RWA.L",
"S08.SI",
"S24.SI",
"S68.SI",
"SAB.L",
"SAN.PA",
"SATOK.AT",
"SBRY.L",
"SBUX",
"SCHW",
"SDR.L",
"SEV.PA",
"SGC.L",
"SGE.L",
"SGP.L",
"SGRO.L",
"SHB.L",
"SHW",
"SIA.L",
"SL.L",
"SLB",
"SMWH.L",
"SN.L",
"SNDK",
"SNR.L",
"SONC",
"SPD.L",
"SPLS",
"SPRT.L",
"SPT.L",
"SRP.L",
"SSE.L",
"SSW",
"STAN.L",
"STF.PA",
"STHR.L",
"STI",
"STJ.L",
"STOB.L",
"STT",
"STZ",
"SU.PA",
"SVI.L",
"SVT.L",
"SW1.DE",
"SWN",
"SXS.L",
"T",
"T03.SI",
"T82U.SI",
"TATE.L",
"TCG.L",
"TECA.MU",
"TED.L",
"TESO",
"TIF",
"TIME",
"TLPR.L",
"TLW.L",
"TMEEF",
"TMUS",
"TNE.AX",
"TNI.L",
"TOT",
"TPK.L",
"TPT.L",
"TRI.TO",
"TRIP",
"TSCO.L",
"TSN",
"TT.L",
"TTC",
"TW.L",
"TWC",
"TWTR",
"TWX",
"TXN",
"U11.SI",
"U96.SI",
"ULVR.L",
"UNP",
"UPS",
"USB",
"UTG.L",
"UTX",
"UU.L",
"V",
"V03.SI",
"VCT.L",
"VED.L",
"VGR",
"VIAB",
"VOD.L",
"VOW3.DE",
"VSVS.L",
"VZ",
"WBA",
"WBC.AX",
"WEIR.L",
"WES.AX",
"WFC",
"WFM",
"WG.L",
"WGO",
"WHR",
"WMH.L",
"WMT",
"WOS.L",
"WOW.AX",
"WPP.L",
"WTB.L",
"X",
"XOM",
"XPP.L",
"XRX",
"YAHOY",
"YASKF",
"YHOO",
"YUM",
"Z74.SI",
"ZQKSQ"]

import mysql.connector
cnx = mysql.connector.connect(user='loader', password='loader',
                              host='127.0.0.1',
                              database='fundo')
cursor = cnx.cursor()


for i in range (5,31):
    table = 'trained' + str(i)
    print(table)
    semicolon = ';'
    createSum = ("""CREATE TABLE %s (
                 reportdate DATE,
                 primname VARCHAR(150),
                 reptype VARCHAR(20),
                 symbol VARCHAR(20),
                 sellprice float,
                 buyprice float
                 );""",(table))

    createSum2 = '{} {}'.format(*createSum)    
    createSum3 = createSum2.replace("%s",table)
    createSum4 = createSum3[:-10]
    
#    print (createSum4)
    
    cursor.execute(createSum4)    
    cnx.commit()    
    
    basics = ("""insert %s (reportdate,primname,reptype,symbol, sellprice)
            select reportdate,primname,reptype,symbol, mid from report;""",table)
    basics2 = '{} {}'.format(*basics)    
    basics3 = basics2.replace("%s",table)
    basics4 = basics3[:-len(table)]
#    alterSum =("""ALTER TABLE %s ADD %s float;""",(table,colname))
  
    cursor.execute(basics4)    
    cnx.commit()    


    indx_sym = ("""ALTER TABLE %s add index symbol (symbol);""",(table))
    indx_date = ("""ALTER TABLE %s add index reportdate (reportdate);""",(table))
    
    indx_sym2 = '{} {}'.format(*indx_sym)              
    indx_sym3 = indx_sym2.replace("%s",table)
    indx_sym4 = indx_sym3[:-len(table)]
#    print(len(table))
#    print(indx_sym4)
    
    indx_date2 = '{} {}'.format(*indx_date)              
    indx_date3 = indx_date2.replace("%s",table)
    indx_date4 = indx_date3[:-len(table)]
#    print(indx_date4)

    cursor.execute(indx_sym4) 
    cursor.execute(indx_date4) 
    cnx.commit()  

    for num in range (0,i+1):
            colname = 'minus' + str(num)        
            alterSum =("""ALTER TABLE %s ADD %r float;""",(table,colname))
            alterSum2 = '{} {}'.format(*alterSum)              
            alterSum3 = alterSum2.replace("%s",table)
            alterSum4 = alterSum3.replace("%r",colname)
            x= len(table)+4+len(colname)+2+2
#            print x
#            alterSum5 = alterSum4[:-24]
            alterSum5 = alterSum4[:-x]
#            print(alterSum5)
            cursor.execute(alterSum5)   
            cnx.commit()  
 
          
    for ticker_symbol in tickerlist:
        getbuy = ("""update %s s
            inner join
			(select distinct s.symbol,s.reptype, p.pricedate, p.mid
			from report s,
				prices p
			where s.symbol = p.symbol
			and reportdate between '2013-10-01' and '2014-01-31'
			and s.symbol = '%r'
			and p.pricedate <= reportdate
			LIMIT %d,1
			)l
        on s.symbol = l.symbol
        and s.reptype = l.reptype
        and s.reportdate between '2013-10-01' and '2014-01-31'
        and l.pricedate <= reportdate
        and s.symbol = '%r'
        set buyprice = l.mid;""",(table,ticker_symbol,i))
    
        getbuy2 = '{} {}'.format(*getbuy)              
        getbuy3 = getbuy2.replace("%s",table)
        getbuy4 = getbuy3.replace("%r",ticker_symbol)
        getbuy5 = getbuy4.replace("%d",str(i))

        x=len(table)+4+len(ticker_symbol)+4+len(str(i))+2

        getbuy6 = getbuy5[:-x]
#        getbuy6 = getbuy5[:-28]

        
        
        cursor.execute(getbuy6)   
        cnx.commit()          

        set_zero = """update %s set %r = 0;""",(table,colname)
        set_zero2 = '{} {}'.format(*set_zero)              
        set_zero3 = set_zero2.replace("%s",table)
        set_zero4 = set_zero3.replace("%r",colname)
        x=len(table)+4+len(colname)+2+2
        set_zero5 = set_zero4[:-x]
#        print(set_zero5)
        
        cursor.execute(set_zero5)  
        cnx.commit()  
#table = 'testsum'
#ticker_symbol = "IBM"    

    for counter in range (0,i):
        colname = 'minus' + str(counter) 
        for ticker_symbol in tickerlist:
            getday = ("""update %s s
                inner join
			(select distinct s.symbol,s.reptype, p.pricedate, p.mid
			from report s,
				prices p
			where s.symbol = p.symbol
			and reportdate between '2013-10-01' and '2014-01-31'
			and s.symbol = '%r'
			and p.pricedate <= reportdate
			LIMIT %d,1
			)l
                on s.symbol = l.symbol
                    and s.reptype = l.reptype
                    and s.reportdate between '2013-10-01' and '2014-01-31'
                    and l.pricedate <= reportdate
                    and s.symbol = '%r'
                set %col = ((l.mid-s.buyprice)/buyprice)*100;""",(table,ticker_symbol,counter,colname))
    
            getday2 = '{} {}'.format(*getday)              
            getday3 = getday2.replace("%s",table)
            getday4 = getday3.replace("%r",ticker_symbol)
            getday5 = getday4.replace("%d",str(counter))
            getday6 = getday5.replace("%col",colname)
            x=len(table)+4+len(ticker_symbol)+4+len(str(counter))+2+len(colname)+4

            getday7 = getday6[:-x]
            
            cursor.execute(getday7) 
            cnx.commit()


cnx.close()