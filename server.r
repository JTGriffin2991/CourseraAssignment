# Make sure UI.r and server.r are in the same folder
# Load library(shiny) 
# Set the working directory to the folder
# Type runApp() to run the application

shinyServer(function(input, output) {

  # You can access the value of the widget with input$slider1, e.g.
  output$value <- renderPrint({ input$slider1 })

  # You can access the values of the second widget with input$slider2, e.g.
  output$range <- renderPrint({ input$slider2 })
  
  output$result <- renderPrint ({input$slider1*input$slider2})
})


    
