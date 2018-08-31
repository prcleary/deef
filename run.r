library(shiny)
port <- Sys.getenv('PORT') 
shiny::runApp('deef/', host = '0.0.0.0', port = as.numeric(port))

