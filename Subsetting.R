Games[1:3,6:10]
Games[c(1,10),]
Games[,c("2008","2010")]

is.matrix(Games[1,])  #True
is.vector(Games[1,])  #False

is.matrix(Games[1,,drop=F])  #True
