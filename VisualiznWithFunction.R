myplot<- function(mdata,rows=1:10){
  dataKB<- mdata[rows,,drop=F]
  matplot(t(dataKB),type="b",pch=15:18
          ,col=c(1:4,6))
  legend("bottomleft",inset=0.01,
         legend=Players[rows],pch=15:18,col=c(1:4,6)
         ,horiz=F,cex=0.5)
}

myplot(Salary,1:2)
