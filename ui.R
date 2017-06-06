shinyUI(fluidPage(
  
  titlePanel('deef (data extractor for electronic forms)',
             'deef'),
  
  tags$p('Compatible with Microsoft Word files with name ending .docx'),
  
  fileInput(
    'wordfiles',
    label=NULL,
    multiple = TRUE,
    accept = c(
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
    ),
    width = '30%',
    buttonLabel = "Click here",
    placeholder = "No file selected"
  ),
  
  dataTableOutput('wordfiles'),
  
  checkboxInput('verbose', 
                label='Print details to console (when run locally)', 
                value=FALSE
  ),
  
 dataTableOutput('formdata')
 
))
