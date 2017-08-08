
library(datasets)
data("VADeaths")

vad <- VADeaths
?barplot
barplot(VADeaths)
barplot(VADeaths,beside=T)
barplot(VADeaths,beside=T,
        col=1:5)


