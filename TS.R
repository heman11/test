install.packages("devtools")
install.packages("RCurl")
install.packages("TTR")

library(TTR)

data("AirPassengers")
AirP=AirPassengers

Airts=ts(AirP)
plot.ts(Airts)

decAir=decompose(AirP)
plot(decAir)

boxplot(AirPassengers~cycle(AirPassengers))

AirPassengers


value <- SMA(AirPassengers,n=3) 
plot.ts(value)
