library(ggplot2)
?qplot()

stats
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(10))
qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(3),
      colour=I("blue"))
qplot(data=stats,x=Income.Group,y=Birth.rate,
      geom="boxplot")

?qplot
qplot(data=stats,x=Internet.users,y=Birth.rate,
      geom="point",size=I(3),colour=Income.Group,
      main="Internet Users vs Birth Rate",
      xlabel="Internet Users",ylabel="Birth Rate")
colnames(stats)
str(stats)
