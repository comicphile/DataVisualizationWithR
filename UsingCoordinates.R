getwd()
setwd("C:\\Users\\imkri\\Documents\\R Repository")
mdata=read.csv("Movie-Ratings.csv")
colnames(mdata)<-c("Film","Genre","CriticRating","AudRating",
                   "BudgetMillions","Year")

library(ggplot2)
m<- ggplot(data=mdata,aes(x=CriticRating,y=AudRating,
                          colour=Genre))
m+geom_point()

m+geom_point()+xlim(50,100)+ylim(50,100)

n<-ggplot(data=mdata,aes(x=BudgetMillions,fill=Genre))
n+geom_histogram(binwidth=8,colour="Black")+xlim(0,50)+ylim(0,50)
#Cuts out important data that makes the visualizn incomplete

n+geom_histogram(binwidth=8,colour="Black")+coord_cartesian(ylim=c(0,50))


m+geom_point(aes(size=BudgetMillions))+geom_smooth()+
  facet_grid(Genre~Year)+coord_cartesian(ylim=c(0,100))
