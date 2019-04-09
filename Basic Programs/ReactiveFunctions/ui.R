#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Reactive Functions"),
  #textInput
  textInput(
    inputId = "text",
    label = "Enter the value",
    value = "",
    width = NULL
  ),
  textOutput("value"),
 textInput(
   inputId = "number",
   label = "Enter the number",
   value = "",
   width = NULL
 ),
 textOutput("number"),
 textInput(
   inputId = "isolate",
   label = "Isolate:Enter the value",
   value = "",
   width = NULL
 ),
 textOutput("isolateValue"),
 actionButton(inputId="button", label="Submit"),
 actionButton(inputId="cancel", label="Cancel"),
 actionButton(input="textValues",label="Get")
))
