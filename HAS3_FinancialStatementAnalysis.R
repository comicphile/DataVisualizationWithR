revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

profit<- revenue-expenses             #profit

pat<- round(0.7*profit,2)              #profit after tax

profit_mgn<- round((pat/revenue)*100)  #profit margin

pat_mean<-round(mean(pat),2)

isGM<- rep(F,12)                #Logical vector for good months
isBM<- rep(F,12)                #Logical vector for bad months
pat_best=0
pat_worst=10000
best=0                          #stores best month index
worst=0                         #stores worst month index
for(i in seq(1,12)){
  if(pat[i]>pat_mean){
    isGM[i]=T
  }else if(pat[i]<pat_mean){
    isBM[i]=T
  }
  if(pat[i]>pat_best){
    pat_best=pat[i]
    best=i
  }
  if(pat[i]<pat_worst){
    pat_worst=pat[i]
    worst=i
  }
}

profit_final<- round(profit/1000,2)   #formatted profit vector
pat_final<- round(pat/1000,2)         #formatted pat vector
