shinyUI(fluidPage(
  
  titlePanel('deef (data extractor for electronic forms)',
             'deef'),
  
  tags$p('Compatible with Microsoft Word files with file name ending .docx'),
  
  tags$a('GitHub project page', href='https://github.com/prcleary/deef', target='_blank>'),
  
  tags$p(),
  
  fileInput(
    'wordfiles',
    label=NULL,
    multiple = TRUE,
    accept = c(
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      'application/vnd.ms-word.document.macroEnabled.12'
    ),
    width = '30%',
    buttonLabel = "Click here",
    placeholder = "No file selected"
  ),
  
  checkboxInput('verbose', 
                label='Print details to console (when run locally)', 
                value=FALSE
  ),
  
  tags$h2('Files uploaded'),
  
  dataTableOutput('wordfiles'),   
  
  tags$h2('Data extracted'),
  
  dataTableOutput('formdata')
 
))
