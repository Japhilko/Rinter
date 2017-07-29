#' ---
#' title: "Datenimport"
#' author: "Jan-Philipp Kolb"
#' date: "12 Juni 2017"
#' output: beamer_presentation
#' ---
#' 
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,message=F,warning=F)

#' 
#' 
#' ## Datenimport
#' 
#' ![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/Datenimport.PNG)
#' 
#' 
#' ## Dateiformate in R
#' 
#' -  Von R werden quelloffene, nicht-proprietäre Formate bevorzugt
#' -  Es können aber auch Formate von anderen Statistik Software Paketen eingelesen werden
#' -  R-user speichern Objekte gerne in sog. Workspaces ab
#' -  Auch hier jedoch gilt: (fast) alles andere ist möglich
#' 
#' ## Formate - base package
#' 
#' R unterstützt von Haus aus schon einige wichtige Formate:
#' 		
#' -  CSV (Comma Separated Values): `read.csv()`
#' -  FWF (Fixed With Format): `read.fwf()`
#' -  Tab-getrennte Werte: `read.delim()`
#' 
#' ## Datenimport leicht gemacht mit Rstudio
#' 
#' ![Import Button](https://i1.wp.com/thepracticalr.files.wordpress.com/2017/01/rstudio-old-import.png?w=456&ssl=1)
#' 
#' 
#' ## Der Arbeitsspeicher
#' 
#' So findet man heraus, in welchem Verzeichnis man sich gerade befindet
#' 
## ----eval=F--------------------------------------------------------------
## getwd()

#' 
#' Und ändert dann den Pfad mit setwd()
#' 
## ----eval=F--------------------------------------------------------------
## setwd("C:/")

#' 
#' 
#' Man erzeugt ein Objekt in dem man den Pfad abspeichert:
#' 
## ----eval=F--------------------------------------------------------------
## main.path <- "C:/" # Beispiel für Windows
## main.path <- "/users/Name/" # Beispiel für Mac
## main.path <- "/home/user/" # Beispiel für Linux

#' 
#' 
#' Bei Windows ist es wichtig Slashs anstelle von Backslashs zu verwenden.
#' 
#' ## Alternative - Arbeitsspeicher
#' 
#' ![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/SetWD.png)
#' 
#' 
#' 
#' ## Import von Excel-Daten
#' 
#' -  `library(foreign)` ist für den Import von fremden Datenformaten nötig
#' -  Wenn Excel-Daten vorliegen - als .csv abspeichern
#' -  Dann kann `read.csv()` genutzt werden um die Daten einzulesen.
#' - Bei Deutschen Daten kann es sein, dass man `read.csv2()` wegen der Komma-Separierung braucht.
#' 
## ----eval=F--------------------------------------------------------------
## library(foreign)
## ?read.csv
## ?read.csv2

#' 
#' ## CSV Dateien einlesen
#' 
#' Zunächst muss das Arbeitsverzeichnis gesetzt werden, in dem sich die Daten befinden:
#' 
## ----eval=F--------------------------------------------------------------
## Dat <- read.csv("schuldaten_export.csv")

#' 
#' Wenn es sich um Deutsche Daten handelt:
#' 
## ----eval=F--------------------------------------------------------------
## Dat <- read.csv2("schuldaten_export.csv")

#' 
#' 
#' ## CSV aus dem Web einladen
#' 
#' - Datensatz:
#' 
#' <https://data.montgomerycountymd.gov/api/views/6rqk-pdub/rows.csv?accessType=DOWNLOAD>
#' 
#' - [Datenimport mit Rstudio](https://support.rstudio.com/hc/en-us/articles/218611977-Importing-Data-with-RStudio)
#' 
#' ![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/ImportCSVPNG.PNG)
#' 
#' <!--
#' # https://support.spatialkey.com/spatialkey-sample-csv-data/
#' # https://datahub.io/dataset/sociallink
#' # https://datahub.io/dataset/a35a67a2-52ef-48d7-bba5-acf06a26338d/resource/419b1cbd-9674-40bf-ad62-776b348e0b8e/download/arabicroots.csv
#' -->
#' 
## ----eval=F,echo=F-------------------------------------------------------
## library(readstata13)
## oecd <- read_stata("https://github.com/Japhilko/IntroR/blob/master/2017/data/oecd.dta")

#' 
#' 
#' 
#' ## Das Paket `readr`
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("readr")

#' 
## ------------------------------------------------------------------------
library(readr)

#' 
#' - [`readr` auf dem Rstudio Blogg](https://blog.rstudio.org/2015/10/28/readr-0-2-0/)
#' 
#' 
#' 
#' ## Import von Excel-Daten
#' 
#' -  `library(readr)` ist für den Import von fremden Datenformaten hilfreich
#' -  Wenn Excel-Daten vorliegen - als .csv abspeichern
#' 
#' ### Beispiel Weltkulturerbestätten
#' 
## ------------------------------------------------------------------------
url<-"https://raw.githubusercontent.com/Japhilko/GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 

#' 
#' 
#' ## Der Beispieldatensatz
#' 
## ----echo=F,eval=F-------------------------------------------------------
## head(data.frame(whcSites$name_en,whcSites$category))

#' 
#' ![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/OverviewWHC.PNG)
#' 
#' ## Das Paket `haven`
#' 
#' > Import and Export 'SPSS', 'Stata' and 'SAS' Files
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("haven")

#' 
## ------------------------------------------------------------------------
library(haven)

#' 
#' - [Das R-Paket `haven` auf dem Rstudio Blogg](https://blog.rstudio.org/2016/10/04/haven-1-0-0/)
#' 
#' 
#' ## SPSS Dateien einlesen
#' 
#' - Zunächst muss wieder der Pfad zum Arbeitsverzeichnis angeben werden.
#' - SPSS-Dateien können auch direkt aus dem Internet geladen werden:
#' 
## ----eval=F--------------------------------------------------------------
## library(haven)
## mtcars <- read_sav(
## "https://github.com/Japhilko/RInterfaces/raw/master/
## data/mtcars.sav")

#' 
#' 
#' 
#' ## `foreign` kann ebenfalls zum Import genutzt werden
#' 
## ----eval=F--------------------------------------------------------------
## library(foreign)
## link<- "http://www.statistik.at/web_de/static/
## mz_2013_sds_-_datensatz_080469.sav"
## 
## ?read.spss
## Dat <- read.spss(link,to.data.frame=T)

#' 
#' ## stata Dateien einlesen
#' 
## ----eval=F--------------------------------------------------------------
## library(haven)
## oecd <- read_dta("https://github.com/Japhilko/IntroR/
##                  raw/master/2017/data/oecd.dta")

#' 
#' - Einführung in Import mit R ([is.R](http://is-r.tumblr.com/post/37181850668/reading-writing-stata-dta-files-with-foreign))
#' 
#' ## Das Paket `readstata13`
#' 
#' 
## ----eval=F--------------------------------------------------------------
## # install.packages("readstata13")

#' 
## ----eval=F--------------------------------------------------------------
## library(readstata13)
## ?read.dta13

#' 
#' 
#' 
#' ## [Das Paket `rio`](https://cran.r-project.org/web/packages/rio/vignettes/rio.html)
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("rio")

#' 
## ----eval=F--------------------------------------------------------------
## library("rio")
## x <- import("mtcars.csv")
## y <- import("mtcars.rds")
## z <- import("mtcars.dta")

#' 
#' - [rio: A Swiss-Army Knife for Data I/O](https://cran.r-project.org/web/packages/rio/README.html)
#' 
#' <!--
#' ## Datenmanagement ähnlich wie in SPSS oder Stata
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("Rz")
## library(Rz)

#' -->
#' 
#' ## [Weitere Alternative Rcmdr](https://cran.r-project.org/web/packages/Rcmdr/index.html)
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("Rcmdr")

#' 
#' - [Funktioniert auch mit Rstudio](http://www.rcommander.com/)
#' 
## ----eval=F--------------------------------------------------------------
## library(Rcmdr)

#' 
#' ![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/Rcommander.PNG)
#' 
#' ## Die Gesis Panel Daten
#' 
#' ![](https://www.questback.com/de/assets/images/content/gesis_panel_logo_web.jpg)
#' 
#' - [Gesis Panel Campus File](http://www.gesis.org/gesis-panel/data/gesis-panel-campus-file/)
#' 
#' - [Codebuch für die Gesis Panel Daten im DBK](https://dbk.gesis.org/dbksearch/SDesc2.asp?ll=10&notabs=&af=&nf=&search=gesis%20panel&search2=&db=D&no=5665)
#' 
#' 
#' ## Aufgabe
#' 
#' - Gehen Sie auf meine Github Seite
#' 
#' <https://github.com/Japhilko/RSocialScience/tree/master/data>
#' 
#' - Importieren Sie den Datensatz `GPanel.dta`
#' 
