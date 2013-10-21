library(shiny)
# library(pastecs)

fs = function(x, epsilon, delta) {
  dnorm(sinh(delta*asinh(x)-epsilon)) * delta * cosh(delta*asinh(x)-epsilon) /sqrt(1+x^2)
}

vec = seq(-10, 10, 0.01)

shinyServer(function(input, output) {
  
  data <- reactive({  
    fs(vec, input$epsilon, input$delta)
  })
  
  output$skewPlot <- renderPlot({
    plot(vec, fs(vec, input$epsilon, input$delta), type="l", xlab = "X", ylab = "f(X)")
  })
  
#   output$summary <- renderPrint({
#     round(stat.desc(sample(data(), 200), basic = TRUE, norm = TRUE)[c(1,15:18)], 0)
#   })
  
})

# library(shiny)
# library(pastecs)
# 
# fs = function(x, epsilon, delta) {
#   dnorm(sinh(delta*asinh(x)-epsilon)) * delta * cosh(delta*asinh(x)-epsilon) /sqrt(1+x^2)
# }
# 
# vec = seq(-3, 25, 0.1)
# 
# shinyServer(function(input, output) {
# 
#   output$skewPlot <- renderPlot({
#     plot(vec, fs(vec, input$epsilon, input$delta), type="l", xlab = "X", ylab = "f(X)")
#   })
#   
#   
#   
# })