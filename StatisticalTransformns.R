t<- ggplot(data=mdata,aes(x=CriticRating,y=AudRating,
                          colour=Genre))
t+geom_point()+geom_smooth(fill=NA)

#Box Plot
u<- ggplot(data=mdata,aes(x=Genre,y=AudRating,
                          colour=Genre))
u+geom_boxplot(size=1.2)
u+geom_boxplot(size=1.2)+geom_jitter()
u+geom_jitter()+geom_boxplot(size=1.2,alpha=0.5)


v<- ggplot(data=mdata,aes(x=Genre,y=CriticRating,
                          colour=Genre))
v+geom_jitter()+geom_boxplot(size=1.2,alpha=0.5)
