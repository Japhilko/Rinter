if(!require(flexdashboard)){
  install.packages("flexdashboard")
  library(flexdashboard)
}


rmarkdown::run("flexshiny.Rmd")
