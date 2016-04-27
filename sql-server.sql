/*
 * This file is provided as-is with no warranty as to its performance.
 *
 * The purpose of this load file is to load into the SQL Server database the data associated with the book
 * "Data Analysis Using SQL and Excel".
 *
 * To use this file, download the data from the companion web site and unzip the files.  The variable
 * @DATADIR (defined below) should be set to the location where the files are located.  This file can
 * then be run in SQL Server Management Studio to load the data into the sqlbook database.
 *
 */


CREATE DATABASE sqlbook
go


use sqlbook

CREATE TABLE [product](
	[PRODUCTID] [int] NULL,
	[PRODUCTNAME] [varchar](50) NULL,
	[PRODUCTGROUPCODE] [varchar](50) NULL,
	[PRODUCTGROUPNAME] [varchar](50) NULL,
	[INSTOCKFLAG] [varchar](50) NULL,
	[FULLPRICE] [money] NULL
) 

CREATE TABLE [subs](
	[customer_id] [int] NULL,
	[rate_plan] [varchar](10) NULL,
	[monthly_fee] [numeric](18, 0) NULL,
	[market] [varchar](16) NULL,
	[channel] [varchar](6) NULL,
	[start_date] [datetime] NULL,
	[stop_date] [datetime] NULL,
	[stop_type] [varchar](4) NULL,
	[tenure] [int] NULL,
	[censored] [smallint] NULL
) 

CREATE TABLE [zipcensus](
	[zipcode] [char](5) NOT NULL,
	[state] [char](2) NULL,
	[population] [bigint] NULL,
	[housingunits] [bigint] NULL,
	[landareameters] [bigint] NULL,
	[waterareameters] [bigint] NULL,
	[landareamiles] [float] NULL,
	[waterareamiles] [float] NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[numstates] [bigint] NULL,
	[state1] [char](2) NULL,
	[state2] [char](2) NULL,
	[state3] [char](2) NULL,
	[partpop1] [bigint] NULL,
	[partpop2] [bigint] NULL,
	[partpop3] [bigint] NULL,
	[pop] [bigint] NULL,
	[popedu] [bigint] NULL,
	[hh] [bigint] NULL,
	[fam] [bigint] NULL,
	[hhunits] [bigint] NULL,
	[hhuoccupied] [bigint] NULL,
	[purban] [float] NULL,
	[pinurbanarea] [float] NULL,
	[pinurbancluster] [float] NULL,
	[prural] [float] NULL,
	[pruralfarm] [float] NULL,
	[pruralnonfarm] [float] NULL,
	[pracewhite] [float] NULL,
	[praceblack] [float] NULL,
	[praceamerind] [float] NULL,
	[praceasian] [float] NULL,
	[pracepacind] [float] NULL,
	[praceother] [float] NULL,
	[pracemulti] [float] NULL,
	[hhperson1] [float] NULL,
	[hhperson1m] [float] NULL,
	[hhperson1f] [float] NULL,
	[hhperson2pl] [float] NULL,
	[hhperson2family] [float] NULL,
	[hhperson2married] [float] NULL,
	[hhperson2marriedkids] [float] NULL,
	[hhperson2marriedonly] [float] NULL,
	[hhperson2other] [float] NULL,
	[hhperson2m] [float] NULL,
	[hhperson2mkids] [float] NULL,
	[hhperson2mnokids] [float] NULL,
	[hhperson2f] [float] NULL,
	[hhperson2fkids] [float] NULL,
	[hhperson2fnokids] [float] NULL,
	[hhperson2nonfamily] [float] NULL,
	[hhperson2mnonfamily] [float] NULL,
	[hhperson2fnonfamily] [float] NULL,
	[popedunone] [float] NULL,
	[popedunohs] [float] NULL,
	[popedusomehs] [float] NULL,
	[popeduhsgrad] [float] NULL,
	[popedusomecol] [float] NULL,
	[popeduassoc] [float] NULL,
	[popedubach] [float] NULL,
	[popedumast] [float] NULL,
	[popeduprofdoct] [float] NULL,
	[hhmedincome] [float] NULL,
	[hhssincome] [float] NULL,
	[hhnossincome] [float] NULL,
	[hhpubassist] [float] NULL,
	[hhnopubassist] [float] NULL,
	[faminc000_010] [float] NULL,
	[faminc010_015] [float] NULL,
	[faminc015_020] [float] NULL,
	[faminc020_025] [float] NULL,
	[faminc025_030] [float] NULL,
	[faminc030_035] [float] NULL,
	[faminc035_040] [float] NULL,
	[faminc040_045] [float] NULL,
	[faminc045_050] [float] NULL,
	[faminc050_060] [float] NULL,
	[faminc060_075] [float] NULL,
	[faminc075_100] [float] NULL,
	[faminc100_125] [float] NULL,
	[faminc125_150] [float] NULL,
	[faminc150_200] [float] NULL,
	[faminc200] [float] NULL,
	[fammedincome] [float] NULL,
	[hhuowner] [float] NULL,
	[hhuorenter] [float] NULL,
	[hhuo1per] [float] NULL,
	[hhuo2per] [float] NULL,
	[hhuo3per] [float] NULL,
	[hhuo4per] [float] NULL,
	[hhuo5per] [float] NULL,
	[hhuo6per] [float] NULL,
	[hhuo7per] [float] NULL,
	[hhumedianyear] [bigint] NULL,
	[hhuofuelutilgas] [float] NULL,
	[hhuofuelbotgas] [float] NULL,
	[hhuofuelelec] [float] NULL,
	[hhuofueloil] [float] NULL,
	[hhuofuelcoal] [float] NULL,
	[hhuofuelwood] [float] NULL,
	[hhuofuelsolar] [float] NULL,
	[hhuofuelother] [float] NULL,
	[hhuofuelnone] [float] NULL,
	[hhuoplumbingcomplete] [float] NULL,
	[hhuoplumbinglacking] [float] NULL,
	[hhumediancashrent] [float] NULL,
	[hhunmarried] [float] NULL,
	[hhunmarriedmm] [float] NULL,
	[hhunmarriedmf] [float] NULL,
	[hhunmarriedff] [float] NULL,
	[hhunmarriedfm] [float] NULL,
	[hhother] [float] NULL
) 

CREATE TABLE [zipcounty](
	[zipcode] [char](5) NULL,
	[latitude] [real] NULL,
	[longitude] [real] NULL,
	[poname] [varchar](50) NULL,
	[zipclass] [char](1) NULL,
	[countyfips] [char](10) NULL,
	[state] [varchar](50) NULL,
	[countyname] [varchar](50) NULL,
	[countypop] [int] NULL,
	[countyhu] [int] NULL,
	[countylandareamiles] [real] NULL,
	[countywaterareamiles] [real] NULL
) 

CREATE TABLE [calendar](
	[DATE] [smalldatetime] NULL,
	[ISO] [varchar](10) NULL,
	[datenum] [int] NULL,
	[DOW] [varchar](3) NULL,
	[dowint] [smallint] NULL,
	[Year] [smallint] NULL,
	[Month] [smallint] NULL,
	[dom] [smallint] NULL,
	[monthstr] [varchar](3) NULL,
	[doy] [smallint] NULL,
	[Mondays] [smallint] NULL,
	[Tuesdays] [smallint] NULL,
	[Wednesdays] [smallint] NULL,
	[Thursdays] [smallint] NULL,
	[Fridays] [smallint] NULL,
	[Saturdays] [smallint] NULL,
	[Sundays] [smallint] NULL,
	[numholidays] [int] NULL,
	[holidayname] [varchar](255) NULL,
	[holidaytype] [varchar](9) NULL,
	[national] [varchar](255) NULL,
	[minor] [varchar](255) NULL,
	[christian] [varchar](255) NULL,
	[jewish] [varchar](255) NULL,
	[muslim] [varchar](255) NULL,
	[chinese] [varchar](255) NULL,
	[other] [varchar](255) NULL
) 

CREATE TABLE [campaign](
	[campaignid] [int] NULL,
	[campaignname] [varchar](50) NULL,
	[channel] [varchar](50) NULL,
	[discount] [int] NULL,
	[freeshippingflag] [varchar](50) NULL
) 

CREATE TABLE [customer](
	[customerid] [int] NULL,
	[householdid] [int] NULL,
	[gender] [varchar](50) NULL,
	[firstname] [varchar](50) NULL
) 

CREATE TABLE [orderline](
	[orderlineid] [int] NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
	[shipdate] [smalldatetime] NULL,
	[billdate] [smalldatetime] NULL,
	[unitprice] [money] NULL,
	[numunits] [int] NULL,
	[totalprice] [money] NULL
) 

CREATE TABLE [orders](
	[orderid] [int] NULL,
	[customerid] [int] NULL,
	[campaignid] [int] NULL,
	[orderdate] [smalldatetime] NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zipcode] [varchar](50) NULL,
	[paymenttype] [varchar](50) NULL,
	[totalprice] [money] NULL,
	[numorderlines] [int] NULL,
	[numunits] [int] NULL
) 
go

declare @DATADIR varchar(128)
set @DATADIR='C:\Users\mjab\Downloads\textfiles'


EXECUTE('
bulk insert calendar from '''+@DATADIR+'\calendar.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert campaign from '''+@DATADIR+'\campaign.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert customer from '''+@DATADIR+'\customer.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert orderline from '''+@DATADIR+'\orderline.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert orders from '''+@DATADIR+'\orders.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert product from '''+@DATADIR+'\product.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert subs from '''+@DATADIR+'\subs.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert zipcensus from '''+@DATADIR+'\zipcensus.txt''
    with (firstrow = 2)
')

EXECUTE('
bulk insert zipcounty from '''+@DATADIR+'\zipcounty.txt''
    with (firstrow = 2)
')
go

create index calendar_date on calendar(date)

create index campaign_campaignid on campaign(campaignid)

create index customer_customerid on customer(customerid)

create index orderline_orderlineid on orderline(orderlineid)

create index orders_orderid on orders(orderid)

create index product_productid on product(productid)

create index subs_customer_id on subs(customer_id)

create index zipcensus_zipcode on zipcensus(zipcode)

create index zipcounty_zipcode on zipcounty(zipcode)
go