<!--

## Wie bekommt man Hilfe 

- Foren, Blogs und SupportmÃ¶glichkeiten

-->
Wie bekommt man Hilfe?
----------------------

-   [Um generell Hilfe zu
    bekommen:](http://itfeature.com/tag/how-to-get-help-in-r)

<!-- -->

    help.start()

-   [Online Dokumentation fÃ¼r die meisten
    Funktionen:](https://www.r-project.org/help.html)

<!-- -->

    help(name)

-   Nutze ? um Hilfe zu bekommen.

<!-- -->

    ?mean

-   example(lm) gibt ein Beispiel fÃ¼r die lineare Regression

<!-- -->

    example(lm)

Vignetten
---------

-   Dokumente zur Veranschaulichung und ErlÃ¤uterung von Funktionen im
    Paket

<!-- -->

    browseVignettes()

Demos
-----

-   zu manchem Paketen gibt es Demonstrationen, wie der Code zu
    verwenden ist

<!-- -->

    demo()
    demo(nlm)

Die Funktion `apropos`
----------------------

-   sucht alles, was mit dem eingegebenen String in Verbindung steht

<!-- -->

    apropos("lm")

    ##   [1] ".__C__anova.glm"                  
    ##   [2] ".__C__anova.glm.null"             
    ##   [3] ".__C__diagonalMatrix"             
    ##   [4] ".__C__generalMatrix"              
    ##   [5] ".__C__glm"                        
    ##   [6] ".__C__glm.null"                   
    ##   [7] ".__C__glmerMod"                   
    ##   [8] ".__C__lm"                         
    ##   [9] ".__C__lMatrix"                    
    ##  [10] ".__C__lmerMod"                    
    ##  [11] ".__C__lmList4"                    
    ##  [12] ".__C__mlm"                        
    ##  [13] ".__C__nlmerMod"                   
    ##  [14] ".__C__optionalMethod"             
    ##  [15] ".__C__SpatialMultiPoints"         
    ##  [16] ".__C__SpatialMultiPointsDataFrame"
    ##  [17] ".__T__colMeans:base"              
    ##  [18] ".__T__getL:lme4"                  
    ##  [19] ".colMeans"                        
    ##  [20] ".lm.fit"                          
    ##  [21] "colMeans"                         
    ##  [22] "colMeans"                         
    ##  [23] "confint.lm"                       
    ##  [24] "contr.helmert"                    
    ##  [25] "contr.Helmert"                    
    ##  [26] "cv.lm"                            
    ##  [27] "CVlm"                             
    ##  [28] "dummy.coef.lm"                    
    ##  [29] "getAllMethods"                    
    ##  [30] "glm"                              
    ##  [31] "glm.control"                      
    ##  [32] "glm.convert"                      
    ##  [33] "glm.fit"                          
    ##  [34] "glm.nb"                           
    ##  [35] "glmer"                            
    ##  [36] "glmer.nb"                         
    ##  [37] "glmerControl"                     
    ##  [38] "glmerLaplaceHandle"               
    ##  [39] "glmFamily"                        
    ##  [40] "glmmPQL"                          
    ##  [41] "glmResp"                          
    ##  [42] "isGLMM"                           
    ##  [43] "isLMM"                            
    ##  [44] "isNLMM"                           
    ##  [45] "KalmanForecast"                   
    ##  [46] "KalmanLike"                       
    ##  [47] "KalmanRun"                        
    ##  [48] "KalmanSmooth"                     
    ##  [49] "kappa.lm"                         
    ##  [50] "lm"                               
    ##  [51] "lm.fit"                           
    ##  [52] "lm.gls"                           
    ##  [53] "lm.influence"                     
    ##  [54] "lm.ridge"                         
    ##  [55] "lm.wfit"                          
    ##  [56] "lmap"                             
    ##  [57] "lmap_at"                          
    ##  [58] "lmap_if"                          
    ##  [59] "lmdiags"                          
    ##  [60] "lmer"                             
    ##  [61] "lmerControl"                      
    ##  [62] "lmerResp"                         
    ##  [63] "lmList"                           
    ##  [64] "lmResp"                           
    ##  [65] "lmsreg"                           
    ##  [66] "lmwork"                           
    ##  [67] "loglm"                            
    ##  [68] "loglm1"                           
    ##  [69] "marginalModelPlot"                
    ##  [70] "marginalModelPlots"               
    ##  [71] "mkGlmerDevfun"                    
    ##  [72] "mkLmerDevfun"                     
    ##  [73] "model.matrix.lm"                  
    ##  [74] "nlm"                              
    ##  [75] "nlmer"                            
    ##  [76] "nlmerControl"                     
    ##  [77] "nlminb"                           
    ##  [78] "optimizeGlmer"                    
    ##  [79] "optimizeLmer"                     
    ##  [80] "panel.lmline"                     
    ##  [81] "predict.glm"                      
    ##  [82] "predict.lm"                       
    ##  [83] "prepanel.lmline"                  
    ##  [84] "rbind.SpatialMultiPoints"         
    ##  [85] "rbind.SpatialMultiPointsDataFrame"
    ##  [86] "residuals.glm"                    
    ##  [87] "residuals.lm"                     
    ##  [88] "rlm"                              
    ##  [89] "rollmax"                          
    ##  [90] "rollmax.default"                  
    ##  [91] "rollmaxr"                         
    ##  [92] "rollmean"                         
    ##  [93] "rollmean.default"                 
    ##  [94] "rollmeanr"                        
    ##  [95] "rollmedian"                       
    ##  [96] "rollmedian.default"               
    ##  [97] "rollmedianr"                      
    ##  [98] "salmonella"                       
    ##  [99] "sjp.glm"                          
    ## [100] "sjp.glmer"                        
    ## [101] "sjp.glmm"                         
    ## [102] "sjp.lm"                           
    ## [103] "sjp.lmer"                         
    ## [104] "sjp.lmm"                          
    ## [105] "sjt.glm"                          
    ## [106] "sjt.glmer"                        
    ## [107] "sjt.lm"                           
    ## [108] "sjt.lmer"                         
    ## [109] "SpatialMultiPoints"               
    ## [110] "SpatialMultiPointsDataFrame"      
    ## [111] "summary.glm"                      
    ## [112] "summary.lm"                       
    ## [113] "svyglm"                           
    ## [114] "updateGlmerDevfun"                
    ## [115] "USRegionalMortality"

-   man kann das auch in Verbindung mit regulÃ¤ren AusdrÃ¼cken verwenden

<!-- -->

    ?"regular expression"

    help.search("^glm")

[Suchmaschine fÃ¼r die R-Seite](http://search.r-project.org/cgi-bin/namazu.cgi?query=glm&max=20&result=normal&sort=score&idxname=functions&idxname=vignettes&idxname=views)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    RSiteSearch("glm")

Nutzung Suchmaschinen
---------------------

-   Ich nutze meistens google
-   Tippe:

<!-- -->

    R-project + Was ich schon immer wissen wollte

-   Das funktioniert natÃ¼rlich mit jeder Suchmaschine!

[Stackoverflow](http://stackoverflow.com/)
------------------------------------------

-   FÃ¼r Fragen zum Programmieren
-   [Ist nicht auf R fokussiert, es gibt aber viele Diskussionen zu
    R](https://stackoverflow.com/tags/r/info)
-   Sehr detailierte Diskussionen

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/StackoverflowEx.PNG?raw=true)

[Quick R](http://www.statmethods.net/interface/help.html)
---------------------------------------------------------

### Quick R

-   Eine Seite mit Beispielen und Hilfe zu einem Thema
-   Beispiel: [Quick R - Getting
    Help](http://www.statmethods.net/interface/help.html)

### Weitere Links

-   [Ãœbersicht - Hilfe bekommen in
    R](https://www.r-project.org/help.html)

-   [Eine Liste mit HowTo\`s](http://rprogramming.net/)

-   [Eine Liste der wichtigsten
    R-Befehle](https://www.personality-project.org/r/r.commands.html)

Ein Schummelzettel - Cheatsheet
-------------------------------

<https://www.rstudio.com/resources/cheatsheets/>

![](https://github.com/Japhilko/IntroR/blob/master/2017/slides/figure/cheatsheetBaseR.PNG?raw=true)
