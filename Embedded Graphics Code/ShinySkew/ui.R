library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Increasing Skewness and Kurtosis on a Normal Distribution"),
  
  sidebarPanel(
    sliderInput("epsilon", label = "Skewness", min = 0, max = 5, 
                value = 0, step = .25),
    sliderInput("delta", label = "Kurtosis", min = 0, max = 5,
                value = 1, step = .25)
  ),
  
  mainPanel(
    plotOutput("skewPlot") 
    # verbatimTextOutput("summary")
  )
))