library(lubridate)
max_timeout <- function(file_path){
  setwd("S:/Trading/Employees/pasta/R_Project/R_coding/")
  symbol <- read.csv(file = file_path)
  symbol$Czas <- paste(symbol$DateStamp, symbol$TimeStamp, sep = " ")
  symbol$Czas <- strptime(symbol$Czas, format ="%Y-%m-%d %H:%M:%S")
  for(i in seq_along(symbol$Czas)){
    if (symbol$DateStamp[i] == symbol$DateStamp[i+1]){
      symbol$Diff[i] <- difftime(symbol$Czas[i+1],symbol$Czas[i], units = "secs")
    }
    else{
      symbol$Diff[i] == 0
      next
    
  }
  sum_max <- aggregate(symbol$Diff ~  symbol$DateStamp, data = symbol, mean)
  return(sum_max)
}





tabela$Czas <- as.POSIXct((tabela$Czas), format = "%m/%d/%Y %H:%M:%S")

typeof(tabela$TimeStamp)

as.difftime(tabela[4,2],tabela[2,2], units = "secs")

tabela$Czas <- as.Date(tabela$Czas, format = "%m/%d/%Y %H:%M:%S")    


tabela$TimeStamp <- ms(tabela$TimeStamp)



for(i in seq_along(tabela$TimeStamp)){
  c[i] <- as.difftime(tabela$TimeStamp[i],tabela$TimeStamp[i+1])
}

as.difftime(tabela$TimeStamp[1],tabela$TimeStamp[2])




max_diff <- function(tabela){
  
  
  
}

tabela[3,2] - tabela[2,2]

as.difftime(tabela[3,2],tabela[2,2])
tabela[,1] strptime(tabela[,1], "%H:%M:%S")

seq_along(tabela$TimeStamp
          
          
          
          
          
          


sum_max <- aggregate(symbol$Diff, list(symbol$DateStamp), max)          
          
          
          
          
          
          
          