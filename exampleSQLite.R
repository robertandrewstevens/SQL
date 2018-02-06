setwd("C:/Users/Ken/Desktop/SISG-ADV")

#install.packages("RSQLite") #perhaps needed
library("RSQLite")

## connecting/using an existing file

system("ls *.db", show=TRUE)
sqlite    <- dbDriver("SQLite")
exampledb <- dbConnect(sqlite,"newexample.db")

dbListTables(exampledb)
dbListFields(exampledb, "genotypes")

dbGetQuery(exampledb, 
"select sbp, dbp, sbp-dbp as pulsep from phenotypes where sex = 'MALE'")

results <- dbSendQuery(exampledb, 
"select sbp, dbp, sbp-dbp as pulsep from phenotypes where sex = 'MALE'")

fetch(results,10)
fetch(results,10)
dbClearResult(results)

dbGetQuery(exampledb, 
"select sum(sbp) as mns,sum(dbp) as mnd from phenotypes where sex= 'MALE'")

dbGetQuery(exampledb, 
"select avg(sbp) as mns,avg(dbp) as mnd from phenotypes where sex= 'MALE'")

joinedresults <- dbSendQuery(exampledb, 
"SELECT sbp, dbp, sbp-dbp AS pulsep, snp1, snp3 FROM 
phenotypes INNER JOIN genotypes USING(id) WHERE sex = 'MALE'")

fetch(joinedresults, 10)

fetch(joinedresults)

dbClearResult(joinedresults)

dbSendQuery(exampledb, 
"CREATE TABLE both AS  SELECT * from phenotypes INNER JOIN genotypes USING(id)")

means <- dbGetQuery(exampledb, 
"select snp3, count(*),avg(sbp),min(sbp), max(sbp) from both group by snp3")
means

dbListTables(exampledb)

dbDisconnect(exampledb)

## making a file

setwd("C:/Users/Ken/Desktop/SISG-ADV")
file.remove("newexample.db") # get rid of old versions

pheno<-read.csv("http://faculty.washington.edu/kenrice/sisg/example-pheno.csv")
geno<-read.table("http://faculty.washington.edu/kenrice/sisg/example-snp.txt", header=TRUE)

sqlite    <- dbDriver("SQLite")
exampledb <- dbConnect(sqlite,"newexample.db") # makes a new file

dbWriteTable(exampledb,"phenotypes",pheno)
dbWriteTable(exampledb,"genotypes",geno)

dbListTables(exampledb)

dbDisconnect(exampledb)

system("ls -l newexample.db", show=TRUE)

