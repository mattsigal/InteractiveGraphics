require(devtools)

# Install dev versions of rCharts and slidify 
# As of October 21st, dev versions are required for this presentation):

# install_github("rCharts", "ramnathv", ref = "dev")
# install_github(c('slidify', 'slidifyLibraries'), 'ramnathv', ref = 'dev')

# For posterity, the master branch of rCharts and slidify can also be obtained:
#install_github("rCharts", "ramnathv")
#install_github(c('slidify', 'slidifyLibraries'), 'ramnathv')

# Install latest version of ggvis and shiny:
# install_github(c("assertthat", "testthat"))
# install_github(c("httpuv", "shiny", "ggvis"), "rstudio")

library(slidify)
library(slidifyLibraries)
library(shiny)
library(rCharts)

# Create slidify skeleton for new presentation:
# author("QMpres")

setwd("~/Desktop/InteractiveGraphics/QMpres")
runDeck()
publish_github(repo = "InteractiveGraphics", username = "mattsigal")
