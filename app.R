library(shiny)

ui <- fluidPage(
  numericInput(inputId = "num1", label = "Number", value = 100),

  plotOutput("dot")
)

server <- function(input, output){
  output$dot <- renderPlot({
    dotchart(rnorm(input$num1), main = 'scatter plot')
  })
  
  
}

shinyApp(ui = ui, server = server)
