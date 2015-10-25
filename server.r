# This app is a rudimentary example of how to help customers estimate the costs when they take a cab to
# their destination. Users can just use the slider widget to indicate the distance of their travel, and
# this app will help calculate the fare in $ reflective of their taxi trip.

# We then create a server to run the calculations in the background.



# Background calculation of input value "Distance"
TaxiFare <- function(Distance) Distance * 2.50


# Construct server
shinyServer(
  function(input, output) {
    
    # Store output for variable "Distance"
    output$value <- renderPrint({input$Distance})
    
    # Store ouput for newly calculated variable to "Fare"
    output$Fare <- renderPrint({TaxiFare(input$Distance)})    
    
  }
)