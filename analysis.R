library(RMySQL)

mydb <- dbConnect(MySQL(), user="root", password="daffa1234!", dbname="domestic_tourism")
dbGetQuery(mydb, "SELECT * FROM activities LIMIT 10")