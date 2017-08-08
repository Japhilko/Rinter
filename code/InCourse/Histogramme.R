library(mlmRev)
data(Chem97)
hist(Chem97$gcsescore)
hist(Chem97$gcsescore,col=1)
hist(Chem97$gcsescore,col=2)
hist(Chem97$gcsescore,
     col="purple")

tabScore <- table(Chem97$score)
barplot(tabScore)

x <- runif(100)
y <- rnorm(100)

plot(x,y,pch=20)
plot(x,y,pch=20,cex=4)
plot(x,y,pch=20,cex=4,
     col=rgb(0,0,1,.1))