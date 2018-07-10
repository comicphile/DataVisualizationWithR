r<- ggplot(data=mdata,aes(x=BudgetMillions))
r+geom_histogram(binwidth = 10)
r+geom_histogram(binwidth = 10,fill="Red") #Setting
r+geom_histogram(binwidth = 10,aes(fill=Genre)) #Mapping

r+geom_histogram(binwidth = 10,aes(fill=Genre),
                 colour="Black")


r+geom_density()              #density function plot
r+geom_density(aes(fill=Genre))
r+geom_density(aes(fill=Genre),position="stack")
#for better visualization

#Starting layer tips
s<-ggplot(data=mdata,aes(x=AudRating))
s+geom_histogram(binwidth=8,fill="White",colour="Blue")

s<-ggplot(data=mdata) #alternative, gives more freedom
s+geom_histogram(aes(x=AudRating), binwidth=8,
                 fill="White",colour="blue") 
#normally distributed

s+geom_histogram(aes(x=CriticRating), binwidth=8,
                 fill="White",colour="blue")
#Uniformally distributed