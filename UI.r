# Make sure UI.r and server.r are in the same folder
# Load library(shiny) 
# Set the working directory to the folder
# Type runApp() to run the application

shinyUI(fluidPage(

  titlePanel("R Shiny Web App: Week 3 Coursera assignment"),
  img(src="pubs.jpg", height = 50, width = 50, bg="Transparent"),
  
  h4("Total spend per month at shopping malls"),
  
  sidebarPanel(
    
      sliderInput("slider1", label = h5("How much do you typically spend per visit to a shopping mall (£)"), min = 0, 
        max = 100, value = 50),
		helpText("Hint: Move the slider to indicate how much you spend on a typical visit to a shopping mall")
    ,
    
      sliderInput("slider2", label = h5("How often did you visit shopping malls in the last month"), min = 0, 
        max = 31, value = 15),
		helpText("Hint: Move the slider to indicate how many times you visit a shopping mall per month")
  ),
  
  hr(),
  
  mainPanel(
	h6("This is how much you spend"),
    (verbatimTextOutput("value")),
	h6("This is how often you visit"),
    (verbatimTextOutput("range")),
	h4("Your total spend per month is..."),
	(verbatimTextOutput("result")),
	helpText("Hint: If you spend over £750 per month, that's way too much!")
 )
  
))

