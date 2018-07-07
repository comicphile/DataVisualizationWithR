mydata<-seq(1,12)

A<- matrix(mydata,3,4)
A
B<- matrix(mydata,3,4,byrow=T)
B

r1<- c(1,2,3,4)
r2<- c(5,6,7,8)
r3<- c(9,10,11,12)
C<- rbind(r1,r2,r3)
D<- cbind(r1,r2,r3)
C
D

V<-1:5
names(V)<- c("P","Q","R","S","T")
V["S"]
names(V)<- NULL
V

temp<- rep(c("M","N","O"),each=3)
mat<-matrix(temp,3,3)
mat
rownames(mat)<-c("R1","R2","R3")
colnames(mat)<- c("C1","C2","C3")
mat["R1","C2"]
