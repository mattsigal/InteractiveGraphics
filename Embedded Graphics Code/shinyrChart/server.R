## server.r

library(shiny)
library(rCharts)
options(RCHART_WIDTH = 800)

shinyServer(function(input, output) {
  
	output$out <- renderChart({
  		haireye <- as.data.frame(HairEyeColor)
	  	n1 <- nPlot(Freq ~ Hair, group = 'Eye', 
                  type = input$type, 
                  data = subset(haireye, Sex == input$sex))
	  	n1$set(dom = 'out')
  		return(n1)
	})
})
