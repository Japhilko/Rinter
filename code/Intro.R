#' ---
#' title: "Intro - Erste Schritte"
#' author: "Jan-Philipp Kolb"
#' date: "08 Mai 2017"
#' output:  md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
#' ## Pluspunkte von R
#' 
#' - Als Weg kreativ zu sein ...
#' - [Graphiken](http://www.sr.bham.ac.uk/~ajrs/R/r-gallery.html), Graphiken, Graphiken
#' - In Kombination mit anderen Programmen nutzbar
#' - Zur Verbindung von Datenstrukturen
#' - Zum Automatisieren
#' - Um die Intelligenz anderer Leute zu nutzen ;-)
#' - ...
#' 
#' ## Gründe
#' 
#' - R ist [frei verfügbar](https://www.r-project.org/). Es kann umsonst [runtergeladen](http://www.inside-r.org/why-use-r) werden.
#' - R ist eine Skriptsprache / [Popularität von R](http://blog.revolutionanalytics.com/popularity/)
#' 
#' ![](http://d287f0h5fel5hu.cloudfront.net/blog/wp-content/uploads/2013/06/bar-learn-r-img11.png)
#' 
#' 
#' ## [Ein Hauptgrund - die Community](http://blog.revolutionanalytics.com/2017/06/r-community.html)
#' 
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/RCommunity.PNG)
#' 
#' ## Möglichkeiten auf dem neuesten Stand zu sein
#' 
#' - [rweekly](https://rweekly.org/)
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/rweekly.PNG)
#' 
#' - [r-bloggers](https://www.r-bloggers.com/)
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/Rbloggers.PNG)
#' 
#' ## [Modularer Aufbau](http://stats.idre.ucla.edu/r/seminars/intro/)
#' 
#' ![](http://revolution-computing.typepad.com/.a/6a010534b1db25970b01bb086253c2970d-500wi)
#' 
#' 
#' ## [Viel genutzte Pakete](https://gallery.shinyapps.io/cran-gauge/)
#' 
#' ![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/CRANdownloads.PNG)
#' 
#' ## Organisation des Kurses
#' 
#' - Unterlagen sind komplett auf Github hinterlegt, damit man den Kurs gleich mitverfolgen kann (mehr dazu gleich)
#' - Es werden viele verschiedene kleine Beispieldatensätze verwendet um spezifische Dinge zu zeigen
#' - Alle Funktionen in R sind mit diesen kleinen Beispielen hinterlegt
#' - An geeigneten Stellen verwende ich auch größere (sozialwissenschaftliche) Datensätze
#' 
#' ## Dem Kurs folgen
#' 
#' - <http://japhilko.github.io/Rinter/>
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/RinterStartPage.PNG)
#' 
#' 
#' ## Das Wiki zum Kurs
#' 
#' - <https://github.com/Japhilko/Rinter/wiki>
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/WikiRinter.PNG)
#' 
#' ## Komplette Foliensätze
#' 
#' Die kompletten Foliensätze kann man hier herunterladen:
#' 
#' <https://github.com/Japhilko/Rinter/blob/master/pdf_slides/R_intern.pdf>
#' 
#' ## Der R-code
#' 
#' - Den R-code kann man direkt in die R-Konsole kopieren und ausführen.
#' - Begleitend zu den Folien wird meistens auch jeweils ein R-File angeboten. 
#' - Der R-code befindet sich in folgendem Ordner:
#' 
#' <https://github.com/Japhilko/RInter/tree/master/code>
#' 
#' 
#' ## Daten herunterladen
#' 
#' - Vereinzelt sind auch Datensätze vorhanden. 
#' 
#' - `.csv` Dateien können direkt von R eingelesen werden (wie das geht, werde ich noch zeigen).
#' 
#' - Wenn die `.csv` Dateien heruntergeladen werden sollen - den Raw Button verwenden.
#' 
#' - Alle anderen Dateien (bspw. `.RData`) auch mittels Raw Button herunterladen.
#' 
#' 
#' ## Ausdrucken
#' 
#' -   Zum Ausdrucken eignen sich die pdf-Dateien am besten. 
#' 
#' -   Diese können mit dem Raw Button heruntergeladen werden. 
#' 
#' ### Raw Button bei Github
#' 
#' ![Raw Button zum Download](https://raw.githubusercontent.com/Japhilko/GeoData/master/2016/slides/figure/GithubDownload.bmp)
#' 
#' ## Basis R ...
#' 
#' - Wenn man nur R herunterlädt und installiert, sieht das so aus:
#' - So habe ich bis 2012 mit R gearbeitet.
#' 
#' ![](http://i1.wp.com/www.rensenieuwenhuis.nl/wp-content/uploads/2008/11/2-r.jpg)
#' 
#' ## ... und Rstudio
#' 
#' - Rstudio bietet Heute sehr viel Unterstützung:
#' - und macht einige Themen dieses Workshops erst möglich
#' 
#' ![](http://rprogramming.net/wp-content/uploads/2012/10/RStudio-Screenshot.png)
#' 
#' 
#' ## Aufgabe - Vorbereitung
#' 
#' - Prüfen Sie, ob eine Version von R auf Rechner installiert ist.
#' - Falls dies nicht der Fall ist, laden Sie [R](r-project.org)  runter und installieren Sie R.
#' - Prüfen Sie, ob Rstudio installiert ist.
#' - Falls nicht - [Installieren](http://www.rstudio.com/) sie Rstudio.
#' - Laden Sie die R-Skripte von meinem GitHub-Account
#' - Erstellen Sie ein erstes Script und finden Sie das Datum mit dem Befehl `date()` und die R-version mit `sessionInfo()` heraus.
#' 
## ------------------------------------------------------------------------
date()

#' 
## ------------------------------------------------------------------------
sessionInfo()

#' 
