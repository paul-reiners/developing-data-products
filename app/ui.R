library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Would you survive on the Titanic?"),
    sidebarPanel(
      radioButtons("radioSex", label = h3("Sex"),
                   choices = list("Male" = "male", "Female" = "female"), 
                   selected = "male"),
      radioButtons("radioAge", label = h3("Age"),
                   choices = list("Adult" = "adult", "Child" = "child"), 
                   selected = "adult"),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("sex"),
      verbatimTextOutput("age"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)
