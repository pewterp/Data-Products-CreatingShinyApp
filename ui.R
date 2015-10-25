# This app is a rudimentary example of how to help customers estimate the costs when they take a cab to
# their destination. Users can just use the slider widget to indicate the distance of their travel, and
# this app will help calculate the fare in $ reflective of their taxi trip.

# We are first creating a user interface to customise the layout and widgets of the app.



#Load Shiny library
library(shiny)

#Constructing Shiny user interface layout
shinyUI(fluidPage(
  # Header Text
  h2("Taxi Fare Calculator"),
    
  fluidRow(
      column(12,
             
             # Construct Slider Bar
             sliderInput("Distance", label = h4("Select Distance (km)"), min = 0, 
                         max = 100, value = 50)
            )
          ),
    
    hr(),
    
    fluidRow(
      
      #Construct output textbox
      h4("Distance (km)"),      
      column(5, verbatimTextOutput("value"))
      
            ),
    
    fluidRow(
      
      #Construct output textbox 2
      h4("Taxi Fare($)"),
      column(5, verbatimTextOutput("Fare"))
            )
    
              )  
    )