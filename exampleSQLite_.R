# http://faculty.washington.edu/kenrice/sisg-adv/exampleSQLite.R

#setwd("C:/Users/Ken/Desktop/SISG-ADV")

#install.packages("RSQLite") #perhaps needed
library("RSQLite")

## connecting/using an existing file

#system("ls *.db", show=TRUE)
list.files(pattern = "*.db")
sqlite    <- dbDriver("SQLite")
exampledb <- dbConnect(sqlite, "subset_track_metadata.db")

dbListTables(exampledb)
dbListFields(exampledb, "songs")

dbGetQuery(exampledb, 
    "select * from songs where year = '2010'")

results <- dbSendQuery(exampledb, 
  "select * from songs where year = '2010'")

fetch(results, 10)
fetch(results, 10)
dbClearResult(results)

dbGetQuery(exampledb, 
  "select sum(artist_familiarity) as familiarity, sum(artist_hotttnesss) as hotttnesss 
   from   songs 
   where  year = '2010'")

dbGetQuery(exampledb, 
  "select avg(artist_familiarity) as familiarity, avg(artist_hotttnesss) as hotttnesss 
   from   songs 
   where  year = '2010'")

#joinedresults <- dbSendQuery(exampledb, 
#  "SELECT sbp, dbp, sbp-dbp AS pulsep, snp1, snp3 
#   FROM   phenotypes INNER JOIN genotypes USING(id) WHERE sex = 'MALE'")

#fetch(joinedresults, 10)

#fetch(joinedresults)

#dbClearResult(joinedresults)

#dbSendQuery(exampledb, 
#"CREATE TABLE both AS  SELECT * from phenotypes INNER JOIN genotypes USING(id)")

#means <- dbGetQuery(exampledb, 
#"select snp3, count(*),avg(sbp),min(sbp), max(sbp) from both group by snp3")
#means

dbListTables(exampledb)

dbDisconnect(exampledb)

## making a file

#setwd("C:/Users/Ken/Desktop/SISG-ADV")
#file.remove("newexample.db") # get rid of old versions

#pheno<-read.csv("http://faculty.washington.edu/kenrice/sisg/example-pheno.csv")
#geno<-read.table("http://faculty.washington.edu/kenrice/sisg/example-snp.txt", header=TRUE)

#sqlite    <- dbDriver("SQLite")
#exampledb <- dbConnect(sqlite,"newexample.db") # makes a new file

#dbWriteTable(exampledb,"phenotypes",pheno)
#dbWriteTable(exampledb,"genotypes",geno)

#dbListTables(exampledb)

#dbDisconnect(exampledb)

#system("ls -l newexample.db", show=TRUE)
