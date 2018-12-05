
#To show you have done this, create a simple app that takes a standard normal statistic and displays the probability of achieving that value 
#or greater in a standard normal distribution. In other words it takes a (z) value and gives a p-value.

library(shiny)
library(dplyr)


#3. Create an empty shiny app
ui <- fluidPage(
  titlePanel("Probability"),
  sidebarLayout(
    sidebarPanel(
      numericInput("zInput", "z", 0, max = Inf, min = -Inf)
    ),
    mainPanel(
      printOutput("normVal")
    )
  )
)

server <- function(input, output) {
  output$normVal <- renderPrint({
  pnorm(input$zInput)
  })
}

shinyApp(ui = ui, server = server)


