library(devtools)
# Dev Versions:
install_github("rCharts", "ramnathv", ref = "dev")
install_github(c('slidify', 'slidifyLibraries'), 'ramnathv', ref = 'dev')

# Master Branch:
install_github("rCharts", "ramnathv")
install_github(c('slidify', 'slidifyLibraries'), 'ramnathv')

# ggvis packages:
install_github(c("assertthat", "testthat"))
install_github(c("httpuv", "shiny", "ggvis"), "rstudio")

library(slidify)
library(slidifyLibraries)
library(shiny)
library(rCharts)

# Create slidify skeleton:
# author("QMpres")

setwd("~/Desktop/InteractiveGraphics/QMpres")
runDeck()
publish_github(repo = "InteractiveGraphics", username = "mattsigal")
