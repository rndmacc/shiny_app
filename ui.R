library(shiny)
shinyUI(fluidPage(
  titlePanel("Plot Sine Function"),
  sidebarLayout(
    sidebarPanel(
       h3("Documentation"),
       h4("This app allows to visualize the effects of 4 parameters of a generalized sine function. Adjust the parameters with the sliders below and observe the changes in the plot."),
       h3("Input values"),
       sliderInput("A",
                   "Amplitude:",
                   min = 0,
                   max = 2,
                   value = 1,
                   step = 0.1),
       sliderInput("F",
                   "Frequency:",
                   min = 0,
                   max = 10,
                   value = 1,
                   step = 0.1),
       sliderInput("X",
                   "Phase:",
                   min = -6.3,
                   max = 6.3,
                   value = 0,
                   step = 0.1),
       sliderInput("Y",
                   "Offset:",
                   min = -1,
                   max = 1,
                   value = 0,
                   step = 0.1)
    ),
    mainPanel(
       h3("Resulting function graph for y = A * sin(2*pi * f * x - P) + O:"),
       plotOutput("distPlot")
    )
  )
))