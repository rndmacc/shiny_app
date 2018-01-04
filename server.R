library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x = seq(0, 10, 0.01)
    y = input$A * sin(2*pi*input$F*x-input$X) + input$Y
    plot(x, y, type="l", xlim=c(0,10), ylim=c(-3,3))
  })
})
