# ui.R

library(shiny)
library(rCharts)

shinyUI(pageWithSidebar(
  headerPanel("rCharts: Interactive Charts from R using NVD3.js"),
  
  sidebarPanel(
    selectInput('sex', 'Choose Sex', c('Male', 'Female')),
    selectInput('type', 'Choose Type', c('multiBarChart', 'multiBarHorizontalChart'))
  ),

  mainPanel(
    tags$div(id = 'nvd3plot', class='shiny-html-output nvd3 rChart')
  )
))