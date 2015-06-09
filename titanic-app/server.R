library(shiny)

survivalProbability <- function(sex, age) {
  ifelse(sex == "female" || age == "child", 1.0, 0.0)
}

shinyServer(
  function(input, output) {
    output$sex <- renderPrint({input$radioSex})
    output$age <- renderPrint({input$radioAge})
    output$prediction <- 
      renderPrint({survivalProbability(input$radioSex, input$radioAge)})
  }
)
