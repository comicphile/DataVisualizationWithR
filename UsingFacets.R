v<- ggplot(data=mdata,aes(x=BudgetMillions))
v+geom_histogram(binwidth=8,aes(fill=Genre),
                 colour="Black") + 
  facet_grid(Genre~.,scales="free")


w<- ggplot(data=mdata,aes(x=CriticRating,y=AudRating,
                          colour=Genre))
w+geom_point(size=3)+facet_grid(Genre~.)
#Note that Genre marcation is on right

w+geom_point(size=3)+facet_grid(.~Year)
#Note that year marcation is on top

w+geom_point(size=3)+facet_grid(Genre~Year)
#Combined

w+geom_point(aes(size=BudgetMillions))+geom_smooth()+facet_grid(Genre~Year)
#to observe trend