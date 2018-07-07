MyFirstVector<- c(12,15,17,19)
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

v1<- c("a","bc","def",7)
is.character(v1)

seq(1,15)
v2<- seq(1,15,2)
v3<- rep("m",4)

v1[-1]
v1[1:3]
v1[-2]
v1[c(1,2,3)]
v1[-3:-4]
v1[5]
