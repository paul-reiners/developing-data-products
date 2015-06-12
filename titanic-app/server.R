library(shiny)

source("survival.R")

survivalProbability <- function(sex, age) {
  survival.table <- getSurvivalTable()
  round(survival.table[sex, age], 2)
}

shinyServer(
  function(input, output) {
    output$sex <- renderPrint({input$radioSex})
    output$age <- renderPrint({input$radioAge})
    output$prediction <- 
      renderPrint({survivalProbability(input$radioSex, input$radioAge)})
  }
)
