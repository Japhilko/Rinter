Den Datensatz laden
-------------------

    ## Warning: NAs durch Umwandlung erzeugt

    library(foreign)
    dat <- read.dta(
    "https://github.com/Japhilko/RSocialScience/blob/master/data/
    GPanel.dta?raw=true")
    dat$bazq020a <- as.numeric(dat$bazq020a)

Streuungsmaße
-------------

<!--
In Basis R sind die wichtigsten Streuungsmaße enthalten:
-->
-   Varianz: `var()`
-   Standardabweichung: `sd()`
-   Minimum und Maximum: `min()` und `max()`
-   Range: `range()`

<!-- -->

    var(dat$bazq020a)

    ## [1] NA

    var(dat$bazq020a,na.rm=T)

    ## [1] 476.8859

    sd(dat$bazq020a,na.rm=T)

    ## [1] 21.83772

    range(dat$bazq020a,na.rm=T)

    ## [1] -99  45

<!--
## Extremwerte


```r
min(dat$bazq020a)
```

```
## [1] NA
```

```r
max(dat$bazq020a)
```

```
## [1] NA
```


## Fehlende Werte

- Sind `NA`s vorhanden muss dies der Funktion mitgeteilt werden


```r
ab <- 1:10
ab[10] <- NA
var(ab)
```

```
## [1] NA
```

Bei fehlenden Werten muss ein weiteres Argument mitgegeben werden:


```r
var(ab,na.rm=T)
```

```
## [1] 7.5
```
-->
Häufigkeiten und gruppierte Kennwerte
-------------------------------------

-   Eine Auszählung der Häufigkeiten der Merkmale einer Variable liefert
    `table()`
-   Mit `table()` sind auch Kreuztabellierungen möglich indem zwei
    Variablen durch Komma getrennt werden: `table(x,y)` liefert
    Häufigkeiten von `y` für gegebene Ausprägungen von `x`

<!-- -->

    table(dat$a11d054a)

    ## 
    ## Männlich Weiblich 
    ##       43       57

Tabellieren - weiteres Beispiel
-------------------------------

    ?table

    table(dat$a11d054a)

    ## 
    ## Männlich Weiblich 
    ##       43       57

    table(dat$a11d054a,dat$a11d056z)

    ##           
    ##            Ambiguous answer Item nonresponse Not reached Unit nonresponse
    ##   Männlich                0                0           0                0
    ##   Weiblich                0                0           0                0
    ##           
    ##            Not in panel 18 bis unter 20 Jahre 20 bis unter 25 Jahre
    ##   Männlich            0                     2                     2
    ##   Weiblich            0                     2                     4
    ##           
    ##            25 bis unter 30 Jahre 30 bis unter 35 Jahre
    ##   Männlich                     2                     3
    ##   Weiblich                     5                     2
    ##           
    ##            35 bis unter 40 Jahre 40 bis unter 45 Jahre
    ##   Männlich                     2                     1
    ##   Weiblich                     4                     4
    ##           
    ##            45 bis unter 50 Jahre 50 bis unter 55 Jahre
    ##   Männlich                     8                     9
    ##   Weiblich                     6                     7
    ##           
    ##            55 bis unter 60 Jahre 60 bis unter 63 Jahre
    ##   Männlich                     3                     2
    ##   Weiblich                     5                     9
    ##           
    ##            63 bis unter 65 Jahre 65 bis unter 70 Jahre 70 Jahre und Älter
    ##   Männlich                     3                     5                  1
    ##   Weiblich                     1                     5                  3

Häufigkeitstabellen
-------------------

-   `prop.table()` liefert die relativen Häufigkeiten
-   Wird die Funktion außerhalb einer `table()` Funktion geschrieben
    erhält man die relativen Häufigkeiten bezogen auf alle Zellen

Die Funktion `prop.table`
-------------------------

    ?prop.table

    prop.table(table(dat$a11d054a,dat$a11d056z),1)

    ##           
    ##            Ambiguous answer Item nonresponse Not reached Unit nonresponse
    ##   Männlich       0.00000000       0.00000000  0.00000000       0.00000000
    ##   Weiblich       0.00000000       0.00000000  0.00000000       0.00000000
    ##           
    ##            Not in panel 18 bis unter 20 Jahre 20 bis unter 25 Jahre
    ##   Männlich   0.00000000            0.04651163            0.04651163
    ##   Weiblich   0.00000000            0.03508772            0.07017544
    ##           
    ##            25 bis unter 30 Jahre 30 bis unter 35 Jahre
    ##   Männlich            0.04651163            0.06976744
    ##   Weiblich            0.08771930            0.03508772
    ##           
    ##            35 bis unter 40 Jahre 40 bis unter 45 Jahre
    ##   Männlich            0.04651163            0.02325581
    ##   Weiblich            0.07017544            0.07017544
    ##           
    ##            45 bis unter 50 Jahre 50 bis unter 55 Jahre
    ##   Männlich            0.18604651            0.20930233
    ##   Weiblich            0.10526316            0.12280702
    ##           
    ##            55 bis unter 60 Jahre 60 bis unter 63 Jahre
    ##   Männlich            0.06976744            0.04651163
    ##   Weiblich            0.08771930            0.15789474
    ##           
    ##            63 bis unter 65 Jahre 65 bis unter 70 Jahre 70 Jahre und Älter
    ##   Männlich            0.06976744            0.11627907         0.02325581
    ##   Weiblich            0.01754386            0.08771930         0.05263158

Die aggregate Funktion
----------------------

-   Mit der `aggregate()` Funktion können Kennwerte für Untergruppen
    erstellt werden
-   `aggregate(x,by,FUN)` müssen mindestens drei Argumente übergeben
    werden:

<!-- -->

    aggregate(dat$bazq020a,by=list(dat$a11d054a),mean,na.rm=T)

    ##    Group.1         x
    ## 1 Männlich 13.534884
    ## 2 Weiblich  8.773585

`x`: ein oder mehrere Beobachtungsvektor(en) für den der Kennwert
berechnet werden soll

`by`: eine oder mehrere bedingende Variable(n)

`FUN`: die Funktion welche den Kennwert berechnet (z.B. `mean` oder
`sd`)

<!--            
- Die Ausgabe kann mit Hilfe von `xtabs()` in eine schöne zweidimensionale Tabelle überführt werden
-->
Beispieldatensatz - apply Funktion
----------------------------------

    ApplyDat <- array(1:8,c(4,2))

<table>
<tbody>
<tr class="odd">
<td align="right">1</td>
<td align="right">5</td>
</tr>
<tr class="even">
<td align="right">2</td>
<td align="right">6</td>
</tr>
<tr class="odd">
<td align="right">3</td>
<td align="right">7</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="right">8</td>
</tr>
</tbody>
</table>

Argumente der Funktion apply
----------------------------

    ?apply

-   Für `margin=1` die Funktion `mean` auf die Reihen angewendet,

-   Für `margin=2` die Funktion `mean` auf die Spalten angewendet,

-   Anstatt `mean` können auch andere Funktionen wie `var`, `sd` oder
    `length` verwendet werden.

Die `apply` Funktion anwenden
-----------------------------

    apply(ApplyDat,1,mean)

    ## [1] 3 4 5 6

    apply(ApplyDat,2,mean)

    ## [1] 2.5 6.5

Die Funktion apply
------------------

    apply(ApplyDat,1,var)

    ## [1] 8 8 8 8

    apply(ApplyDat,1,sd)

    ## [1] 2.828427 2.828427 2.828427 2.828427

    apply(ApplyDat,1,range)

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    1    2    3    4
    ## [2,]    5    6    7    8

    apply(ApplyDat,1,length)

    ## [1] 2 2 2 2

Die Funktion tapply
-------------------

    ?tapply

-   Auch andere Funktionen können eingesetzt werden.... - Auch selbst
    programmierte Funktionen
-   Im Beispiel wird die einfachste eigene Funktion angewendet.

Beispieldaten Funktion `tapply`
-------------------------------

    tapdat <- data.frame(SEX=sample(c("m","w"),10,replace=T),INC=rnorm(10))

<table>
<thead>
<tr class="header">
<th align="left">SEX</th>
<th align="right">INC</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">m</td>
<td align="right">1.0201102</td>
</tr>
<tr class="even">
<td align="left">w</td>
<td align="right">-0.4199619</td>
</tr>
<tr class="odd">
<td align="left">m</td>
<td align="right">-0.2316247</td>
</tr>
<tr class="even">
<td align="left">w</td>
<td align="right">-0.8657118</td>
</tr>
<tr class="odd">
<td align="left">w</td>
<td align="right">0.3903112</td>
</tr>
<tr class="even">
<td align="left">m</td>
<td align="right">-0.0797366</td>
</tr>
</tbody>
</table>

Beispiel Funktion tapply
------------------------

    tapply(tapdat$INC,tapdat$SEX,mean)

    ##          m          w 
    ##  0.6252400 -0.2783447

Aufgabe - apply Funktion anwenden
---------------------------------

-   Erstellen Sie eine Matrix A mit 4 Zeilen und 25 Spalten, die die
    Werte 1 bis 100 enthält. Analog dazu erstellen Sie eine Matrix B mit
    25 Zeilen und 4 Spalten, die die Werte 1 bis 100 enthält.

-   Berechnen Sie mittels dem apply()-Befehl den Mittelwert und die
    Varianz für jede Zeile von A bzw. B.

-   Berechnen Sie mittels dem apply()-Befehl den Mittelwert und die
    Varianz für jede Spalte von A bzw. B.

Links Datenanalyse
------------------

-   Die Benutzung von `apply`, `tapply`, etc. (Artikel bei
    [R-bloggers](http://www.r-bloggers.com/using-apply-sapply-lapply-in-r/))

-   [Quick-R zu deskriptiver
    Statistik](http://www.statmethods.net/stats/descriptives.html)

-   [Quick-R zur Funktion
    `aggregate`](http://www.statmethods.net/management/aggregate.html)
