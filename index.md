Gliederung
==========

Einführung
----------

-   [Einführung und Motivation](md_slides/Basisgrafiken.md)
-   [Erste Schritte mit R](md_slides/ersteSchritte.md)
-   [Wie bekommt man Hilfe?](md_slides/)
-   [Modularer Aufbau](md_slides/R-Pakete.md)
-   [Datenimport](md_slides/Datenimport.md)
-   [Datenaufbereitung](md_slides/Datenaufbereitung.md)
-   [Datenexport](md_slides/Datenexport.md)

Liebe auf den ersten Plot – Grafiken und Datenanalyse mit R
-----------------------------------------------------------

-   [Basisgrafiken](md_slides/Basisgrafiken.md)
-   [Datenanalyse](md_slides/Datenanalyse.md)
-   [Grafiken und Zusammenhang](md_slides/Zusammenhang.md)
-   [Das lattice Paket](md_slides/LatticeGraphiken.md)  
-   [ggplot und ggmap](md_slides/ggplot2.md)

Regression mit R
----------------

-   [Die lineare Regression](md_slides/lineareRegression.md)  
-   [Die logistische Regression](md_slides/logistischeRegression.md) -
    [Mehrebenenmodelle](md_slides/Multilevel.md)

Präsentation von Daten - Reproducible Research
----------------------------------------------

-   [Word Dokumente mit R erstellen](md_slides/R2word.md)
-   [PDF Dokumente und Präsentationen mit LaTeX, Beamer und
    Sweave](md_slides/R2pdf.md)
-   [HTML Dokumente, Präsentationen und Dashboards mit
    Rmarkdown](md_slides/Rmarkdown.md)
-   [Notebooks](md_slides/Notebooks.md) zur Integration von anderen
    Programmiersprachen (Python,LaTeX,Julia)

Interaktive Darstellung mit Javascript und R
--------------------------------------------

-   [Interaktive Tabellen mit
    DataTables](md_slides/InteraktiveTabellen.md)
-   [Interaktive Karten mit dem Javascript Paket
    leaflet](md_slides/InteraktiveKarten.md)

![](figure/Trennlinie.png)

Einführung und Motivation
=========================

Pluspunkte von R
----------------

-   Als Weg kreativ zu sein ...
-   [Graphiken](http://www.sr.bham.ac.uk/~ajrs/R/r-gallery.html),
    Graphiken, Graphiken
-   In Kombination mit anderen Programmen nutzbar
-   Zur Verbindung von Datenstrukturen
-   Zum Automatisieren
-   Um die Intelligenz anderer Leute zu nutzen ;-)
-   ...

Gründe
------

-   R ist [frei verfügbar](https://www.r-project.org/). Es kann umsonst
    [runtergeladen](http://www.inside-r.org/why-use-r) werden.
-   R ist eine Skriptsprache / [Popularität von
    R](http://blog.revolutionanalytics.com/popularity/)

![](http://d287f0h5fel5hu.cloudfront.net/blog/wp-content/uploads/2013/06/bar-learn-r-img11.png)

[Ein Hauptgrund - die Community](http://blog.revolutionanalytics.com/2017/06/r-community.html)
----------------------------------------------------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/RCommunity.PNG)

Möglichkeiten auf dem neuesten Stand zu sein
--------------------------------------------

-   [rweekly](https://rweekly.org/)

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/rweekly.PNG)

-   [r-bloggers](https://www.r-bloggers.com/)

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/Rbloggers.PNG)

[Modularer Aufbau](http://stats.idre.ucla.edu/r/seminars/intro/)
----------------------------------------------------------------

![](http://revolution-computing.typepad.com/.a/6a010534b1db25970b01bb086253c2970d-500wi)

[Viel genutzte Pakete](https://gallery.shinyapps.io/cran-gauge/)
----------------------------------------------------------------

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/CRANdownloads.PNG)

Organisation des Kurses
-----------------------

-   Unterlagen sind komplett auf Github hinterlegt, damit man den Kurs
    gleich mitverfolgen kann (mehr dazu gleich)
-   Es werden viele verschiedene kleine Beispieldatensätze verwendet um
    spezifische Dinge zu zeigen
-   Alle Funktionen in R sind mit diesen kleinen Beispielen hinterlegt
-   An geeigneten Stellen verwende ich auch
    größere (sozialwissenschaftliche) Datensätze

Dem Kurs folgen
---------------

-   <http://japhilko.github.io/Rinter/>

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/RinterStartPage.PNG)

Das Wiki zum Kurs
-----------------

-   <https://github.com/Japhilko/Rinter/wiki>

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/WikiRinter.PNG)

Komplette Foliensätze
---------------------

Die kompletten Foliensätze kann man hier herunterladen:

<https://github.com/Japhilko/Rinter/blob/master/pdf_slides/R_intern.pdf>

Der R-code
----------

-   Den R-code kann man direkt in die R-Konsole kopieren und ausführen.
-   Begleitend zu den Folien wird meistens auch jeweils ein
    R-File angeboten.
-   Der R-code befindet sich in folgendem Ordner:

<https://github.com/Japhilko/RInter/tree/master/code>

Daten herunterladen
-------------------

-   Vereinzelt sind auch Datensätze vorhanden.

-   `.csv` Dateien können direkt von R eingelesen werden (wie das geht,
    werde ich noch zeigen).

-   Wenn die `.csv` Dateien heruntergeladen werden sollen - den Raw
    Button verwenden.

-   Alle anderen Dateien (bspw. `.RData`) auch mittels Raw
    Button herunterladen.

Ausdrucken
----------

-   Zum Ausdrucken eignen sich die pdf-Dateien am besten.

-   Diese können mit dem Raw Button heruntergeladen werden.

### Raw Button bei Github

![Raw Button zum
Download](https://raw.githubusercontent.com/Japhilko/GeoData/master/2016/slides/figure/GithubDownload.bmp)

Basis R ...
-----------

-   Wenn man nur R herunterlädt und installiert, sieht das so aus:
-   So habe ich bis 2012 mit R gearbeitet.

![](http://i1.wp.com/www.rensenieuwenhuis.nl/wp-content/uploads/2008/11/2-r.jpg)

... und Rstudio
---------------

-   Rstudio bietet Heute sehr viel Unterstützung:
-   und macht einige Themen dieses Workshops erst möglich

![](http://rprogramming.net/wp-content/uploads/2012/10/RStudio-Screenshot.png)

Aufgabe - Vorbereitung
----------------------

-   Prüfen Sie, ob eine Version von R auf Rechner installiert ist.
-   Falls dies nicht der Fall ist, laden Sie [R](r-project.org) runter
    und installieren Sie R.
-   Prüfen Sie, ob Rstudio installiert ist.
-   Falls nicht - [Installieren](http://www.rstudio.com/) sie Rstudio.
-   Laden Sie die R-Skripte von meinem GitHub-Account
-   Erstellen Sie ein erstes Script und finden Sie das Datum mit dem
    Befehl `date()` und die R-version mit `sessionInfo()` heraus.

<!-- -->

    ## [1] "Mon Jul 31 14:43:30 2017"

    ## R version 3.3.2 (2016-10-31)
    ## Platform: x86_64-w64-mingw32/x64 (64-bit)
    ## Running under: Windows 7 x64 (build 7601) Service Pack 1
    ## 
    ## locale:
    ## [1] LC_COLLATE=German_Germany.1252  LC_CTYPE=German_Germany.1252   
    ## [3] LC_MONETARY=German_Germany.1252 LC_NUMERIC=C                   
    ## [5] LC_TIME=German_Germany.1252    
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] backports_1.0.4 magrittr_1.5    rprojroot_1.1   tools_3.3.2    
    ##  [5] htmltools_0.3.5 yaml_2.1.14     Rcpp_0.12.9     stringi_1.1.2  
    ##  [9] rmarkdown_1.3   knitr_1.15.1    stringr_1.2.0   digest_0.6.11  
    ## [13] evaluate_0.10
