library(readstata13)

path <- "D:/GESIS/Workshops/Rintern/data"
setwd(path)

dat <- readstata13::read.dta13("ZA5666_v1-0-0_Stata14.dta")

attdat <- attributes(dat)
attdat$var.labels

length(attdat$label.table)
str(attdat$label.table)


str(dat$bazq020a)

dat$bazq020a <- as.numeric(dat$bazq020a)

dat2 <- dat

colnames(dat2)
dat2att <- attributes(dat2)

colnames(dat2) <- dat2att$var.labels

ind <- agrep(pattern = "Freizeit",
             x = colnames(dat2))

colnames(dat2)[ind]


ab <- 1:10

mean(ab)

ab[5] <- NA

mean(ab,na.rm =T)

ab[7] <- -99
mean(ab)

dat$MissingInfo <- "Fehlt Filterführung"
dat$MissingInfo[dat[,22]==-99] <- "Unit NR"


for (i in 1:ncol(dat)){
  if(is.numeric(dat[,i])){
    Daten[Daten[,i]==-99,i] <- NA  
  }
  
  
}


?which.max
save.image()
