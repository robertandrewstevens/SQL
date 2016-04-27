/*
 * This file is provided as-is with no warranty as to its performance.
 *
 * The purpose of this load file is to load into the mysql database the data assocatied with the book
 * "Data Analysis Using SQL and Excel".

 *
 * To use this file, download the data from the companion web site and unzip the files.  Replace all
 * instances of the string "c:/DM-SQL Book/data/final/textfiles" [no double quotes] with the appropriate

 * location of the downloaded data files.
 *
 *
 */
create database sqlbook;

use sqlbook;

CREATE TABLE calendar (
    DATE date NULL,
    ISO varchar(10) NULL,
    datenum int NULL,
    DOW varchar(3) NULL,

    dowint smallint NULL,
    Year smallint NULL,
    Month smallint NULL,
    dom smallint NULL,
    monthstr varchar(3) NULL,
    doy smallint NULL,
    Mondays smallint NULL,
    Tuesdays smallint NULL,
    Wednesdays smallint NULL,

    Thursdays smallint NULL,
    Fridays smallint NULL,
    Saturdays smallint NULL,
    Sundays smallint NULL,
    numholidays int NULL,
    holidayname varchar(255) NULL,
    holidaytype varchar(9) NULL,
    national varchar(255) NULL,

    minor varchar(255) NULL,
    christian varchar(255) NULL,
    jewish varchar(255) NULL,
    muslim varchar(255) NULL,
    chinese varchar(255) NULL,
    other varchar(255) NULL
)
;

CREATE TABLE campaign (

    campaignid int NULL,
    campaignname varchar(50) NULL,
    channel varchar(50) NULL,
    discount int NULL,
    freeshippingflag varchar(50) NULL
)
;

CREATE TABLE customer (
    customerid int NULL,
    householdid int NULL,

    gender varchar(50) NULL,
    firstname varchar(50) NULL
)
;

CREATE TABLE orderline (
    orderlineid int NULL,
    orderid int NULL,
    productid int NULL,
    shipdate date NULL,
    billdate date NULL,

    unitprice numeric(10,2) NULL,
    numunits int NULL,
    totalprice numeric(10,2) NULL
)
;

CREATE TABLE orders (
    orderid int NULL,
    customerid int NULL,
    campaignid int NULL,
    orderdate date NULL,

    city varchar(50) NULL,
    state varchar(50) NULL,
    zipcode varchar(50) NULL,
    paymenttype varchar(50) NULL,
    totalprice numeric(10,2) NULL,
    numorderlines int NULL,
    numunits int NULL
)
;



CREATE TABLE product (
    PRODUCTID int NULL,
    PRODUCTNAME varchar(50) NULL,
    PRODUCTGROUPCODE varchar(50) NULL,
    PRODUCTGROUPNAME varchar(50) NULL,
    INSTOCKFLAG varchar(50) NULL,
    FULLPRICE numeric NULL

)
;

CREATE TABLE subs (
    customer_id int NULL,
    rate_plan varchar(10) NULL,
    monthly_fee numeric(18, 0) NULL,
    market varchar(16) NULL,
    channel varchar(6) NULL,
    start_date date NULL,
    stop_date date NULL,

    stop_type varchar(4) NULL,
    tenure int NULL,
    censored smallint NULL
)
;

CREATE TABLE zipcensus(
      zipcode char(5) NOT NULL,
      state char(2) NULL,
      population bigint NULL,
      housingunits bigint NULL,
      landareameters bigint NULL,
      waterareameters bigint NULL,
      landareamiles real NULL,
      waterareamiles real NULL,
      latitude real NULL,
      longitude real NULL,
      numstates bigint NULL,
      state1 char(2) NULL,
      state2 char(2) NULL,
      state3 char(2) NULL,
      partpop1 bigint NULL,
      partpop2 bigint NULL,
      partpop3 bigint NULL,
      pop bigint NULL,
      popedu bigint NULL,
      hh bigint NULL,
      fam bigint NULL,
      hhunits bigint NULL,
      hhuoccupied bigint NULL,
      purban real NULL,
      pinurbanarea real NULL,
      pinurbancluster real NULL,
      prural real NULL,
      pruralfarm real NULL,
      pruralnonfarm real NULL,
      pracewhite real NULL,
      praceblack real NULL,
      praceamerind real NULL,
      praceasian real NULL,
      pracepacind real NULL,
      praceother real NULL,
      pracemulti real NULL,
      hhperson1 real NULL,
      hhperson1m real NULL,
      hhperson1f real NULL,
      hhperson2pl real NULL,
      hhperson2family real NULL,
      hhperson2married real NULL,
      hhperson2marriedkids real NULL,
      hhperson2marriedonly real NULL,
      hhperson2other real NULL,
      hhperson2m real NULL,
      hhperson2mkids real NULL,
      hhperson2mnokids real NULL,
      hhperson2f real NULL,
      hhperson2fkids real NULL,
      hhperson2fnokids real NULL,
      hhperson2nonfamily real NULL,
      hhperson2mnonfamily real NULL,
      hhperson2fnonfamily real NULL,
      popedunone real NULL,
      popedunohs real NULL,
      popedusomehs real NULL,
      popeduhsgrad real NULL,
      popedusomecol real NULL,
      popeduassoc real NULL,
      popedubach real NULL,
      popedumast real NULL,
      popeduprofdoct real NULL,
      hhmedincome real NULL,
      hhssincome real NULL,
      hhnossincome real NULL,
      hhpubassist real NULL,
      hhnopubassist real NULL,
      faminc000_010 real NULL,
      faminc010_015 real NULL,
      faminc015_020 real NULL,
      faminc020_025 real NULL,
      faminc025_030 real NULL,
      faminc030_035 real NULL,
      faminc035_040 real NULL,
      faminc040_045 real NULL,
      faminc045_050 real NULL,
      faminc050_060 real NULL,
      faminc060_075 real NULL,
      faminc075_100 real NULL,
      faminc100_125 real NULL,
      faminc125_150 real NULL,
      faminc150_200 real NULL,
      faminc200 real NULL,
      fammedincome real NULL,
      hhuowner real NULL,
      hhuorenter real NULL,
      hhuo1per real NULL,
      hhuo2per real NULL,
      hhuo3per real NULL,
      hhuo4per real NULL,
      hhuo5per real NULL,
      hhuo6per real NULL,
      hhuo7per real NULL,
      hhumedianyear bigint NULL,
      hhuofuelutilgas real NULL,
      hhuofuelbotgas real NULL,
      hhuofuelelec real NULL,
      hhuofueloil real NULL,
      hhuofuelcoal real NULL,
      hhuofuelwood real NULL,
      hhuofuelsolar real NULL,
      hhuofuelother real NULL,
      hhuofuelnone real NULL,
      hhuoplumbingcomplete real NULL,
      hhuoplumbinglacking real NULL,
      hhumediancashrent real NULL,
      hhunmarried real NULL,
      hhunmarriedmm real NULL,
      hhunmarriedmf real NULL,
      hhunmarriedff real NULL,
      hhunmarriedfm real NULL,
      hhother real NULL
)
;


CREATE TABLE zipcounty (
    zipcode char(5) NULL,
    latitude real NULL,
    longitude real NULL,

    poname varchar(50) NULL,
    zipclass char(1) NULL,
    countyfips char(10) NULL,
    state varchar(50) NULL,
    countyname varchar(50) NULL,
    countypop int NULL,
    countyhu int NULL,
    countylandareamiles real NULL,

    countywaterareamiles real NULL
)
;

LOAD DATA
    LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/calendar.txt'
    INTO TABLE calendar
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES

;


LOAD DATA
    LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/campaign.txt'
    INTO TABLE campaign
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES
;

LOAD DATA
     LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/customer.txt'
     INTO TABLE customer
     LINES TERMINATED BY '\r\n'
     IGNORE 1 LINES
;

LOAD DATA
     LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/orderline.txt'

     INTO TABLE orderline
     LINES TERMINATED BY '\r\n'
     IGNORE 1 LINES
     (orderlineid, orderid, productid, shipdate, billdate, @unitprice_temp, numunits, totalprice)
     SET unitprice = (case when @unitprice_temp is null or @unitprice_temp = '' then null else @unitprice_temp end)

;

LOAD DATA
     LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/orders.txt'
     INTO TABLE orders
     LINES TERMINATED BY '\r\n'
     IGNORE 1 LINES
;

LOAD DATA
     LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/subs.txt'

     INTO TABLE subs
     LINES TERMINATED BY '\r\n'
     IGNORE 1 LINES
     (customer_id, rate_plan, monthly_fee, market, channel, @start_date_temp, @stop_date_temp, stop_type, tenure, censored)
     SET stop_date = (case when @stop_date_temp is null or @stop_date_temp = '' then null else @stop_date_temp end),

         start_date = (case when @start_date_temp is null or @start_date_temp = '' then null else @start_date_temp end)
;


LOAD DATA
     LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/zipcensus.txt'

     INTO TABLE zipcensus
     LINES TERMINATED BY '\r\n'
     IGNORE 1 LINES
;


LOAD DATA
     LOCAL INFILE 'c:/DM-SQL Book/data/final/textfiles/zipcounty.txt'
     INTO TABLE zipcounty

     LINES TERMINATED BY '\r\n'
     IGNORE 1 LINES
;


CREATE INDEX calendar_date on calendar(date);
CREATE INDEX campaign_campaignid on campaign(campaignid);
CREATE INDEX customer_customerid on customer(customerid);
CREATE INDEX orderline_orderlineid on orderline(orderlineid);
CREATE INDEX orders_orderid on orders(orderid);
CREATE INDEX product_productid on product(productid);
CREATE INDEX subs_customer_id on subs(customer_id);
CREATE INDEX zipcensus_zipcode on zipcensus(zipcode);
CREATE INDEX zipcounty_zipcode on zipcounty(zipcode);