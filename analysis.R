library(RMySQL)

#connect to MySQL
mydb <- dbConnect(MySQL(), user="root", password="daffa1234!", dbname="domestic_tourism")
dbGetQuery(mydb, "SELECT * FROM activities LIMIT 100")

#list of all activities
activities <- dbGetQuery(mydb, "SELECT DISTINCT activity_group FROM activities")
typeof(activities)
length(activities)
activities

#data from only 2000
millennium <- dbGetQuery(mydb, "SELECT * FROM activities WHERE year_ending>='2000-1-1' AND year_ending<='2000-12-31'")
typeof(millennium)
length(millennium)
millennium

#[-1] to remove the All row
barplot(tapply(millennium$income, millennium$activity_group, sum)[-1])