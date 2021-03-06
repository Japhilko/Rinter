Das Paket `ggplot2`
-------------------

-   Entwickelt von Hadley Wickham
-   Viele Informationen unter:
-   <http://ggplot2.org/>
-   Den Graphiken liegt eine eigene Grammitik zu Grunde

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/GalleryGGplot2.PNG)

Das Paket `ggplot2` installieren und laden
------------------------------------------

-   [BasiseinfÃ¼hrung
    `ggplot2`](www.r-bloggers.com/basic-introduction-to-ggplot2/)

<!-- -->

    install.packages("ggplot2")

    library(ggplot2)

Der `diamonds` Datensatz
------------------------

    head(diamonds)

<table>
<thead>
<tr class="header">
<th align="right">carat</th>
<th align="left">cut</th>
<th align="left">color</th>
<th align="left">clarity</th>
<th align="right">depth</th>
<th align="right">table</th>
<th align="right">price</th>
<th align="right">x</th>
<th align="right">y</th>
<th align="right">z</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">0.23</td>
<td align="left">Ideal</td>
<td align="left">E</td>
<td align="left">SI2</td>
<td align="right">61.5</td>
<td align="right">55</td>
<td align="right">326</td>
<td align="right">3.95</td>
<td align="right">3.98</td>
<td align="right">2.43</td>
</tr>
<tr class="even">
<td align="right">0.21</td>
<td align="left">Premium</td>
<td align="left">E</td>
<td align="left">SI1</td>
<td align="right">59.8</td>
<td align="right">61</td>
<td align="right">326</td>
<td align="right">3.89</td>
<td align="right">3.84</td>
<td align="right">2.31</td>
</tr>
<tr class="odd">
<td align="right">0.23</td>
<td align="left">Good</td>
<td align="left">E</td>
<td align="left">VS1</td>
<td align="right">56.9</td>
<td align="right">65</td>
<td align="right">327</td>
<td align="right">4.05</td>
<td align="right">4.07</td>
<td align="right">2.31</td>
</tr>
<tr class="even">
<td align="right">0.29</td>
<td align="left">Premium</td>
<td align="left">I</td>
<td align="left">VS2</td>
<td align="right">62.4</td>
<td align="right">58</td>
<td align="right">334</td>
<td align="right">4.20</td>
<td align="right">4.23</td>
<td align="right">2.63</td>
</tr>
<tr class="odd">
<td align="right">0.31</td>
<td align="left">Good</td>
<td align="left">J</td>
<td align="left">SI2</td>
<td align="right">63.3</td>
<td align="right">58</td>
<td align="right">335</td>
<td align="right">4.34</td>
<td align="right">4.35</td>
<td align="right">2.75</td>
</tr>
<tr class="even">
<td align="right">0.24</td>
<td align="left">Very Good</td>
<td align="left">J</td>
<td align="left">VVS2</td>
<td align="right">62.8</td>
<td align="right">57</td>
<td align="right">336</td>
<td align="right">3.94</td>
<td align="right">3.96</td>
<td align="right">2.48</td>
</tr>
</tbody>
</table>

Wie nutzt man `qplot`
---------------------

-   `qplot` wird fÃ¼r schnelle Graphiken verwendet (quick plots)
-   bei `ggplot` kann man alles bis ins Detail kontrollieren

<!-- -->

    # histogram
    qplot(depth, data=diamonds2)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-6-1.png)

Ein Balkendiagramm
------------------

    qplot(cut, depth, data=diamonds2)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-7-1.png)

Ein weiteres Balkendiagramm
---------------------------

    qplot(factor(cyl), data=mtcars,geom="bar")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-8-1.png)

Boxplot
-------

    qplot(data=diamonds2,x=cut,y=depth,geom="boxplot")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-9-1.png)

Scatterplot
-----------

    # scatterplot
    qplot(carat, depth, data=diamonds2)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-10-1.png)

Farbe hinzu:
------------

    qplot(carat, depth, data=diamonds2,color=cut)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-11-1.png)

Trendlinie hinzufÃ¼gen
----------------------

    myGG<-qplot(data=diamonds2,x=carat,y=depth,color=carat) 
    myGG + stat_smooth(method="lm")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-12-1.png)

Graphik drehen
--------------

    qplot(factor(cyl), data=mtcars, geom="bar") + 
    coord_flip()

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-13-1.png)

Wie nutzt man ggplot
--------------------

-   die aestetics:

<!-- -->

    ggplot(diamonds2, aes(clarity, fill=cut)) + geom_bar()

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-14-1.png)

Farben selber wÃ¤hlen
---------------------

Es wird das Paket `RColorBrewer` verwendet um die Farbpalette zu Ã¤ndern

    install.packages("RColorBrewer")

    library(RColorBrewer)
    myColors <- brewer.pal(5,"Accent")
    names(myColors) <- levels(diamonds2$cut)
    colScale <- scale_colour_manual(name = "cut",
                                    values = myColors)

<http://stackoverflow.com/questions/6919025/>

Eine Graphik mit den gewÃ¤hlten Farben
--------------------------------------

    p <- ggplot(diamonds2,aes(carat, depth,colour = cut)) + 
      geom_point()
    p + colScale

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-17-1.png)

Speichern mit ggsave
--------------------

    ggsave("Graphik.jpg")

Links
-----

-   [Warum man ggplot2 fÃ¼r einfache Grafiken nutzen
    sollte](http://www.r-bloggers.com/why-i-use-ggplot2/)

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/WhyIuseggplot2.PNG)

-   [EinfÃ¼hrung in
    ggplot2](https://opr.princeton.edu/workshops/Downloads/2015Jan_ggplot2Koffman.pdf)

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/introggplot2.PNG)
- [ggplot2
Basics](http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html)

-   Noam Ross - [Quick Introduction to
    ggplot2](http://www.noamross.net/blog/2012/10/5/ggplot-introduction.html)

-   [Plugin
    ggplot2](https://www.r-bloggers.com/rcmdrplugin-kmggplot2_0-2-4-is-on-cran/)

Installieren des Paketes
------------------------

-   Zur Erstellung der Karten brauchen wir das Paket `ggmap`:

<!-- -->

    install.packages("ggmap")

Paket ggmap - Hallo Welt
------------------------

    library(ggmap)

Und schon kann die erste Karte erstellt werden:

    qmap("Mannheim")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-22-1.png)

*Zoom level* bei ggmap
----------------------

-   level 3 - Kontinent
-   level 10 - Stadt
-   level 21 - GebÃ¤ude

<!-- -->

    qmap("Germany", zoom = 6)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-24-1.png)

Hilfe bekommen wir mit dem Fragezeichen
---------------------------------------

    ?qmap

Verschiedene Abschnitte in der Hilfe:

-   Description
-   Usage
-   Arguments
-   Value
-   Author(s)
-   See Also
-   Examples

Die Beispiele in der Hilfe
--------------------------

Ausschnitt aus der Hilfe Seite zum Befehl `qmap`:

![qmap
Example](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/qmapExample.PNG)

Das Beispiel kann man direkt in die Konsole kopieren:

    # qmap("baylor university")
    qmap("baylor university", zoom = 14)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-27-1.png)

    # und so weiter

Ein anderes *zoom level*
------------------------

    qmap("Mannheim", zoom = 12)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-28-1.png)

NÃ¤her rankommen
----------------

    qmap('Mannheim', zoom = 13)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-29-1.png)

Ganz nah dran
-------------

    qmap('Mannheim', zoom = 20)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-30-1.png)

ggmap - maptype satellite
-------------------------

    qmap('Mannheim', zoom = 14, maptype="satellite")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-31-1.png)

ggmap - maptype satellite zoom 20
---------------------------------

    qmap('Mannheim', zoom = 20, maptype="hybrid")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-32-1.png)

ggmap - maptype hybrid
----------------------

    qmap("Mannheim", zoom = 14, maptype="hybrid")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-33-1.png)

Terrain/physical maps
---------------------

-   Aus Physischen Karten kann man Informationen Ã¼ber Berge, FlÃ¼sse
    und Seen ablesen.

-   Farben werden oft genutzt um HÃ¶henunterschiede zu visualisieren

ggmap - terrain map
-------------------

    qmap('Schriesheim', zoom = 14,maptype="terrain")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-34-1.png)

[Abstrahierte Karten](http://www.designfaves.com/2014/03/abstracted-maps-reveal-cities-personalities))
------------------------------------------------------------------------------------------------------

![New
York](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/NYabstracted.jpg)

-   Abstraktion wird genutzt um nur essentielle Informationen zu zeigen.
-   Bsp. U-Bahn Karten - wichtig sind Richtungen und wenig Infos zur
    Orientierung
-   Nun kommen Karten, die sich als Hintergrund eignen.

ggmap - maptype watercolor
--------------------------

    qmap('Mannheim', zoom = 14,maptype="watercolor",source="stamen")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-35-1.png)

ggmap - source stamen
---------------------

    qmap('Mannheim', zoom = 14,
     maptype="toner",source="stamen")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-36-1.png)

ggmap - maptype toner-lite
--------------------------

    qmap('Mannheim', zoom = 14,
     maptype="toner-lite",source="stamen")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-37-1.png)

ggmap - maptype toner-hybrid
----------------------------

    qmap('Mannheim', zoom = 14,
     maptype="toner-hybrid",source="stamen")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-38-1.png)

ggmap - maptype terrain-lines
-----------------------------

    qmap('Mannheim', zoom = 14,
     maptype="terrain-lines",source="stamen")

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-39-1.png)

Graphiken speichern
-------------------

![RstudioExport](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/RstudioExport.PNG)

ggmap - ein Objekt erzeugen
---------------------------

-   `<-` ist der Zuweisungspfeil um ein Objekt zu erzeugen
-   Dieses Vorgehen macht bspw. Sinn, wenn mehrere Karten nebeneinander
    gebraucht werden.

<!-- -->

    MA_map <- qmap('Mannheim', 
                   zoom = 14,
                   maptype="toner",
                   source="stamen")

Geokodierung
------------

> Geocoding (...) uses a description of a location, most typically a
> postal address or place name, to find geographic coordinates from
> spatial reference data ...

[Wikipedia -
Geocoding](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#blockquotes)

    library(ggmap)
    geocode("Mannheim",source="google")

<table>
<thead>
<tr class="header">
<th align="right">lon</th>
<th align="right">lat</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">8.463182</td>
<td align="right">49.48608</td>
</tr>
</tbody>
</table>

Latitude und Longitude
----------------------

![LatLon](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/definition-of-latitude-longitude.jpg)

[http://modernsurvivalblog.com](http://modernsurvivalblog.com/survival-skills/basic-map-reading-latitude-longitude/)

Koordinaten verschiedener Orte in Deutschland
---------------------------------------------

<table>
<thead>
<tr class="header">
<th align="left">cities</th>
<th align="right">lon</th>
<th align="right">lat</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Hamburg</td>
<td align="right">9.993682</td>
<td align="right">53.55108</td>
</tr>
<tr class="even">
<td align="left">Koeln</td>
<td align="right">6.960279</td>
<td align="right">50.93753</td>
</tr>
<tr class="odd">
<td align="left">Dresden</td>
<td align="right">13.737262</td>
<td align="right">51.05041</td>
</tr>
<tr class="even">
<td align="left">Muenchen</td>
<td align="right">11.581981</td>
<td align="right">48.13513</td>
</tr>
</tbody>
</table>

Reverse Geokodierung
--------------------

> Reverse geocoding is the process of back (reverse) coding of a point
> location (latitude, longitude) to a readable address or place name.
> This permits the identification of nearby street addresses, places,
> and/or areal subdivisions such as neighbourhoods, county, state, or
> country.

Quelle: [Wikipedia](https://en.wikipedia.org/wiki/Reverse_geocoding)

    revgeocode(c(48,8))

    ## [1] "Unnamed Road, Somalia"

Die Distanz zwischen zwei Punkten
---------------------------------

    mapdist("Q1, 4 Mannheim","B2, 1 Mannheim")

    ##             from             to   m    km     miles seconds  minutes
    ## 1 Q1, 4 Mannheim B2, 1 Mannheim 746 0.746 0.4635644     211 3.516667
    ##        hours
    ## 1 0.05861111

    mapdist("Q1, 4 Mannheim","B2, 1 Mannheim",mode="walking")

    ##             from             to   m    km     miles seconds minutes  hours
    ## 1 Q1, 4 Mannheim B2, 1 Mannheim 546 0.546 0.3392844     423    7.05 0.1175

Eine andere Distanz bekommen
----------------------------

    mapdist("Q1, 4 Mannheim","B2, 1 Mannheim",mode="bicycling")

    ##             from             to   m    km    miles seconds  minutes
    ## 1 Q1, 4 Mannheim B2, 1 Mannheim 555 0.555 0.344877     215 3.583333
    ##        hours
    ## 1 0.05972222

Geokodierung - verschiedene Punkte von Interesse
------------------------------------------------

    POI1 <- geocode("B2, 1 Mannheim",source="google")
    POI2 <- geocode("Hbf Mannheim",source="google")
    POI3 <- geocode("Mannheim, Friedrichsplatz",source="google")
    ListPOI <-rbind(POI1,POI2,POI3)
    POI1;POI2;POI3

    ##        lon      lat
    ## 1 8.462844 49.48569

    ##        lon      lat
    ## 1 8.469879 49.47972

    ##        lon      lat
    ## 1 8.475754 49.48304

Punkte in der Karte
-------------------

    MA_map +
    geom_point(aes(x = lon, y = lat),
    data = ListPOI)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-49-1.png)

Punkte in der Karte
-------------------

    MA_map +
    geom_point(aes(x = lon, y = lat),col="red",
    data = ListPOI)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-50-1.png)

ggmap - verschiedene Farben
---------------------------

    ListPOI$color <- c("A","B","C")
    MA_map +
    geom_point(aes(x = lon, y = lat,col=color),
    data = ListPOI)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-51-1.png)

ggmap - grÃ¶ÃŸere Punkte
------------------------

    ListPOI$size <- c(10,20,30)
    MA_map +
    geom_point(aes(x = lon, y = lat,col=color,size=size),
    data = ListPOI)

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-52-1.png)

Eine Route von Google maps bekommen
-----------------------------------

    from <- "Mannheim Hbf"
    to <- "Mannheim B2 , 1"
    route_df <- route(from, to, structure = "route")

[Mehr
Information](http://rpackages.ianhowson.com/cran/ggmap/man/route.html)

<http://rpackages.ianhowson.com/cran/ggmap/man/route.html>

Eine Karte mit dieser Information zeichnen
------------------------------------------

    qmap("Mannheim Hbf", zoom = 14) +
      geom_path(
        aes(x = lon, y = lat),  colour = "red", size = 1.5,
        data = route_df, lineend = "round"
      )

![](D:\Daten\GitHub\Rinter\md_slides\ggplot2_files/figure-markdown_strict/unnamed-chunk-54-1.png)

Wie fÃ¼gt man Punkte hinzu

-   Nutzung von
    [geom\_point](http://zevross.com/blog/2014/07/16/mapping-in-r-using-the-ggplot2-package/)

-   Frage auf
    [stackoverflow](http://stackoverflow.com/questions/15069963/getting-a-map-with-points-using-ggmap-and-ggplot2)

Bubbles auf einer Karte
-----------------------

<http://i.stack.imgur.com>

![](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/q3euq.png)

Cheatsheet
----------

-   Cheatsheet zu [data
    visualisation](https://www.rstudio.com/wp-content/uploads/2015/04/ggplot2-cheatsheet.pdf)

<https://www.rstudio.com/>

![Cheatsheet](https://github.com/Japhilko/IntroR/raw/master/2017/slides/figure/ggplot2-cheatsheet.png)

Resourcen und Literatur
-----------------------

-   [Artikel von David Kahle und Hadley
    Wickham](http://journal.r-project.org/archive/2013-1/kahle-wickham.pdf)
    zur Nutzung von `ggmap`.

-   [Schnell eine Karte
    bekommen](http://rpackages.ianhowson.com/cran/ggmap/man/get_map.html)

-   [Karten machen mit
    R](http://www.kevjohnson.org/making-maps-in-r-part-2/)

-   [Problem mit der Installation von
    ggmap](http://stackoverflow.com/questions/40642850/ggmap-error-geomrasterann-was-built-with-an-incompatible-version-of-ggproto)

Take Home Message
-----------------

Was klar sein sollte:

-   Wie man eine schnelle Karte erzeugt
-   Wie man geokodiert
-   Wie man eine Distanz berechnet
