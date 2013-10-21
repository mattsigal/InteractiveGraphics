## ui.R

library(shiny)
library(rCharts)
options(RCHART_LIB = 'NVD3')

shinyUI(pageWithSidebar(
  headerPanel("rCharts: Interactive Charts from R using nvd3.js"),
  
  sidebarPanel(
    selectInput('sex', 'Choose Sex', c('Male', 'Female')),
    selectInput('type', 'Choose Type',
                c('multiBarChart', 'multiBarHorizontalChart')
    )
  ),

  mainPanel(
    div(class='wrapper',
        tags$style(".Nvd3{ height: 400px;}"),
        showOutput("out","Nvd3")
    )
  )
))