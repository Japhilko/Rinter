# Jan-Philipp Kolb
# Tue May 16 09:31:46 2017


#----------------------------------#
# Set paths
#----------------------------------#

slidepath <- "D:/Daten/GitHub/RSocialScience/slides"
rmdslidepath <- "D:/Eigene Dateien/Dokumente/GitHub/Rinter/rmd_slides"
pdfslidespath <- "D:/Eigene Dateien/Dokumente/GitHub/Rinter/pdf_slides"
wikipath <- "D:/GESIS/Workshops/Rinter.wiki"

setwd(rmdslidepath)

chapters2 <- dir()

chapters <- gsub(".Rmd","",chapters2) 


for ( i in 1:length(chapters)){
  rmarkdown::render(chapters2[i],
                    output_format = "md_document",
                    output_file=paste0(chapters[i],".md"),
                    output_dir=wikipath)
}



for ( i in 1:length(chapters)){
  rmarkdown::render(chapters2[i],
                    output_format = "beamer_presentation",
                    output_file=paste0(chapters[i],".pdf"),
                    output_dir=pdfslidespath)
}


for ( i in 1:length(chapters)){
  rmarkdown::render(paste0("../",chapters[i],"/index.Rmd"),
                    output_format = "ioslides_presentation",
                    output_file=paste0(chapters[i],".html"),
                    output_dir=slidepath)
}


for ( i in 1:length(chapters)){
  rmarkdown::render(paste0("../",chapters[i],"/index.Rmd"),
                    output_format = "beamer_presentation",
                    output_file=paste0(chapters[i],".pdf"),
                    output_dir=slidepath)
}

# markdown files





for ( i in 1:length(chapters)){
  rmarkdown::render(paste0("../",chapters[i],"/index.Rmd"),
                    output_format = "md_document",
                    output_file=paste0("../",chapters[i],".md"))
}



setwd("D:/GESIS/Workshops/RSocialScience/code")
for ( i in 1:length(chapters)){
  purl(paste0("../",chapters[i],"/index.Rmd"),documentation=2,
       output=paste0(chapters[i],".R"))
}




rmarkdown::render("../intro/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="intro.html",
                  output_dir=slidepath)


rmarkdown::render("../hilfe/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="hilfe.html",
                  output_dir=slidepath)



rmarkdown::render("../Rmodular/index.Rmd",
                  output_format = "beamer_presentation",
                  output_file="Rmodular.pdf",
                  output_dir=slidepath)




rmarkdown::render("../linreg/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="linreg.html",
                  output_dir=slidepath)


# http://stackoverflow.com/questions/26174565/r-in-rstudio-how-do-i-make-knitr-output-to-a-different-folder-to-avoid-clutteri
rmarkdown::render("../multilevel/index.Rmd",
                  output_format = "slidy_presentation",
                  output_file="multilevel.html",
                  output_dir=slidepath)



reihenF <- NA
reihenF[chapters=="Intro"] <- 1
reihenF[chapters=="ersteSchritte"] <- 2
reihenF[chapters=="Funktionen_Basis"] <- 3
reihenF[chapters=="Hilfe"] <- 4
reihenF[chapters=="R-Pakete"] <- 5
reihenF[chapters=="Datenimport"] <- 6
reihenF[chapters=="Datenaufbereitung"] <- 7
reihenF[chapters=="Datenexport"] <- 8
reihenF[chapters=="Basisgrafiken"] <- 9
reihenF[chapters=="Datenanalyse"] <- 10
reihenF[chapters=="Zusammenhang"] <- 11
reihenF[chapters=="LatticeGraphiken"] <- 12
reihenF[chapters=="ggplot2"] <- 13
reihenF[chapters=="lineareRegression"] <- 14
reihenF[chapters=="logistischeRegression"] <- 15
reihenF[chapters=="Multilevel"] <- 16
reihenF[chapters=="R2word"] <- 17
reihenF[chapters=="R2pdf"] <- 18
reihenF[chapters=="Notebooks"] <- 19
reihenF[chapters=="InteraktiveTabellen"] <- 20
reihenF[chapters=="InteraktiveKarten"] <- 21


chapters <- chapters[order(reihenF)]



#----------------------------------#
# Create R files
#----------------------------------#



#----------------------------------#
# Install packages
#----------------------------------#

install.packages("sjPlot")
install.packages("tibble")
