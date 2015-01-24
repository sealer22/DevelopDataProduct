library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  
  headerPanel("Air Pollutant Sample Data"),
  
  sidebarPanel(
    textInput("fips", "Fips:", "24510"),
    p("Input 5 digits to search the target city"),
    p("Reference: http://www.epa.gov/enviro/html/codes/state.html"),
    
    selectInput("type", "Choose the source type:", choices = c("POINT", "NONPOINT", "ON-ROAD", "NON-ROAD"),"POINT"),
    
    actionButton("goButton", "Process"),
    p("Click the button to update the results.")

  ),
  
  mainPanel(
    
    h1('Results'),
    h3("(load data may take some times)"),
    

    h2('Fips = '), 
    h3(textOutput("result")),
    
    h2('Source type = '), 
    h3(textOutput("result2")),
    
    h2('Total pollution in 1999 = '), 
    h3(textOutput("result3")),
   
    h2('Total pollution in 2002 = '), 
    h3(textOutput("result4")),
    
    h2('Total pollution in 2005 = '), 
    h3(textOutput("result5")),
    
    plotOutput("plot")
  
  )
  
))
