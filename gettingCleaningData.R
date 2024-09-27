
## connect to MySQL
ucscDb<- dbConnect(MySQL(),user="genome",host="geome-mysql.cse.ucsc.edu")
## show all dabases in the server
result<-dbGetQuery(ucscDb,"show databases;"); dbDisconnect(ucscDb);

## connect to a table
hg19<- dbConnect(MySQL(),user="genome", db="hg19" ,host="geome-mysql.cse.ucsc.edu")
allTables<- dbListTables(hg19)

## list fields
hg19Fields<- dbListFields(hg19,"tablename")
## run a query
hg19Query <- (hg19, "select count(*) from tablename")

## get the whole table
affyData <- dbReadTable(hg19, "tablename")
head(affyData)

## query table using SQL code
query <- dbSendQuery (hg19, "select * from ********")
affyMis <- fetch (query); quantile (affyMisMatches)

## pull in only a few
affyMisSmall <- fetch(query, n=10); 

## make sure you clear the query
dbClearResult(query)
##returns TRUE

## don't FORGET TO CLOSE THE CONNECTION
dbDisconnect (hg19)
