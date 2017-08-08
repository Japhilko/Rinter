ab <- sample(1:10,100,replace=T)

ab[c(5,20,56)]<- NA

abc <- rep(0,length(ab))
abc[ab>=5] <- 1
library(dummies)

data.frame(ab,abc)


