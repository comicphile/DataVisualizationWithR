data<- MinutesPlayed[1:3,]

matplot(t(data),type="b",pch=15:18
        ,col=c(1:4,6))
legend("bottomleft",inset=0.01,
       legend=Players[1:3],pch=15:18,col=c(1:4,6)
       ,horiz=F,cex=0.5)

dataKB<- MinutesPlayed[1,,drop=F]
matplot(t(dataKB),type="b",pch=15:18
        ,col=c(1:4,6))
legend("bottomleft",inset=0.01,
       legend=Players[1],pch=15:18,col=c(1:4,6)
       ,horiz=F,cex=0.5)