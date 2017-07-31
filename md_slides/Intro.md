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

GrÃ¼nde
-------

-   R ist [frei verfÃ¼gbar](https://www.r-project.org/). Es kann umsonst
    [runtergeladen](http://www.inside-r.org/why-use-r) werden.
-   R ist eine Skriptsprache / [PopularitÃ¤t von
    R](http://blog.revolutionanalytics.com/popularity/)

![](http://d287f0h5fel5hu.cloudfront.net/blog/wp-content/uploads/2013/06/bar-learn-r-img11.png)

[Ein Hauptgrund - die Community](http://blog.revolutionanalytics.com/2017/06/r-community.html)
----------------------------------------------------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/RCommunity.PNG)

MÃ¶glichkeiten auf dem neuesten Stand zu sein
---------------------------------------------

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
-   Es werden viele verschiedene kleine BeispieldatensÃ¤tze verwendet um
    spezifische Dinge zu zeigen
-   Alle Funktionen in R sind mit diesen kleinen Beispielen hinterlegt
-   An geeigneten Stellen verwende ich auch
    grÃ¶ÃŸere (sozialwissenschaftliche) DatensÃ¤tze

Dem Kurs folgen
---------------

-   <http://japhilko.github.io/Rinter/>

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/RinterStartPage.PNG)

Das Wiki zum Kurs
-----------------

-   <https://github.com/Japhilko/Rinter/wiki>

![](https://raw.githubusercontent.com/Japhilko/Rinter/master/figure/WikiRinter.PNG)

Komplette FoliensÃ¤tze
----------------------

Die kompletten FoliensÃ¤tze kann man hier herunterladen:

<https://github.com/Japhilko/Rinter/blob/master/pdf_slides/R_intern.pdf>

Der R-code
----------

-   Den R-code kann man direkt in die R-Konsole kopieren und ausfÃ¼hren.
-   Begleitend zu den Folien wird meistens auch jeweils ein
    R-File angeboten.
-   Der R-code befindet sich in folgendem Ordner:

<https://github.com/Japhilko/RInter/tree/master/code>

Daten herunterladen
-------------------

-   Vereinzelt sind auch DatensÃ¤tze vorhanden.

-   `.csv` Dateien kÃ¶nnen direkt von R eingelesen werden (wie das geht,
    werde ich noch zeigen).

-   Wenn die `.csv` Dateien heruntergeladen werden sollen - den Raw
    Button verwenden.

-   Alle anderen Dateien (bspw. `.RData`) auch mittels Raw
    Button herunterladen.

Ausdrucken
----------

-   Zum Ausdrucken eignen sich die pdf-Dateien am besten.

-   Diese kÃ¶nnen mit dem Raw Button heruntergeladen werden.

### Raw Button bei Github

![Raw Button zum
Download](https://raw.githubusercontent.com/Japhilko/GeoData/master/2016/slides/figure/GithubDownload.bmp)

Basis R ...
-----------

-   Wenn man nur R herunterlÃ¤dt und installiert, sieht das so aus:
-   So habe ich bis 2012 mit R gearbeitet.

![](http://i1.wp.com/www.rensenieuwenhuis.nl/wp-content/uploads/2008/11/2-r.jpg)

... und Rstudio
---------------

-   Rstudio bietet Heute sehr viel UnterstÃ¼tzung:
-   und macht einige Themen dieses Workshops erst mÃ¶glich

![](http://rprogramming.net/wp-content/uploads/2012/10/RStudio-Screenshot.png)

Aufgabe - Vorbereitung
----------------------

-   PrÃ¼fen Sie, ob eine Version von R auf Rechner installiert ist.
-   Falls dies nicht der Fall ist, laden Sie [R](r-project.org) runter
    und installieren Sie R.
-   PrÃ¼fen Sie, ob Rstudio installiert ist.
-   Falls nicht - [Installieren](http://www.rstudio.com/) sie Rstudio.
-   Laden Sie die R-Skripte von meinem GitHub-Account
-   Erstellen Sie ein erstes Script und finden Sie das Datum mit dem
    Befehl `date()` und die R-version mit `sessionInfo()` heraus.

<!-- -->

    ## [1] "Mon Jul 31 14:17:17 2017"

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
    ## [1] tools     grid      stats     graphics  grDevices utils     datasets 
    ## [8] methods   base     
    ## 
    ## other attached packages:
    ##  [1] AER_1.2-5          sandwich_2.3-4     lmtest_0.9-35     
    ##  [4] zoo_1.7-14         psych_1.7.3.21     sjPlot_2.3.1      
    ##  [7] gridExtra_2.2.1    MASS_7.3-47        faraway_1.0.7     
    ## [10] HSAUR_1.3-7        survey_3.31-5      survival_2.40-1   
    ## [13] visreg_2.3-0       DAAG_1.22          lattice_0.20-35   
    ## [16] sp_1.2-4           leaflet_1.0.1      magrittr_1.5      
    ## [19] ggmap_2.6.1        RColorBrewer_1.1-2 haven_1.0.0       
    ## [22] car_2.1-4          forcats_0.2.0      purrr_0.2.2       
    ## [25] readr_1.0.0        tidyr_0.6.1        tibble_1.3.0      
    ## [28] ggplot2_2.2.1      tidyverse_1.1.1    dplyr_0.5.0       
    ## [31] beanplot_1.2       vioplot_0.2        sm_2.2-5.4        
    ## [34] mlmRev_1.0-6       lme4_1.1-13        Matrix_1.2-7.1    
    ## [37] knitr_1.15.1       readstata13_0.9.0  foreign_0.8-67    
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] TH.data_1.0-8       minqa_1.2.4         colorspace_1.3-2   
    ##  [4] rjson_0.2.15        modeltools_0.2-21   rprojroot_1.1      
    ##  [7] MatrixModels_0.4-1  DT_0.2              mvtnorm_1.0-6      
    ## [10] lubridate_1.6.0     coin_1.1-3          xml2_1.1.0         
    ## [13] codetools_0.2-15    splines_3.3.2       mnormt_1.5-5       
    ## [16] sjmisc_2.4.0        effects_3.1-2       Formula_1.2-1      
    ## [19] jsonlite_1.4        nloptr_1.0.4        pbkrtest_0.4-6     
    ## [22] broom_0.4.2         png_0.1-7           shiny_1.0.0        
    ## [25] mapproj_1.2-4       httr_1.2.1          sjstats_0.10.0     
    ## [28] backports_1.0.4     assertthat_0.1      lazyeval_0.2.0     
    ## [31] htmltools_0.3.5     quantreg_5.29       coda_0.19-1        
    ## [34] gtable_0.2.0        reshape2_1.4.2      merTools_0.3.0     
    ## [37] maps_3.1.1          Rcpp_0.12.9         nlme_3.1-128       
    ## [40] stringr_1.2.0       proto_1.0.0         rvest_0.3.2        
    ## [43] mime_0.5            stringdist_0.9.4.4  scales_0.4.1       
    ## [46] hms_0.3             parallel_3.3.2      SparseM_1.74       
    ## [49] yaml_2.1.14         geosphere_1.5-5     latticeExtra_0.6-28
    ## [52] stringi_1.1.2       highr_0.6           blme_1.0-4         
    ## [55] RgoogleMaps_1.4.1   arm_1.9-3           evaluate_0.10      
    ## [58] labeling_0.3        htmlwidgets_0.8     plyr_1.8.4         
    ## [61] R6_2.2.0            multcomp_1.4-6      DBI_0.5-1          
    ## [64] mgcv_1.8-15         abind_1.4-5         nnet_7.3-12        
    ## [67] modelr_0.1.0        rmarkdown_1.3       jpeg_0.1-8         
    ## [70] readxl_0.1.1        digest_0.6.11       xtable_1.8-2       
    ## [73] httpuv_1.3.3        stats4_3.3.2        munsell_0.4.3
