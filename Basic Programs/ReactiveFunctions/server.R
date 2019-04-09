#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic
shinyServer(function(input, output) {
  #method 1
  output$value <- renderText({
    input$text
  })
  #Method 2 using render function
  #You can call a reactive  expression like a function
  #Reactive function cache their values
  data<-reactive({
    input$number
  })
  output$number <- renderText({Number()})

  #Method 3 using isolate function
  #It is used to make a value as non-reactive
  isolateValue <- isolate({input$isolate})
  output$isolateValue <- renderText({isolateValue})
  
  #Method  4 observe event
  observeEvent(input$button,{
    print(as.character("You  clicked"))
  })
  
  #method 5 using observe
  # Observe will be triggered whenever the reactive  value in the code block changes
  observe({
    print(as.numeric(input$number))
  })
  #Method 6 Using event Reactive
  # This is used to delay reactions
    Number<-eventReactive(input$cancel,{
    print(as.numeric(input$number))
  })
  #Method 7  using reactive Values
  # This is used  to manage the state of the values
  #The last entered value in the text box will be printed
  #If  you change the text value again, the  value will be updated.  
  observeEvent(input$textValues,{
    print(as.list(reactiveValues(data=input$text)))
  })
})
