#' ---
#' title: "Interaktive Karten"
#' author: "Jan-Philipp Kolb"
#' date: "12 Juni 2017"
#' output: md_document
#' ---
#' 
## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

#' 
#' ## Die Daten - Weltkulturerbe
#' 
#' - die Daten einlesen:
#' 
## ------------------------------------------------------------------------
url <- "https://raw.githubusercontent.com/Japhilko/
GeoData/master/2015/data/whcSites.csv"

whcSites <- read.csv(url) 

#' 
#' - die Daten werden eingeschränkt:
#' 
## ------------------------------------------------------------------------
whcSitesDat <- with(whcSites,data.frame(name_en,
                                        category))

#' 
#' ## Eine Tabelle erzeugen mit `knitr`
#' 
## ------------------------------------------------------------------------
library(knitr)
kable(head(whcSitesDat))

#' 
#' ## Eine erste interaktive Tabelle - [Das Paket `DT`](https://rstudio.github.io/DT/)
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("DT")

#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/DTintro.PNG)
#' 
#' 
#' ## Weitere Variablen WHC Datensatz
#' 
## ------------------------------------------------------------------------
whcSitesDat2 <- with(whcSites,data.frame(name_en,category,
                                         longitude,latitude,date_inscribed,area_hectares,danger_list))

#' 
#' - mit dem Befehl `datatable` kann man eine erste interaktive Tabelle erstellen:
#' 
## ----eval=F--------------------------------------------------------------
## library('DT')
## datatable(whcSitesDat2)

#' 
#' ## Das Ergebnis bei Rpubs
#' 
#' <http://rpubs.com/Japhilko82/WHCdata>
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/WHCRpubs.PNG)
#' 
#' 
#' ## Das Paket `magrittr`
#' 
#' - [magrittr](https://cran.r-project.org/web/packages/magrittr/index.html) - für den Pipe Operator in R:
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("magrittr")

#' 
## ----warning=F-----------------------------------------------------------
library("magrittr")

#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/Piping.PNG)
#' 
#' 
#' ## [Die Pipes nutzen](https://www.r-bloggers.com/more-readable-code-with-pipes-in-r/)
#' 
## ------------------------------------------------------------------------
library(magrittr)

str1 <- "Hallo Welt"
str1 %>% substr(1,5)

#' 
#' 
## ------------------------------------------------------------------------
str1 %>% substr(1,5) %>% toupper()

#' 
#' 
#' 
#' ## Das Paket `leaflet`
#' 
#' - [`leaflet`](https://rstudio.github.io/leaflet/) - um  interaktive Karten mit der JavaScript Bibliothek `leaflet` zu erzeugen
#' 
## ----eval=F--------------------------------------------------------------
## install.packages("leaflet")

#' 
## ----warning=F-----------------------------------------------------------
library("leaflet")

#' 
#' - Bei `leaflet` wird mit so genannten Tiles gearbeitet.
#' 
#' - Robin Lovelace - [The leaflet package for online mapping in R](http://robinlovelace.net/r/2015/02/01/leaflet-r-package.html)
#' 
#' 
#' ## Was sind Tiles?
#' 
#' - Die Übersetzung aus dem englischen ist Fliese und dieses Bild erklärt es eigentlich ganz gut.
#' - Es geht um [Kachelgrafiken](https://de.wikipedia.org/wiki/Kachelgrafik).
#' - Es ist eine Grafik bezeichnet, die mosaikartig zusammengesetzt ein vielfach größeres Gesamtbild ergibt.
#' 
#' ## Eine interaktive Karte erstellen
#' 
## ----eval=F--------------------------------------------------------------
## m <- leaflet() %>%
##   addTiles() %>%  # Add default OpenStreetMap map tiles
##   addMarkers(lng=whcSites$lon,
##              lat=whcSites$lat,
##              popup=whcSites$name_en)
## m

#' 
#' ## [Die Karte zeigen](https://rpubs.com/Japhilko82/WorldHeritageSites)
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/WHCPopUps.PNG) 
#' 
#' ## Farbe hinzu
#' 
#' - die unterschiedlichen Kategorien farblich einfärben
#' 
## ------------------------------------------------------------------------
whcSites$color <- "red"
whcSites$color[whcSites$category=="Cultural"] <- "blue"
whcSites$color[whcSites$category=="Mixed"] <- "orange"

#' 
#' ### Eine Karte mit Farbe erzeugen
#' 
## ----eval=F--------------------------------------------------------------
## m1 <- leaflet() %>%
##   addTiles() %>%
##   addCircles(lng=whcSites$lon,
##              lat=whcSites$lat,
##              popup=whcSites$name_en,
##              color=whcSites$color)

#' 
#' ## [Die Karte mit mehr Farbe](https://rpubs.com/Japhilko82/CatWHS)
#' 
#' ![Weltkulturerbe](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/WHCcircles.PNG) 
#' 
#' ## [Die Karte abspeichern](http://www.r-bloggers.com/interactive-mapping-with-leaflet-in-r-2/)
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/Kartespeichern.PNG)
#' 
#' <!--
#' ![gui](http://i1.wp.com/spatialrecology.org/images/r_leaflet/snapshot2.png)
#' -->
#' 
#' ## [Layers ein- und ausblenden](https://rstudio.github.io/leaflet/showhide.html)
#' 
#' 
## ----eval=F--------------------------------------------------------------
## m2 <- leaflet() %>%
##   addTiles(group = "OSM (default)") %>%
##   addProviderTiles("Stamen.Toner", group = "Toner") %>%
##   addProviderTiles("Stamen.TonerLite", group = "Toner Lite") %>%
## 
##   addCircles(lng=whcSites$lon,
##              lat=whcSites$lat,
##              popup=whcSites$name_en) %>%
## 
##   addLayersControl(
##     baseGroups = c("OSM (default)", "Toner", "Toner Lite"),
##     options = layersControlOptions(collapsed = FALSE)
##   )
## m2

#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/LayerSteuern.PNG)
#' 
#' ## [Ein weiteres Beispiel mit Erdbebendaten](https://rstudio.github.io/leaflet/showhide.html)
#' 
#' 
#' ![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/LayersUmschalten.PNG)
#' 
## ------------------------------------------------------------------------
outline <- quakes[chull(quakes$long, quakes$lat),]

#' 
## ----eval=F--------------------------------------------------------------
## map <- leaflet(quakes) %>%
##   # Base groups
##   addTiles(group = "OSM (default)") %>%
##   addProviderTiles("Stamen.Toner", group = "Toner") %>%
##   addProviderTiles("Stamen.TonerLite", group = "Toner Lite") %>%
##   # Overlay groups
##   addCircles(~long, ~lat, ~10^mag/5, stroke = F, group = "Quakes") %>%
##   addPolygons(data = outline, lng = ~long, lat = ~lat,
##     fill = F, weight = 2, color = "#FFFFCC", group = "Outline") %>%
##   # Layers control
##   addLayersControl(
##     baseGroups = c("OSM (default)", "Toner", "Toner Lite"),
##     overlayGroups = c("Quakes", "Outline"),
##     options = layersControlOptions(collapsed = FALSE)
##   )
## map

#' 
#' 
#' 
#' ## [Karte mit Polygonen erzeugen](https://rstudio.github.io/leaflet/map_widget.html)
#' 
## ------------------------------------------------------------------------
library(sp)
Sr1 = Polygon(cbind(c(2, 4, 4, 1, 2), c(2, 3, 5, 4, 2)))
Sr2 = Polygon(cbind(c(5, 4, 2, 5), c(2, 3, 2, 2)))
Sr3 = Polygon(cbind(c(4, 4, 5, 10, 4), c(5, 3, 2, 5, 5)))
Sr4 = Polygon(cbind(c(5, 6, 6, 5, 5), c(4, 4, 3, 3, 4)), hole = TRUE)
Srs1 = Polygons(list(Sr1), "s1")
Srs2 = Polygons(list(Sr2), "s2")
Srs3 = Polygons(list(Sr4, Sr3), "s3/4")
SpP = SpatialPolygons(list(Srs1, Srs2, Srs3), 1:3)

#' 
#' - so wird die Karte erzeugt:
#' 
## ----eval=F--------------------------------------------------------------
## leaflet(height = "300px") %>% addPolygons(data = SpP)

#' 
#' 
#' ## Beispiel US Staaten
#' 
## ----eval=F--------------------------------------------------------------
## library(maps)
## mapStates = map("state", fill = TRUE, plot = FALSE)
## leaflet(data = mapStates) %>% addTiles() %>%
##   addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)

#' 
#' ## Der Befehl `setView`
#' 
#' - mit `setView` kann man bestimmen welchen Ausschnitt man für die Hintergrundkarte haben möchte
#' - dazu muss man die latitude und Longitude Koordinaten und ein zoom Level angegeben
#' - dabei kann man nur ganze Zahlen angeben
#' - je kleiner die Zahl, desto größer ist der Kartenausschnitt:
#' 
#' 
#' - level 3 - Kontinent
#' - level 10 - Stadt
#' - level 21 - Gebäude
#' 
#' 
#' ## Die Basiskarte ändern
#' 
#' - Neben der Default Basiskarte kann man auch [andere Hintergründe aktivieren](http://leaflet-extras.github.io/leaflet-providers/preview/index.html)
#' 
## ----eval=F--------------------------------------------------------------
## m <- leaflet() %>% setView(lng = -71.0589, lat = 42.3601, zoom = 12)
## m %>% addTiles()
## m %>% addProviderTiles("Stamen.Toner")

#' 
#' ## Basiskarte - CartoDB
#' 
## ----eval=F--------------------------------------------------------------
## m %>% addProviderTiles("CartoDB.Positron")

#' 
#' ## Esri.NatGeoWorldMap
#' 
## ----eval=F--------------------------------------------------------------
## m %>% addProviderTiles("Esri.NatGeoWorldMap")

#' 
#' ## OpenTopoMap
#' 
## ----eval=F--------------------------------------------------------------
## m %>% addProviderTiles("OpenTopoMap")

#' 
#' 
#' ## Thunderforest.OpenCycleMap
#' 
## ----eval=F--------------------------------------------------------------
## m %>% addProviderTiles("Thunderforest.OpenCycleMap")

#' 
#' 
#' ## WMS Tiles hinzufügen
#' 
## ----eval=F--------------------------------------------------------------
## leaflet() %>% addTiles() %>% setView(-93.65, 42.0285, zoom = 4) %>%
##   addWMSTiles(
##     "http://mesonet.agron.iastate.edu/cgi-bin/wms/nexrad/n0r.cgi",
##     layers = "nexrad-n0r-900913",
##     options = WMSTileOptions(format = "image/png", transparent = TRUE),
##     attribution = "Weather data © 2012 IEM Nexrad"
##   )

#' 
#' ## Mehrere Layer miteinander kombinieren
#' 
## ----eval=F--------------------------------------------------------------
## m %>% addProviderTiles("MtbMap") %>%
##   addProviderTiles("Stamen.TonerLines",
##     options = providerTileOptions(opacity = 0.35)) %>%
##   addProviderTiles("Stamen.TonerLabels")

#' 
#' ## Andere Marker benutzen
#' 
## ----eval=F--------------------------------------------------------------
## greenLeafIcon <- makeIcon(
##   iconUrl = "http://leafletjs.com/examples/custom-icons/leaf-green.png",
##   iconWidth = 38, iconHeight = 95,
##   iconAnchorX = 22, iconAnchorY = 94,
##   shadowUrl = "http://leafletjs.com/examples/custom-icons/leaf-shadow.png",
##   shadowWidth = 50, shadowHeight = 64,
##   shadowAnchorX = 4, shadowAnchorY = 62
## )
## 
## leaflet(data = quakes[1:4,]) %>% addTiles() %>%
##   addMarkers(~long, ~lat, icon = greenLeafIcon)

#' 
#' ## Andere Icons einfügen
#' 
#' - es lassen sich alle möglichen Icons einfügen
#' 
## ----eval=F--------------------------------------------------------------
## menIcon <- makeIcon("https://img.clipartfest.com/707b339dc88f57bbd5d88377891131e3_bean-people-clipart-cliparts-beach-screen-with-people-clipart_344-432.jpeg",
##          iconWidth = 38, iconHeight = 95,
##   iconAnchorX = 22, iconAnchorY = 94)
## 
## leaflet(data = quakes[1:4,]) %>% addTiles() %>%
##   addMarkers(~long, ~lat, icon = menIcon)

#' 
#' 
#' 
#' ## Cluster Optionen für Marker
#' 
## ----eval=F--------------------------------------------------------------
## leaflet(quakes) %>% addTiles() %>% addMarkers(
##   clusterOptions = markerClusterOptions()
## )

#' 
#' ## [Ein Rechteck hinzufügen](https://rstudio.github.io/leaflet/shapes.html)
#' 
#' 
## ----eval=F--------------------------------------------------------------
## leaflet() %>% addTiles() %>%
##   addRectangles(
##     lng1=-118.456554, lat1=34.078039,
##     lng2=-118.436383, lat2=34.062717,
##     fillColor = "transparent"
##   )

#' 
#' 
#' ## Links und Quellen
#' 
#' - [4 Tricks zum Arbeiten mit Leaflet](https://www.r-bloggers.com/4-tricks-for-working-with-r-leaflet-and-shiny/)
#' 
#' - <http://www.r-bloggers.com/the-leaflet-package-for-online-mapping-in-r/>
#' - <https://rstudio.github.io/leaflet/>
#' 
#' 
#' ## Aufgabe `leaflet`
#' 
#' - Verwenden Sie die Adresse, die Sie zuvor geokodiert haben, um eine interaktive Karte um diesen Punkt herum zu erstellen.
#' 
