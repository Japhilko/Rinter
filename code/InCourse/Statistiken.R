1+2
library(AER)


b <- c(1,2,3,4,5)
mean(b)
var(b)
sd(b)
sqrt(mean(b))




ab <- c(1,2,3,"Hallo")

substr(ab,1,1)
substr(x=ab,start=1,stop=1)
?substr

mean(nchar(ab))

numV <- c(1,2,3)
logV <- c(TRUE,T,F)
str(logV)
str(numV)
chV <- c("hallo","Welt","rr11")
str(chV)

substr(numV,1,1)


ab[c(1,4)]

ab[1,4]


paste("A",
      1:6,
      sep="_")


PATH <- "D:/Eigene Dateien/Dokumente/GitHub/Rinter/data"

getwd()
setwd(PATH)


foreign::read.dta()


dat <- read.csv("data/oecd.csv")

