# Laden Sie den oecd-Datensatz herunter und lesen 
# Sie ihn mit folgender Funktion ein:

link <- "https://raw.githubusercontent.com/Japhilko/IntroR/master/2015/data/oecd.csv"  
  
oecd <- read.csv(link)

# Überprüfen Sie die Dimensionen der OECD-Daten.

ncol(oecd)
nrow(oecd)
dim(oecd)


# Berechnen Sie die Mittelwerte und Varianzen 
# der einzelnen Variablen mit einem geeigneten 
# apply Befehl.

Varianzen <- vector()
Mittelwerte <- vector()

for(i in 1:ncol(oecd)){
  Varianzen[i] <- var(oecd[,i],na.rm=T)
  Mittelwerte[i] <- mean(oecd[,i],na.rm=T)
}
# In welchem Land waren die meisten Jugendlichen 
# mindestens zweimal betrunken (Spalte Alkohol)? 
ind <- which.max(oecd$Alkohol)
rownames(oecd)[ind]
rownames(oecd)[which.max(oecd$Alkohol)]
oecd$Ländernamen <- rownames(oecd)
oecd$Ländernamen[ind]
# Wie hoch ist der maximale Prozentsatz?
oecd$Alkohol[ind]
# In welchem Land ist die Sterblichkeit am 
# geringsten? Wie hoch ist sie in diesem Land?
ind2 <- which.min(oecd$Sterblichkeit)
rownames(oecd)[ind2]
oecd$Sterblichkeit[ind2]
# Erstellen Sie einen neuen Datensatz, der aufsteigend nach dem
oecd2 <- oecd[order(oecd$Einkommen),]

write.csv2(oecd2,file=paste(pfad,"oecd_dat.csv",sep="")
getwd()


apply(oecd,2,mean,na.rm=T)
apply(oecd,2,var,na.rm=T)
