/*
 * This file is provided as-is with no warranty as to its performance.
 *
 * The purpose of this load file is to load into SAS the data associated with the book
 * "Data Analysis Using SQL and Excel".
 *
 * To use this file, download the data from the companion web site and unzip the files.  The variable
 * @DATADIR (defined below) should be set to the location where the files are located.  The sqlbook
 * library should be set to the appropriate destination directory location.  This file can then be
 * run in SAS to load the data into the sqlbook library.
 *
 */

libname sqlbook 'c:\dm-sql book\data\final\saslib';

%LET DATADIR=C:\DM-SQL Book\data\final\textfiles;


data SQLBOOK.calendar (compress=yes) ;
       infile "&DATADIR\calendar.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
          informat DATE yymmdd10. ;
          informat ISO $10. ;
          informat datenum best32. ;
          informat DOW $3. ;
          informat dowint best32. ;
          informat Year best32. ;
          informat Month best32. ;
          informat dom best32. ;
          informat monthstr $3. ;
          informat doy best32. ;
          informat Mondays best32. ;
          informat Tuesdays best32. ;
          informat Wednesdays best32. ;
          informat Thursdays best32. ;
          informat Fridays best32. ;
          informat Saturdays best32. ;
          informat Sundays best32. ;
          informat numholidays best32. ;
          informat holidayname $255. ;
          informat holidaytype $9. ;
          informat national $255. ;
          informat minor $255. ;
          informat christian $255. ;
          informat jewish $255. ;
          informat muslim $255. ;
          informat chinese $255. ;
          informat other $255. ;
          format DATE yymmdd10. ;
          format ISO $10. ;
          format datenum best12. ;
          format DOW $3. ;
          format dowint best12. ;
          format Year best12. ;
          format Month best12. ;
          format dom best12. ;
          format monthstr $3. ;
          format doy best12. ;
          format Mondays best12. ;
          format Tuesdays best12. ;
          format Wednesdays best12. ;
          format Thursdays best12. ;
          format Fridays best12. ;
          format Saturdays best12. ;
          format Sundays best12. ;
          format numholidays best12. ;
          format holidayname $255. ;
          format holidaytype $9. ;
          format national $255. ;
          format minor $255. ;
          format christian $255. ;
          format jewish $255. ;
          format muslim $255. ;
          format chinese $255. ;
          format other $255. ;
       input
                   DATE
                   ISO $
                   datenum
                   DOW $
                   dowint
                   Year
                   Month
                   dom
                   monthstr $
                   doy
                   Mondays
                   Tuesdays
                   Wednesdays
                   Thursdays
                   Fridays
                   Saturdays
                   Sundays
                   numholidays
                   holidayname $
                   holidaytype $
                   national $
                   minor $
                   christian $
                   jewish $
                   muslim $
                   chinese $
                   other $
       ;
run;


data SQLBOOK.CAMPAIGN (compress = yes) ;
      infile "&DATADIR\campaign.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat campaignid best32. ;
         informat campaignname $50. ;
         informat channel $50. ;
         informat discount best32. ;
         informat freeshippingflag $1. ;
         format campaignid best12. ;
         format campaignname $50. ;
         format channel $50. ;
         format discount best12. ;
         format freeshippingflag $1. ;
      input
                  campaignid
                  campaignname $
                  channel $
                  discount
                  freeshippingflag $
      ;
run;

data SQLBOOK.CUSTOMER (compress=yes);
      infile "&DATADIR\customer.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat customerid best32. ;
         informat householdid best32. ;
         informat gender $1. ;
         informat firstname $50. ;
         format customerid best12. ;
         format householdid best12. ;
         format gender $1. ;
         format firstname $50. ;
      input
                  customerid
                  householdid
                  gender $
                  firstname $
      ;
run;


data SQLBOOK.ORDERLINE (compress=yes);
      infile "&DATADIR\orderline.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat orderlineid best32. ;
         informat orderid best32. ;
         informat productid best32. ;
         informat shipdate yymmdd10. ;
         informat billdate yymmdd10. ;
         informat unitprice best32. ;
         informat numunits best32. ;
         informat totalprice best32. ;
         format orderlineid best12. ;
         format orderid best12. ;
         format productid best12. ;
         format shipdate yymmdd10. ;
         format billdate yymmdd10. ;
         format unitprice best12. ;
         format numunits best12. ;
         format totalprice best12. ;
      input
                  orderlineid
                  orderid
                  productid
                  shipdate
                  billdate
                  unitprice
                  numunits
                  totalprice
      ;
run;


data SQLBOOK.ORDERS (compress=yes);
      infile "&DATADIR\orders.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat orderid best32. ;
         informat customerid best32. ;
         informat campaignid best32. ;
         informat orderdate yymmdd10. ;
         informat city $50. ;
         informat state $2. ;
         informat zipcode $50. ;
         informat paymenttype $2. ;
         informat totalprice best32. ;
         informat numorderlines best32. ;
         informat numunits best32. ;
         format orderid best12. ;
         format customerid best12. ;
         format campaignid best12. ;
         format orderdate yymmdd10. ;
         format city $50. ;
         format state $2. ;
         format zipcode $50. ;
         format paymenttype $2. ;
         format totalprice best12. ;
         format numorderlines best12. ;
         format numunits best12. ;
      input
                  orderid
                  customerid
                  campaignid
                  orderdate
                  city $
                  state $
                  zipcode $
                  paymenttype $
                  totalprice
                  numorderlines
                  numunits
      ;
run;


data SQLBOOK.PRODUCT (compress=yes);
      infile "&DATADIR\product.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat PRODUCTID best32. ;
         informat PRODUCTNAME $50. ;
         informat PRODUCTGROUPCODE $50. ;
         informat PRODUCTGROUPNAME $50. ;
         informat INSTOCKFLAG $1. ;
         informat FULLPRICE best32. ;
         format PRODUCTID best12. ;
         format PRODUCTNAME $50. ;
         format PRODUCTGROUPCODE $50. ;
         format PRODUCTGROUPNAME $50. ;
         format INSTOCKFLAG $1. ;
         format FULLPRICE best12. ;
      input
                  PRODUCTID
                  PRODUCTNAME $
                  PRODUCTGROUPCODE $
                  PRODUCTGROUPNAME $
                  INSTOCKFLAG $
                  FULLPRICE
      ;
run;


data SQLBOOK.ZIPCENSUS (compress=yes);
      infile "&DATADIR\zipcensus.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat zipcode $5. ;
         informat state $2. ;
         informat population best32. ;
         informat housingunits best32. ;
         informat landareameters best32. ;
         informat waterareameters best32. ;
         informat landareamiles best32. ;
         informat waterareamiles best32. ;
         informat latitude best32. ;
         informat longitude best32. ;
         informat numstates best32. ;
         informat state1 $2. ;
         informat state2 $2. ;
         informat state3 $2. ;
         informat partpop1 best32. ;
         informat partpop2 best32. ;
         informat partpop3 best32. ;
         informat pop best32. ;
         informat popedu best32. ;
         informat hh best32. ;
         informat fam best32. ;
         informat hhunits best32. ;
         informat hhuoccupied best32. ;
         informat purban best32. ;
         informat pinurbanarea best32. ;
         informat pinurbancluster best32. ;
         informat prural best32. ;
         informat pruralfarm best32. ;
         informat pruralnonfarm best32. ;
         informat pracewhite best32. ;
         informat praceblack best32. ;
         informat praceamerind best32. ;
         informat praceasian best32. ;
         informat pracepacind best32. ;
         informat praceother best32. ;
         informat pracemulti best32. ;
         informat hhperson1 best32. ;
         informat hhperson1m best32. ;
         informat hhperson1f best32. ;
         informat hhperson2pl best32. ;
         informat hhperson2family best32. ;
         informat hhperson2married best32. ;
         informat hhperson2marriedkids best32. ;
         informat hhperson2marriedonly best32. ;
         informat hhperson2other best32. ;
         informat hhperson2m best32. ;
         informat hhperson2mkids best32. ;
         informat hhperson2mnokids best32. ;
         informat hhperson2f best32. ;
         informat hhperson2fkids best32. ;
         informat hhperson2fnokids best32. ;
         informat hhperson2nonfamily best32. ;
         informat hhperson2mnonfamily best32. ;
         informat hhperson2fnonfamily best32. ;
         informat popedunone best32. ;
         informat popedunohs best32. ;
         informat popedusomehs best32. ;
         informat popeduhsgrad best32. ;
         informat popedusomecol best32. ;
         informat popeduassoc best32. ;
         informat popedubach best32. ;
         informat popedumast best32. ;
         informat popeduprofdoct best32. ;
         informat hhmedincome best32. ;
         informat hhssincome best32. ;
         informat hhnossincome best32. ;
         informat hhpubassist best32. ;
         informat hhnopubassist best32. ;
         informat faminc000_010 best32. ;
         informat faminc010_015 best32. ;
         informat faminc015_020 best32. ;
         informat faminc020_025 best32. ;
         informat faminc025_030 best32. ;
         informat faminc030_035 best32. ;
         informat faminc035_040 best32. ;
         informat faminc040_045 best32. ;
         informat faminc045_050 best32. ;
         informat faminc050_060 best32. ;
         informat faminc060_075 best32. ;
         informat faminc075_100 best32. ;
         informat faminc100_125 best32. ;
         informat faminc125_150 best32. ;
         informat faminc150_200 best32. ;
         informat faminc200 best32. ;
         informat fammedincome best32. ;
         informat hhuowner best32. ;
         informat hhuorenter best32. ;
         informat hhuo1per best32. ;
         informat hhuo2per best32. ;
         informat hhuo3per best32. ;
         informat hhuo4per best32. ;
         informat hhuo5per best32. ;
         informat hhuo6per best32. ;
         informat hhuo7per best32. ;
         informat hhumedianyear best32. ;
         informat hhuofuelutilgas best32. ;
         informat hhuofuelbotgas best32. ;
         informat hhuofuelelec best32. ;
         informat hhuofueloil best32. ;
         informat hhuofuelcoal best32. ;
         informat hhuofuelwood best32. ;
         informat hhuofuelsolar best32. ;
         informat hhuofuelother best32. ;
         informat hhuofuelnone best32. ;
         informat hhuoplumbingcomplete best32. ;
         informat hhuoplumbinglacking best32. ;
         informat hhumediancashrent best32. ;
         informat hhunmarried best32. ;
         informat hhunmarriedmm best32. ;
         informat hhunmarriedmf best32. ;
         informat hhunmarriedff best32. ;
         informat hhunmarriedfm best32. ;
         informat hhother best32. ;
         format zipcode $5. ;
         format state $2. ;
         format population best12. ;
         format housingunits best12. ;
         format landareameters best12. ;
         format waterareameters best12. ;
         format landareamiles best12. ;
         format waterareamiles best12. ;
         format latitude best12. ;
         format longitude best12. ;
         format numstates best12. ;
         format state1 $2. ;
         format state2 $2. ;
         format state3 $2. ;
         format partpop1 best12. ;
         format partpop2 best12. ;
         format partpop3 best12. ;
         format pop best12. ;
         format popedu best12. ;
         format hh best12. ;
         format fam best12. ;
         format hhunits best12. ;
         format hhuoccupied best12. ;
         format purban best12. ;
         format pinurbanarea best12. ;
         format pinurbancluster best12. ;
         format prural best12. ;
         format pruralfarm best12. ;
         format pruralnonfarm best12. ;
         format pracewhite best12. ;
         format praceblack best12. ;
         format praceamerind best12. ;
         format praceasian best12. ;
         format pracepacind best12. ;
         format praceother best12. ;
         format pracemulti best12. ;
         format hhperson1 best12. ;
         format hhperson1m best12. ;
         format hhperson1f best12. ;
         format hhperson2pl best12. ;
         format hhperson2family best12. ;
         format hhperson2married best12. ;
         format hhperson2marriedkids best12. ;
         format hhperson2marriedonly best12. ;
         format hhperson2other best12. ;
         format hhperson2m best12. ;
         format hhperson2mkids best12. ;
         format hhperson2mnokids best12. ;
         format hhperson2f best12. ;
         format hhperson2fkids best12. ;
         format hhperson2fnokids best12. ;
         format hhperson2nonfamily best12. ;
         format hhperson2mnonfamily best12. ;
         format hhperson2fnonfamily best12. ;
         format popedunone best12. ;
         format popedunohs best12. ;
         format popedusomehs best12. ;
         format popeduhsgrad best12. ;
         format popedusomecol best12. ;
         format popeduassoc best12. ;
         format popedubach best12. ;
         format popedumast best12. ;
         format popeduprofdoct best12. ;
         format hhmedincome best12. ;
         format hhssincome best12. ;
         format hhnossincome best12. ;
         format hhpubassist best12. ;
         format hhnopubassist best12. ;
         format faminc000_010 best12. ;
         format faminc010_015 best12. ;
         format faminc015_020 best12. ;
         format faminc020_025 best12. ;
         format faminc025_030 best12. ;
         format faminc030_035 best12. ;
         format faminc035_040 best12. ;
         format faminc040_045 best12. ;
         format faminc045_050 best12. ;
         format faminc050_060 best12. ;
         format faminc060_075 best12. ;
         format faminc075_100 best12. ;
         format faminc100_125 best12. ;
         format faminc125_150 best12. ;
         format faminc150_200 best12. ;
         format faminc200 best12. ;
         format fammedincome best12. ;
         format hhuowner best12. ;
         format hhuorenter best12. ;
         format hhuo1per best12. ;
         format hhuo2per best12. ;
         format hhuo3per best12. ;
         format hhuo4per best12. ;
         format hhuo5per best12. ;
         format hhuo6per best12. ;
         format hhuo7per best12. ;
         format hhumedianyear best12. ;
         format hhuofuelutilgas best12. ;
         format hhuofuelbotgas best12. ;
         format hhuofuelelec best12. ;
         format hhuofueloil best12. ;
         format hhuofuelcoal best12. ;
         format hhuofuelwood best12. ;
         format hhuofuelsolar best12. ;
         format hhuofuelother best12. ;
         format hhuofuelnone best12. ;
         format hhuoplumbingcomplete best12. ;
         format hhuoplumbinglacking best12. ;
         format hhumediancashrent best12. ;
         format hhunmarried best12. ;
         format hhunmarriedmm best12. ;
         format hhunmarriedmf best12. ;
         format hhunmarriedff best12. ;
         format hhunmarriedfm best12. ;
         format hhother best12. ;
      input
                  zipcode $
                  state $
                  population
                  housingunits
                  landareameters
                  waterareameters
                  landareamiles
                  waterareamiles
                  latitude
                  longitude
                  numstates
                  state1 $
                  state2 $
                  state3 $
                  partpop1
                  partpop2
                  partpop3
                  pop
                  popedu
                  hh
                  fam
                  hhunits
                  hhuoccupied
                  purban
                  pinurbanarea
                  pinurbancluster
                  prural
                  pruralfarm
                  pruralnonfarm
                  pracewhite
                  praceblack
                  praceamerind
                  praceasian
                  pracepacind
                  praceother
                  pracemulti
                  hhperson1
                  hhperson1m
                  hhperson1f
                  hhperson2pl
                  hhperson2family
                  hhperson2married
                  hhperson2marriedkids
                  hhperson2marriedonly
                  hhperson2other
                  hhperson2m
                  hhperson2mkids
                  hhperson2mnokids
                  hhperson2f
                  hhperson2fkids
                  hhperson2fnokids
                  hhperson2nonfamily
                  hhperson2mnonfamily
                  hhperson2fnonfamily
                  popedunone
                  popedunohs
                  popedusomehs
                  popeduhsgrad
                  popedusomecol
                  popeduassoc
                  popedubach
                  popedumast
                  popeduprofdoct
                  hhmedincome
                  hhssincome
                  hhnossincome
                  hhpubassist
                  hhnopubassist
                  faminc000_010
                  faminc010_015
                  faminc015_020
                  faminc020_025
                  faminc025_030
                  faminc030_035
                  faminc035_040
                  faminc040_045
                  faminc045_050
                  faminc050_060
                  faminc060_075
                  faminc075_100
                  faminc100_125
                  faminc125_150
                  faminc150_200
                  faminc200
                  fammedincome
                  hhuowner
                  hhuorenter
                  hhuo1per
                  hhuo2per
                  hhuo3per
                  hhuo4per
                  hhuo5per
                  hhuo6per
                  hhuo7per
                  hhumedianyear
                  hhuofuelutilgas
                  hhuofuelbotgas
                  hhuofuelelec
                  hhuofueloil
                  hhuofuelcoal
                  hhuofuelwood
                  hhuofuelsolar
                  hhuofuelother
                  hhuofuelnone
                  hhuoplumbingcomplete
                  hhuoplumbinglacking
                  hhumediancashrent
                  hhunmarried
                  hhunmarriedmm
                  hhunmarriedmf
                  hhunmarriedff
                  hhunmarriedfm
                  hhother
      ;
run;

data SQLBOOK.ZIPCOUNTY (compress=yes);
      infile "&DATADIR\zipcounty.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat zipcode $5. ;
         informat latitude best32. ;
         informat longitude best32. ;
         informat poname $50. ;
         informat zipclass $1. ;
         informat countyfips $10. ;
         informat state $2. ;
         informat countyname $50. ;
         informat countypop best32. ;
         informat countyhu best32. ;
         informat countylandareamiles best32. ;
         informat countywaterareamiles best32. ;
         format zipcode $5. ;
         format latitude best12. ;
         format longitude best12. ;
         format poname $14. ;
         format zipclass $1. ;
         format countyfips $10. ;
         format state $2. ;
         format countyname $25. ;
         format countypop best12. ;
         format countyhu best12. ;
         format countylandareamiles best12. ;
         format countywaterareamiles best12. ;
      input
                  zipcode $
                  latitude
                  longitude
                  poname $
                  zipclass $
                  countyfips $
                  state $
                  countyname $
                  countypop
                  countyhu
                  countylandareamiles
                  countywaterareamiles
      ;
run;

data SQLBOOK.SUBS (compress=yes);
      infile "&DATADIR\subs.txt" delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;
         informat customer_id best32. ;
         informat rate_plan $10. ;
         informat monthly_fee best32. ;
         informat market $16. ;
         informat channel $6. ;
         informat start_date yymmdd10. ;
         informat stop_date yymmdd10. ;
         informat stop_type $1. ;
         informat tenure best32. ;
         informat censored 1. ;
         format customer_id best12. ;
         format rate_plan $6. ;
         format monthly_fee best12. ;
         format market $12. ;
         format channel $6. ;
         format start_date yymmdd10. ;
         format stop_date yymmdd10. ;
         format stop_type $1. ;
         format tenure best12. ;
         format censored 1. ;
      input
                  customer_id
                  rate_plan $
                  monthly_fee
                  market $
                  channel $
                  start_date
                  stop_date
                  stop_type $
                  tenure
                  censored
      ;
run;


proc sql;
create index date on sqlbook.calendar(date)
;

proc sql;
create index campaignid on sqlbook.campaign(campaignid)
;

proc sql;
create index customerid on sqlbook.customer(customerid)
;

proc sql;
create index orderlineid on sqlbook.orderline(orderlineid)
;

proc sql;
create index orderid on sqlbook.orders(orderid)
;

proc sql;
create index productid on sqlbook.product(productid)
;

proc sql;
create index customer_id on sqlbook.subs(customer_id)
;

proc sql;
create index zipcode on sqlbook.zipcensus(zipcode)
;

proc sql;
create index zipcode on sqlbook.zipcounty(zipcode)
;












