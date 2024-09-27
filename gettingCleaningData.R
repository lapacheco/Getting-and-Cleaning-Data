
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
