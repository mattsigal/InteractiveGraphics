library(shiny)
suppressPackageStartupMessages(library(ggvis))

shinyServer(function(input, output, session) {
  gv <- reactive({
    ggvis(mtcars, props(x = ~ disp, y = ~ mpg),
          mark_symbol(),
          dscale("x", "numeric", nice = FALSE, clamp = TRUE),
          dscale("y", "numeric", nice = FALSE, clamp = TRUE)
    )
  })
  
  observe_ggvis(gv, "zoom", session)
})

domain = input$x_domain, 
domain = input$y_domain, 