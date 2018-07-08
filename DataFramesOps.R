stats[3:7,]
stats[c(1,4),]  #subsetting

is.data.frame(stats[1,])
is.data.frame(stats[,1])
is.data.frame(stats[,1,drop=F])

stats$MyCal<- stats$Birth.rate * stats$Internet.users
summary(stats)

stats$new<- 1:5
head(stats$new,n=12)

stats$MyCal<- NULL
stats$xyz<- NULL   #Deleting columns

head(stats,n=3)
stats$new<- NULL
head(stats)

filter <- stats$Internet.users < 2
stats[filter,]
stats[stats$Birth.rate>40 & stats$Internet.users<2,]

stats[stats$Country.Name=="Malta",]
