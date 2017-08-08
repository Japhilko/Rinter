A <- array(1:100,c(4,25))
dim(A)
ncol(A)

B <- array(1:100,c(25,4))
dim(B)

apply(A,1,mean)
A2m <- apply(A,2,mean)

save(A2m,file="A2m.Rdata")

B1m <- apply(B,1,mean)
apply(B,2,mean)

dat <- data.frame(Mittelwert_1=A2m,
                  Mittelwert_2=B1m)

write.csv2(dat,file="dat.csv")

library(xtable)
xtable(dat)

library(knitr)
kable(dat)
