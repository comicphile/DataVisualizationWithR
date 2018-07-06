ctr<-0
while(ctr<10){
  print("Hello")
  ctr<-ctr+1
}
x

for(i in 1:10){
  print("Hello")
}

rm(answer)
z<-rnorm(1)
if(z > 1){
  answer<-"Greater than 1"
}else if(z>=-1){
  answer<-"Between -1 & 1"
}else{
  answer<-"Less than -1"
}