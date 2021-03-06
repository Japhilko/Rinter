[PrÃ¤sentationen - Rpres der einfachste Weg](https://rstudio-pubs-static.s3.amazonaws.com/27777_55697c3a476640caa0ad2099fe914ae5.html#/)
----------------------------------------------------------------------------------------------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/Rpresentations.PNG)

Eine erste PrÃ¤sentation
------------------------

![](https://github.com/Japhilko/RInterfaces/raw/master/slides/figure/RpresStart.png)

Erste Daten eintragen
---------------------

-   FÃ¼r Vergessliche:

<!-- -->

    date()

    ## [1] "Mon Jul 31 14:17:34 2017"

Eine Folie mit Formel
---------------------

-   Die Formel kann wie in LaTeX eingegeben werden

<!-- -->

    $$
    \begin{equation}\label{eq2}
    t_{i}=\sum\limits_{k=1}^{M_{i}}{y_{ik}}=M_{i}\bar{Y}_{i}. 
    \end{equation}
    $$

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/FolieLatexCode.PNG)

Zwei Spalten
------------

    Folie mit zwei Spalten
    ====================================
    Erste Spalte
    ***
    Zweite Spalte

FolienÃ¼bergÃ¤nge
-----------------

    transition: rotate

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RpresRotate.PNG)

[Weitere mÃ¶gliche FolienÃ¼bergÃ¤nge](https://support.rstudio.com/hc/en-us/articles/200714013-Slide-Transitions-and-Navigation)
-------------------------------------------------------------------------------------------------------------------------------

-   none
-   linear
-   rotate
-   fade
-   zoom
-   concave

Folientypen
-----------

    Ein neues Kapitel einfÃ¼gen
    ====================================
    type: section

    Anderer Folientyp
    ====================================
    type: prompt

    Noch ein anderer Folientyp
    ====================================
    type: alert

[Die Schriftart wechseln](https://support.rstudio.com/hc/en-us/articles/200532307)
----------------------------------------------------------------------------------

-   Die [CSS
    Schrifttypen](https://www.w3schools.com/cssref/css_websafe_fonts.asp)
    kÃ¶nnen verwendet werden

<!-- -->

    Meine PrÃ¤sentation
    ========================================
    author: Jan-Philipp Kolb
    font-family: 'Impact'

Schrifttypen kÃ¶nnen auch importiert werden
-------------------------------------------

    Meine PrÃ¤sentation
    ========================================
    author: Jan-Philipp Kolb
    font-import: http://fonts.googleapis.com/css?family=Risque
    font-family: 'Risque'

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/SchriftartRisque.PNG)

Kleineren Text
--------------

Normale SchriftgrÃ¶ÃŸe

    <small>This sentence will appear smaller.</small>

Die PrÃ¤sentation anschauen
---------------------------

-   Das Ergebnis ist hier zu sehen:

<http://rpubs.com/Japhilko82/FirstRpubs>

![](https://support.rstudio.com/hc/en-us/article_attachments/202008388/Screen_Shot_2015-06-04_at_3.51.21_PM.png)

Eine ioslides PrÃ¤sentation
===========================

Eine ioslides PrÃ¤sentation
---------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ioslidespres.PNG)

[ioslides - Der Start](http://rmarkdown.rstudio.com/ioslides_presentation_format.html)
--------------------------------------------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ioslidesBSP.PNG)

Weitere Dinge tun
-----------------

-   Ein Bild einbinden

<!-- -->

    ![picture of spaghetti](images/spaghetti.jpg)

Ein Logo hinzu
--------------

    ---
    title: "ioslides Beispiel"
    author: "Jan-Philipp Kolb"
    date: "20 April 2017"
    output: 
      ioslides_presentation:
        logo: figure/Rlogo.png
    ---

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ioslidesRlogo.PNG)

Tabellen
--------

-   Quelle: [R Studio, and Presentations, and Git! Oh
    my!](https://www.r-bloggers.com/r-studio-and-presentations-and-git-oh-my/)

<!-- -->

    library(knitr)
    a <- data.frame(a=1:10,b=10:1)
    kable(table(a))

<table>
<thead>
<tr class="header">
<th align="right">1</th>
<th align="right">2</th>
<th align="right">3</th>
<th align="right">4</th>
<th align="right">5</th>
<th align="right">6</th>
<th align="right">7</th>
<th align="right">8</th>
<th align="right">9</th>
<th align="right">10</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="right">0</td>
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
<tr class="even">
<td align="right">1</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">0</td>
</tr>
</tbody>
</table>

`knitr` Engines
---------------

-   [knitr Language
    Engines](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

-   [slidify](http://slidify.org/)

Eine slidy PrÃ¤sentation
========================

slidy PrÃ¤sentationen
---------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/sluidypresentations.PNG)

\[Was sind Cascading Style Files ([CSS](https://de.wikipedia.org/wiki/Cascading_Style_Sheets))
----------------------------------------------------------------------------------------------

![](https://upload.wikimedia.org/wikipedia/commons/8/83/CSS-Logo.png)

-   Stylesheet-Sprache fÃ¼r elektronische Dokumente
-   eine der Kernsprachen des World Wide Webs.
-   CSS wurde entworfen, um Darstellungsvorgaben weitgehend von den
    Inhalten zu trennen

### CSS und R

-   [Custom
    CSS](http://rmarkdown.rstudio.com/html_document_format.html#custom_css)
-   [CSS pro
    tipps](https://github.com/AllThingsSmitty/css-protips#use-a-css-reset)

Beispiel CSS
------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/cssRstudio.PNG)

Das CSS Ã¤ndern
---------------

Um den PrÃ¤sentationstyp zu Ã¤ndern kann man das CSS verÃ¤ndern

-   [Cascading Style
    Sheets](https://de.wikipedia.org/wiki/Cascading_Style_Sheets) (CSS)

-   Bspw. lÃ¤sst sich die
    [Farbe (HTML)](http://tomheller.de/html-farben.html) Ã¤ndern.
-   [Man kann eine andere Schriftart
    wÃ¤hlen](https://www.mediaevent.de/css/font-family.html)
-   [Es gibt zahlreiche MÃ¶glichkeiten der
    Schriftformatierung](https://wiki.selfhtml.org/wiki/CSS/Eigenschaften/Schriftformatierung)
-   [Daneben gibt es viele weitere Dinge, die sich mit dem CSS steuern
    lassen](https://www.w3.org/TR/WCAG20-TECHS/C22.html)

HTML Dokumente
==============

Ein HTML Dokument erzeugen
--------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/NewHTML.PNG)

Ein Template verwenden
----------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/UsingTemplate.PNG)

[Weitere Vorlagen nutzen](http://rmarkdown.rstudio.com/developer_document_templates.html)
-----------------------------------------------------------------------------------------

-   Es gibt viele Formate - [manche mÃ¼ssen erst aktiviert
    werden](https://blog.rstudio.org/2016/03/21/r-markdown-custom-formats/):

<!-- -->

    install.packages("rticles")

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/ShortPaper.PNG)

Vorlagen fÃ¼r Markdown
----------------------

Das Paket `rmdformats` - HTML Output Formats and Templates for
'rmarkdown'

    install.packages("rmdformats")

-   `ProjectTemplate` - Automates the Creation of New Statistical
    Analysis

<!-- -->

    install.packages("ProjectTemplate")

-   `tufte` - Tufte's Styles for R Markdown Documents

<!-- -->

    install.packages("tufte")

[Beispiele fÃ¼r Templates](https://github.com/juba/rmdformats)
--------------------------------------------------------------

![](https://rstudioblog.files.wordpress.com/2016/03/readthedown.png)

Dashboards
==========

[Beispiel R-Pakete](https://gallery.shinyapps.io/cran-gauge/)
-------------------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/CRANdownloads.PNG)

[Paket installieren](https://blog.rstudio.org/2016/05/17/flexdashboard-easy-interactive-dashboards-for-r/)
----------------------------------------------------------------------------------------------------------

    install.packages("flexdashboard", type = "source")

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/flexdashboards.PNG)

Ein Dashboard erstellen mit Rstudio
-----------------------------------

![](https://i2.wp.com/rmarkdown.rstudio.com/flexdashboard/images/NewRMarkdown.png?zoom=2)

[Mein erstes Dashboard](http://rpubs.com/Japhilko82/whcsites)
-------------------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/MeinErstesDashboard.PNG)

[Gallerie](http://rmarkdown.rstudio.com/gallery.html)
-----------------------------------------------------

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/RmarkdownGallery.PNG)

Links
-----

-   [Verschiedene Markdown Dokumente zusammen
    fÃ¼gen](http://stackoverflow.com/questions/25824795/how-to-combine-two-rmarkdown-rmd-files-into-a-single-output)

![](https://raw.githubusercontent.com/Japhilko/RInterfaces/master/slides/figure/stackoverflowCombine.PNG)

-   [Verschiedene CSS Fonts](http://www.cssfontstack.com/)

-   [Ãœberblick Ã¼ber die verschiedenen Rmarkdown
    Formate](http://rmarkdown.rstudio.com/formats.html)

-   [Umlaute in Markdown
    Dokumenten](https://stackoverflow.com/questions/41567549/german-umlauts-in-r-markdown-again)
