getwd()
setwd("C:\\Users\\imkri\\Documents\\R Repository\\Section6-Homework-Data")
mvdata<- read.csv("S6-HD.csv")

install.packages("extrafont")
library(extrafont)
font_import()

str(mvdata)
colnames(mvdata)
colnames(mvdata)<-c("Day.of.Week",            "Director",               "Genre",                  "Movie.Title",           
                     "Release.Date",           "Studio",                 "Adjusted.Gross.Mill", "Budget.Mill",        
                     "Gross.Mill",          "IM.Rating",            "ML.Rating",       "Overseas.Mill",      
                     "Overseas",              "Profit.Mill",         "Profit",                "Runtime.Min",         
                     "US.Mill",             "Gross.US" )
filter1<- mvdata$Genre=="action" | mvdata$Genre=="adventure" | mvdata$Genre=="animation" | mvdata$Genre=="comedy" | mvdata$Genre=="drama"
filter2<- mvdata$Studio=="Buena Vista Studios" | mvdata$Studio=="Fox" | mvdata$Studio=="Paramount Pictures" | mvdata$Studio=="Sony" | mvdata$Studio=="Universal" | mvdata$Studio=="WB"
#Alternative, filter2<- movie$Studio %in% c("Buena Vista Studios","Fox",..)
library(ggplot2)
a<- ggplot(data=mvdata[filter1 & filter2,],aes(y=Gross.US,x=Genre))
b<- a+geom_jitter(aes(colour=Studio,size=Budget.Mill))+geom_boxplot(size=1.2,alpha=0.5,outlier.colour = NA)
b+ggtitle("Domestic Gross % by Genre")+xlab("Genre")+ylab("Gross % US")+
  theme(axis.title.x = element_text(size=20,colour="Blue",family="Comic Sans MS"),
        axis.title.y = element_text(size=20,colour="Blue",family="Comic Sans MS"),
        plot.title = element_text(size=30,colour="Black",family="Comic Sans MS"),
        legend.title = element_text(family="Comic Sans MS"),
        legend.text = element_text(family="Comic Sans MS"),
        axis.text.x = element_text(family="Comic Sans MS"),
        axis.text.y = element_text(family="Comic Sans MS"),
        text=element_text(family="Comic Sans MS"))  #Sets font globally

b$labels$size<- "Budget $M"
