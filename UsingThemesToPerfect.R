o<- ggplot(data=mdata,aes(x=BudgetMillions))
p<-o+geom_histogram(binwidth=8,aes(fill=Genre),colour="Black")
p
p+xlab("Money Axis")+ylab("No. of movies")

#label formatting
p+xlab("Money Axis")+ylab("No. of movies")+
  theme(axis.title.x = element_text(colour="DarkGreen",size=30),
        axis.title.y = element_text(colour="Red",size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20))
#to increase size of & colour label and increase size of tickers


#Legend formatting
p+xlab("Money Axis")+ylab("No. of movies")+
  ggtitle("Movie Budget Distribution")+
  theme(axis.title.x = element_text(colour="DarkGreen",size=30),
        axis.title.y = element_text(colour="Red",size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        legend.title =element_text(size=30),
        legend.text = element_text(size=20),
        legend.position=c(1,1),
        legend.justification=c(1,1),
        plot.title=element_text(colour="DarkBlue",size=40,
                                family="Courier"))
