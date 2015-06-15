library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Would you survive on the Titanic?"),
    sidebarPanel(
      p("Select your sex and age below, then click the Submit button.  Your chances of survival will be output on the right."),
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
      h4('Your probability of surviving is'),
      verbatimTextOutput("prediction")
    )
  )
)
