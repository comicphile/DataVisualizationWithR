N<-10
while(N<=10000){
  i<-1
  ctr<-0
  while(i<=N){
    x<-rnorm(1)
    #print(x)
    if(x>=-1 & x<=1){
      ctr=ctr+1
    }
    i=i+1
  }
  x_n=(ctr/N)*100
  #print(ctr)
  print(N)
  print(x_n)
  N=N*10
}