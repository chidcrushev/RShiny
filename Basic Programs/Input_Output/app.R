#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


? sliderInput()
# Define UI for application that draws a histogram

ui <- fluidPage(
  #textInput
  textInput(
    inputId = "text",
    label = "Enter the value",
    value = "",
    width = NULL
  ),
  textOutput("value"),
  #passowrdInput
  passwordInput(
    inputId = "password",
    label = "Enter the password",
    value = "",
    width = NULL
  ),
  textOutput("pwd"),
  #checkboxGroupInput
  checkboxGroupInput(
    inputId = "checkbox",
    label = "Are you sure you want to continue?",
    choices = c("Yes" = "Y",
                "No" =
                  "N"),
    selected = NULL,
    inline = FALSE,
    width = NULL
  ),
  textOutput("checkbox"),
  #radiobuttons
  radioButtons(
    inputId = "radio",
    label = "Do you like Football?",
    choices = c("Yup" = "Yes", "Nope" = "No") ,
    selected = NULL,
    inline = FALSE,
    width = NULL
  ),
  #This just adds space for the object to be printed
  #You need to put the code in server function if you want the output to be printed
      textOutput("radioButton")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$value <- renderText({
    input$text
  })
  output$pwd <- renderText({
    input$password
  })
  output$radioButton <- renderText({
    paste("You have chosen:", input$radio)
  })
 
}

# Run the application
shinyApp(ui = ui, server = server)
