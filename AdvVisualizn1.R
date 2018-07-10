getwd()
setwd("C:\\Users\\imkri\\Documents\\R Repository")
mdata<- read.csv("Movie-Ratings.csv")
head(mdata)
colnames(mdata)<-c("Film","Genre","CriticRating","AudRating",
                   "BudgetMillions","Year")
str(mdata)
summary(mdata)

mdata$Year <- factor(mdata$Year)
str(mdata)
library(ggplot2)

#Basic advanced visualization
ggplot(data=mdata,aes(x=CriticRating,y=AudRating,
                      colour=Genre,size=BudgetMillions))+
  geom_point()   #Aestethics and geometry

#Plotting with layers
p<-ggplot(data=mdata,aes(x=CriticRating,y=AudRating,
                        colour=Genre,size=BudgetMillions))

p+geom_point()
p+geom_line()

#Multiple layers
p+geom_line()+geom_point()

#Overriding aesthetics
p+geom_point(aes(size=CriticRating))
p+geom_point() #Reverts to original aesthetics
p+geom_point(aes(x=BudgetMillions))+xlab(
  "Budget in millions")
p+geom_line(size=1)+geom_point()


#Mapping vs Setting
q<- ggplot(data=mdata,aes(x=CriticRating,y=AudRating))
q+geom_point()

q+geom_point(aes(colour=Genre)) #Mapping colour
q+geom_point(colour="Red")      #Setting colour

q+geom_point(aes(size=BudgetMillions)) #Mapping colour
q+geom_point(size=8)      #Setting colour

