#Method 1
stats<-read.csv(file.choose())
stats


#Method 2
getwd()
setwd("C:\\Users\\imkri\\Documents\\R Repository")
stats<- read.csv("DemographicData.csv")
stats



#Exploring data
nrow(stats)
ncol(stats)
head(stats)
tail(stats)
head(stats,n=10)
str(stats)
summary(stats)


#Using $ sign
head(stats)
stats[3,3]
stats$Internet.users   #Accessing a column, same as 
                       #stats[,"Internet.users"]
levels(stats$Income.Group) #Returns vector of levels
